#ifndef SIGNATUREDB_H
#define SIGNATUREDB_H

#define SIGNATUREDB_SIZE 74
#include "RefSignature.h"
#ifdef AVRORA
#include <avr/pgmspace.h>

// ===================== signatureDB Database ===================================

extern const RefSignature signatureDB[] PROGMEM;

static inline void SignatureDB_get(RefSignature *refSigPtr, uint16_t indexDB) 
{ 
        memcpy_P(refSigPtr, (RefSignature*) &signatureDB[indexDB], sizeof(RefSignature)); 
}
#else

// ===================== signatureDB Database ===================================

extern const RefSignature signatureDB[] ;

static inline void SignatureDB_get(RefSignature *refSigPtr, uint16_t indexDB) 
{ 
        memcpy(refSigPtr, (RefSignature*) &signatureDB[indexDB], sizeof(RefSignature)); 
}
#endif

#endif
