/* Artifact: libexcavator.so | Address: 00106154 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

ushort FUN_00106154(ulong param_1,ushort param_2)

{
  ushort uVar1;
  int unaff_w20;
  
                    /* WARNING: Return address prevents inlining here */
  uVar1 = crc16_update(param_2,(uchar *)(param_1 | 3),unaff_w20 + -3);
  return uVar1;
}

