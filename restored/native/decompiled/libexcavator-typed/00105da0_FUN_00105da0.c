/* Artifact: libexcavator.so | Address: 00105da0 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

double FUN_00105da0(void)

{
  long lVar1;
  long unaff_x20;
  Quat QVar2;
  
  lVar1 = *(long *)(unaff_x20 + 8);
                    /* WARNING: Return address prevents inlining here */
  QVar2 = quat_from_xyz(*(double *)(lVar1 + 8),*(double *)(lVar1 + 0x10),*(double *)(lVar1 + 0x18));
  return QVar2.w;
}

