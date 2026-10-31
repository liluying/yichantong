/* Artifact: libexcavator.so | Address: 00104fc0 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001062b8 */
/* WARNING: Inlined function: FUN_00106298 */
/* WARNING: Inlined function: FUN_0010601c */
/* WARNING: Inlined function: FUN_00105c84 */
/* WARNING: Inlined function: FUN_00105be0 */

undefined8 FUN_00104fc0(void)

{
  undefined8 uVar1;
  long unaff_x19;
  long unaff_x20;
  
  FUN_001058ec();
  if (*(int *)(unaff_x19 + 0x10) == 3) {
    uVar1 = 0;
    *(double *)(*(long *)(unaff_x20 + 8) + 0x68) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x18) + *(double *)(*(long *)(unaff_x20 + 8) + 0x68)
    ;
    *(double *)(*(long *)(unaff_x20 + 8) + 0x70) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x38) + *(double *)(*(long *)(unaff_x20 + 8) + 0x70)
    ;
    *(double *)(*(long *)(unaff_x20 + 8) + 0x78) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x58) + *(double *)(*(long *)(unaff_x20 + 8) + 0x78)
    ;
  }
  else {
    uVar1 = 0xffffffff;
  }
  return uVar1;
}

