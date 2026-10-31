/* Artifact: libexcavator.so | Address: 00101b28 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001062b8 */
/* WARNING: Inlined function: FUN_00105ebc */
/* WARNING: Inlined function: thunk_FUN_00107064 */
/* WARNING: Inlined function: quat_from_xyz */
/* WARNING: Inlined function: FUN_00105be0 */

undefined8 FUN_00101b28(void)

{
  undefined8 uVar1;
  long unaff_x19;
  long lVar2;
  long unaff_x20;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  
  FUN_001058ec();
  if (*(int *)(unaff_x19 + 0x10) == 3) {
    *(double *)(*(long *)(unaff_x20 + 8) + 0x30) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x18) + *(double *)(*(long *)(unaff_x20 + 8) + 0x30)
    ;
    lVar2 = *(long *)(unaff_x20 + 8);
    dVar3 = *(double *)(*(long *)(unaff_x19 + 8) + 0x38);
    dVar4 = *(double *)(*(long *)(unaff_x19 + 8) + 0x58);
    dVar7 = 1.0;
    dVar8 = 1.0 - (dVar3 * dVar3 + dVar4 * dVar4 + 0.0);
    dVar5 = 0.0;
    dVar6 = 0.0;
    if (0.0 < dVar8) {
      dVar7 = SQRT(dVar8);
      dVar5 = dVar3;
      dVar6 = dVar4;
    }
    uVar1 = 0;
    *(double *)(lVar2 + 0x50) = dVar7;
    *(double *)(lVar2 + 0x58) = dVar5;
    *(double *)(lVar2 + 0x60) = dVar6;
    *(undefined8 *)(lVar2 + 0x68) = 0;
  }
  else {
    uVar1 = 0xffffffff;
  }
  return uVar1;
}

