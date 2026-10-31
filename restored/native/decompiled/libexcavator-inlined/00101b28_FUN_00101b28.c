/* Artifact: libexcavator.so | Address: 00101b28 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001062b8 */
/* WARNING: Inlined function: FUN_00105ebc */
/* WARNING: Inlined function: FUN_00105be0 */

undefined8
FUN_00101b28(undefined1 param_1 [16],undefined1 param_2 [16],undefined8 param_3,undefined8 param_4)

{
  undefined8 uVar1;
  long unaff_x19;
  long lVar2;
  long unaff_x20;
  undefined8 uVar3;
  undefined8 uVar4;
  
  FUN_001058ec();
  if (*(int *)(unaff_x19 + 0x10) == 3) {
    *(double *)(*(long *)(unaff_x20 + 8) + 0x30) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x18) + *(double *)(*(long *)(unaff_x20 + 8) + 0x30)
    ;
    lVar2 = *(long *)(unaff_x20 + 8);
    uVar4 = *(undefined8 *)(*(long *)(unaff_x19 + 8) + 0x58);
    thunk_FUN_00107064(*(undefined8 *)(*(long *)(unaff_x19 + 8) + 0x38));
    uVar3 = FUN_001070a4();
    uVar1 = 0;
    *(undefined8 *)(lVar2 + 0x50) = uVar3;
    *(undefined8 *)(lVar2 + 0x58) = uVar4;
    *(undefined8 *)(lVar2 + 0x60) = param_3;
    *(undefined8 *)(lVar2 + 0x68) = param_4;
  }
  else {
    uVar1 = 0xffffffff;
  }
  return uVar1;
}

