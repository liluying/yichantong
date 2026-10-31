/* Artifact: libexcavator.so | Address: 00104f8c | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001062ac */
/* WARNING: Inlined function: FUN_00105ebc */
/* WARNING: Inlined function: FUN_00105eac */
/* WARNING: Inlined function: FUN_00105e68 */
/* WARNING: Inlined function: FUN_00105be0 */

undefined8 FUN_00104f8c(void)

{
  undefined8 uVar1;
  long unaff_x19;
  long unaff_x20;
  
  FUN_001058ec();
  if (*(int *)(unaff_x19 + 0x10) == 1) {
    *(double *)(*(long *)(unaff_x20 + 8) + 0x50) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x18) + *(double *)(*(long *)(unaff_x20 + 8) + 0x50)
    ;
    FUN_00101778(*(undefined8 *)(unaff_x20 + 8));
    uVar1 = 0;
  }
  else {
    uVar1 = 0xffffffff;
  }
  return uVar1;
}

