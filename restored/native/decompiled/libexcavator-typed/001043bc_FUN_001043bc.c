/* Artifact: libexcavator.so | Address: 001043bc | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00105ebc */
/* WARNING: Inlined function: FUN_00106e90 */
/* WARNING: Inlined function: point_scale */
/* WARNING: Inlined function: point_add */
/* WARNING: Inlined function: FUN_00105be0 */

undefined8 FUN_001043bc(void)

{
  long lVar1;
  long unaff_x19;
  long unaff_x20;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  
  FUN_001058ec();
  if ((*(byte *)(unaff_x20 + 0x10) >> 1 & 1) != 0) {
    *(double *)(*(long *)(unaff_x20 + 8) + 0x10) =
         *(double *)(*(long *)(unaff_x19 + 8) + 0x18) + *(double *)(*(long *)(unaff_x20 + 8) + 0x10)
    ;
    lVar1 = *(long *)(unaff_x20 + 8);
    dVar2 = *(double *)(lVar1 + 0x20);
    dVar3 = *(double *)(lVar1 + 0x28);
    dVar4 = *(double *)(lVar1 + 0x30);
    dVar5 = SQRT(dVar4 * dVar4 + dVar2 * dVar2 + dVar3 * dVar3);
    if (9.5367431640625e-07 <= dVar5) {
      dVar5 = 1.0 / dVar5;
      dVar2 = dVar2 * dVar5;
      dVar3 = dVar3 * dVar5;
      dVar4 = dVar4 * dVar5;
    }
    else {
      dVar3 = 0.0;
      dVar2 = 1.0;
      dVar4 = 0.0;
    }
    dVar5 = *(double *)(*(long *)(unaff_x19 + 8) + 0x38);
    lVar1 = *(long *)(unaff_x20 + 8);
    *(double *)(lVar1 + 0x20) = *(double *)(lVar1 + 0x20) + dVar2 * dVar5;
    *(double *)(lVar1 + 0x28) = *(double *)(lVar1 + 0x28) + dVar3 * dVar5;
    *(double *)(lVar1 + 0x30) = *(double *)(lVar1 + 0x30) + dVar4 * dVar5;
    lVar1 = *(long *)(unaff_x20 + 8);
    if (DAT_00107800 < *(double *)(lVar1 + 0x48)) {
      dVar2 = *(double *)(lVar1 + 0x30) / *(double *)(lVar1 + 0x48);
      *(double *)(lVar1 + 0x38) = *(double *)(lVar1 + 0x38) * dVar2;
      *(double *)(*(long *)(unaff_x20 + 8) + 0x40) =
           dVar2 * *(double *)(*(long *)(unaff_x20 + 8) + 0x40);
      *(double *)(*(long *)(unaff_x20 + 8) + 0x48) =
           dVar2 * *(double *)(*(long *)(unaff_x20 + 8) + 0x48);
      lVar1 = *(long *)(unaff_x20 + 8);
    }
    FUN_00101778(lVar1);
  }
  return 0;
}

