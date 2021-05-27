#include "heap.h"
#include "debug.h"
struct freelist
{
    u16 sz;
    struct freelist *nx;
};

// char __attribute__((section (".eheap"))) __attribute__ ((aligned (2))) heap[heap_size];
char heap[heap_size];

char *malloc_heap_start = heap;
char *malloc_heap_end = heap + heap_size;

char *brkval=NULL;
struct freelist *flp=NULL;

void *aot_malloc(u16 len)
{
    struct freelist *fp1, *fp2, *sfp1, *sfp2;
    char *cp;
    u16 s, avail;

    /*
	 * Our minimum chunk size is the size of a pointer (plus the
	 * size of the "sz" field, but we don't need to account for
	 * this), otherwise we could not possibly fit a freelist entry
	 * into the chunk later.
	 */
    if (len < sizeof(struct freelist) - sizeof(u16))
        len = sizeof(struct freelist) - sizeof(u16);

    /*
	 * First, walk the free list and try finding a chunk that
	 * would match exactly.  If we found one, we are done.  While
	 * walking, note down the smallest chunk we found that would
	 * still fit the request -- we need it for step 2.
	 *
	 */
    for (s = 0, fp1 = flp, fp2 = 0;
         fp1;
         fp2 = fp1, fp1 = fp1->nx)
    {
        if (fp1->sz < len)
            continue;
        if (fp1->sz == len)
        {
            /*
			 * Found it.  Disconnect the chunk from the
			 * freelist, and return it.
			 */
            if (fp2)
                fp2->nx = fp1->nx;
            else
                flp = fp1->nx;
            return &(fp1->nx);
        }
        else
        {
            if (s == 0 || fp1->sz < s)
            {
                /* this is the smallest chunk found so far */
                s = fp1->sz;
                sfp1 = fp1;
                sfp2 = fp2;
            }
        }
    }
    /*
	 * Step 2: If we found a chunk on the freelist that would fit
	 * (but was too large), look it up again and use it, since it
	 * is our closest match now.  Since the freelist entry needs
	 * to be split into two entries then, watch out that the
	 * difference between the requested size and the size of the
	 * chunk found is large enough for another freelist entry; if
	 * not, just enlarge the request size to what we have found,
	 * and use the entire chunk.
	 */
    if (s)
    {
        if (s - len < sizeof(struct freelist))
        {
            /* Disconnect it from freelist and return it. */
            if (sfp2)
                sfp2->nx = sfp1->nx;
            else
                flp = sfp1->nx;
            return &(sfp1->nx);
        }
        /*
		 * Split them up.  Note that we leave the first part
		 * as the new (smaller) freelist entry, and return the
		 * upper portion to the caller.  This saves us the
		 * work to fix up the freelist chain; we just need to
		 * fixup the size of the current entry, and note down
		 * the size of the new chunk before returning it to
		 * the caller.
		 */
        cp = (char *)sfp1;
        s -= len;
        cp += s;
        sfp2 = (struct freelist *)cp;
        sfp2->sz = len;
        sfp1->sz = s - sizeof(u16);
        return &(sfp2->nx);
    }
    /*
	 * Step 3: If the request could not be satisfied from a
	 * freelist entry, just prepare a new chunk.  This means we
	 * need to obtain more memory first.  The largest address just
	 * not allocated so far is remembered in the brkval variable.
	 * Under Unix, the "break value" was the end of the data
	 * segment as dynamically requested from the operating system.
	 * Since we don't have an operating system, just make sure
	 * that we don't collide with the stack.
	 */
    if (brkval == 0){
        brkval = malloc_heap_start;
    }
        
    cp = malloc_heap_end;
    if (cp <= brkval){
      /*
	   * Memory exhausted.
	   */
      return 0;
    }
    avail = cp - brkval;
    /*
	 * Both tests below are needed to catch the case len >= 0xfffe.
	 */
    if (avail >= len && avail >= len + sizeof(u16))
    {
        fp1 = (struct freelist *)brkval;
        brkval += len + sizeof(u16);
        fp1->sz = len;
        return &(fp1->nx);
    }
    /*
	 * Step 4: There's no help, just fail. :-/
	 */
    return 0;
}

void aot_free(void *p)
{
    struct freelist *fp1, *fp2, *fpnew;
    char *cp1, *cp2, *cpnew;

    /* ISO C says free(NULL) must be a no-op */
    if (p == 0)
        return;

    cpnew = p;
    cpnew -= sizeof(u16);
    fpnew = (struct freelist *)cpnew;
    fpnew->nx = 0;

    /*
	 * Trivial case first: if there's no freelist yet, our entry
	 * will be the only one on it.  If this is the last entry, we
	 * can reduce brkval instead.
	 */
    if (flp == 0)
    {
        if ((char *)p + fpnew->sz == brkval)
            brkval = cpnew;
        else
            flp = fpnew;
        return;
    }

    /*
	 * Now, find the position where our new entry belongs onto the
	 * freelist.  Try to aggregate the chunk with adjacent chunks
	 * if possible.
	 */
    for (fp1 = flp, fp2 = 0;
         fp1;
         fp2 = fp1, fp1 = fp1->nx)
    {
        if (fp1 < fpnew)
            continue;
        cp1 = (char *)fp1;
        fpnew->nx = fp1;
        if ((char *)&(fpnew->nx) + fpnew->sz == cp1)
        {
            /* upper chunk adjacent, assimilate it */
            fpnew->sz += fp1->sz + sizeof(u16);
            fpnew->nx = fp1->nx;
        }
        if (fp2 == 0)
        {
            /* new head of freelist */
            flp = fpnew;
            return;
        }
        break;
    }
    /*
	 * Note that we get here either if we hit the "break" above,
	 * or if we fell off the end of the loop.  The latter means
	 * we've got a new topmost chunk.  Either way, try aggregating
	 * with the lower chunk if possible.
	 */
    fp2->nx = fpnew;
    cp2 = (char *)&(fp2->nx);
    if (cp2 + fp2->sz == cpnew)
    {
        /* lower junk adjacent, merge */
        fp2->sz += fpnew->sz + sizeof(u16);
        fp2->nx = fpnew->nx;
    }
    /*
	 * If there's a new topmost chunk, lower brkval instead.
	 */
    for (fp1 = flp, fp2 = 0;
         fp1->nx != 0;
         fp2 = fp1, fp1 = fp1->nx)
        /* advance to entry just before end of list */;
    cp2 = (char *)&(fp1->nx);
    if (cp2 + fp1->sz == brkval)
    {
        if (fp2 == NULL)
            /* Freelist is empty now. */
            flp = NULL;
        else
            fp2->nx = NULL;
        brkval = cp2 - sizeof(u16);
    }
}

void *aot_realloc(void *ptr, u16 len)
{
    struct freelist *fp1, *fp2, *fp3, *ofp3;
    char *cp, *cp1;
    void *memp;
    u16 s, incr;

    /* Trivial case, required by C standard. */
    if (ptr == 0)
        return aot_malloc(len);

    cp1 = (char *)ptr;
    cp1 -= sizeof(u16);
    fp1 = (struct freelist *)cp1;

    cp = (char *)ptr + len; /* new next pointer */
    if (cp < cp1)
        /* Pointer wrapped across top of RAM, fail. */
        return 0;

    /*
	 * See whether we are growing or shrinking.  When shrinking,
	 * we split off a chunk for the released portion, and call
	 * free() on it.  Therefore, we can only shrink if the new
	 * size is at least sizeof(struct freelist) smaller than the
	 * previous size.
	 */
    if (len <= fp1->sz)
    {
        /* The first test catches a possible unsigned int
		 * rollover condition. */
        if (fp1->sz <= sizeof(struct freelist) ||
            len > fp1->sz - sizeof(struct freelist))
            return ptr;
        fp2 = (struct freelist *)cp;
        fp2->sz = fp1->sz - len - sizeof(u16);
        fp1->sz = len;
        aot_free(&(fp2->nx));
        return ptr;
    }

    /*
	 * If we get here, we are growing.  First, see whether there
	 * is space in the free list on top of our current chunk.
	 */
    incr = len - fp1->sz;
    cp = (char *)ptr + fp1->sz;
    fp2 = (struct freelist *)cp;
    for (s = 0, ofp3 = 0, fp3 = flp;
         fp3;
         ofp3 = fp3, fp3 = fp3->nx)
    {
        if (fp3 == fp2 && fp3->sz + sizeof(u16) >= incr)
        {
            /* found something that fits */
            if (fp3->sz + sizeof(u16) - incr > sizeof(struct freelist))
            {
                /* split off a new freelist entry */
                cp = (char *)ptr + len;
                fp2 = (struct freelist *)cp;
                fp2->nx = fp3->nx;
                fp2->sz = fp3->sz - incr;
                fp1->sz = len;
            }
            else
            {
                /* it just fits, so use it entirely */
                fp1->sz += fp3->sz + sizeof(u16);
                fp2 = fp3->nx;
            }
            if (ofp3)
                ofp3->nx = fp2;
            else
                flp = fp2;
            return ptr;
        }
        /*
		 * Find the largest chunk on the freelist while
		 * walking it.
		 */
        if (fp3->sz > s)
            s = fp3->sz;
    }
    /*
	 * If we are the topmost chunk in memory, and there was no
	 * large enough chunk on the freelist that could be re-used
	 * (by a call to malloc() below), quickly extend the
	 * allocation area if possible, without need to copy the old
	 * data.
	 */
    if (brkval == (char *)ptr + fp1->sz && len > s)
    {
        cp1 = malloc_heap_end;
        cp = (char *)ptr + len;
        if (cp < cp1)
        {
            brkval = cp;
            fp1->sz = len;
            return ptr;
        }
        /* If that failed, we are out of luck. */
        return 0;
    }

    /*
	 * Call malloc() for a new chunk, then copy over the data, and
	 * release the old region.
	 */
    if ((memp = aot_malloc(len)) == 0)
        return 0;
    memcpy(memp, ptr, fp1->sz);
    aot_free(ptr);
    return memp;
}
void *aot_calloc(u16 nele, u16 size)
{
    void *p;

    if ((p = aot_malloc(nele * size)) == 0)
        return 0;
    memset(p, 0, nele * size);
    return p;
}