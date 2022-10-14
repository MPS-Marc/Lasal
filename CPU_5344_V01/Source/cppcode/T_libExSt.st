
FUNCTION global __cdecl lib_dummy var_input pValue:^udint; end_var var_output retcode:udint; end_var
  
  retcode := pvalue^;
  
END_FUNCTION

#ifdef _LSL_TARGETARCH_ARM

FUNCTION awl global __cdecl lib_atomic_incU32 var_input pValue:^udint; end_var var_output retcode:udint; end_var
  
AtomicUIncRetry
  LDREX r1, [pValue]
  ADDS r3, r1, #1
  STREX r2, r3, [pValue]
  CMP r2, #0
  BNE AtomicUIncRetry
  MOV r0, r1
 
  // L.EDI pValue
  // INC.D (EDI)

END_FUNCTION

FUNCTION awl global __cdecl lib_atomic_decU32 var_input pValue:^udint; end_var var_output retcode:udint; end_var
  
AtomicUDecRetry
  LDREX r1, [pValue]
  SUBS r3, r1, #1
  STREX r2, r3, [pValue]
  CMP r2, #0
  BNE AtomicUDecRetry
  MOV r0, r1
  
  // L.EDI pValue
  // DEC.D (EDI)

END_FUNCTION

FUNCTION awl global __cdecl lib_atomic_cmpxchgU32 var_input pValue:^udint; cmpVal:udint; newVal:udint; end_var var_output retcode:udint; end_var

AtomicSCmpXchgRetry
  MOV r4, #0
  LDREX r3, [pValue]
  TEQ r3, cmpVal
  STREXEQ r4, newVal, [pValue]
  CMP r4, #0
  BNE AtomicSCmpXchgRetry
  MOV r0, r3

END_FUNCTION

#endif