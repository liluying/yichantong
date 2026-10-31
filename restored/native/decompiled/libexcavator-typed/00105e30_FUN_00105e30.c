/* Artifact: libexcavator.so | Address: 00105e30 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

void FUN_00105e30(long param_1)

{
  char cVar1;
  int in_w9;
  uint in_w10;
  int in_w11;
  long unaff_x24;
  
  cVar1 = '\0';
  if (in_w10 != 0) {
    cVar1 = (char)((uint)(in_w11 * in_w9) / in_w10);
  }
  *(byte *)(unaff_x24 + param_1) =
       *(byte *)(unaff_x24 + param_1) ^ (char)(in_w11 * in_w9) - cVar1 * (char)in_w10;
  return;
}

