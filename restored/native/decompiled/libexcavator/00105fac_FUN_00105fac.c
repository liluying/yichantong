/* Artifact: libexcavator.so | Address: 00105fac | Ghidra static pseudocode; types require review. */

void FUN_00105fac(void)

{
  long unaff_x19;
  long unaff_x20;
  
  *(double *)(*(long *)(unaff_x20 + 8) + 0x20) =
       *(double *)(*(long *)(unaff_x19 + 8) + 0x98) + *(double *)(*(long *)(unaff_x20 + 8) + 0x20);
  return;
}

