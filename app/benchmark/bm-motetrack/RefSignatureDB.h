#ifndef REFSIGNATUREDB_H
#define REFSIGNATUREDB_H
#ifdef AVRORA
#include <avr/pgmspace.h>
#endif
#include "RefSignature.h"

// ===================== refSignatureDB Database ===================================
#define REFSIGNATUREDB_SIZE 257
#ifdef AVRORA
extern const RefSignature refSignatureDB[] PROGMEM;

static inline void RefSignatureDB_get(RefSignature *refSigPtr, uint16_t indexDB) 
{ 
        memcpy_P(refSigPtr, (RefSignature*) &refSignatureDB[indexDB], sizeof(RefSignature)); 
}
#else
extern const RefSignature refSignatureDB[] ;

static inline void RefSignatureDB_get(RefSignature *refSigPtr, uint16_t indexDB) 
{ 
        memcpy(refSigPtr, (RefSignature*) &refSignatureDB[indexDB], sizeof(RefSignature)); 
}
#endif
#endif
