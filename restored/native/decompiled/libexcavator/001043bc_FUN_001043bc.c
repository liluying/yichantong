/* Artifact: libexcavator.so | Address: 001043bc | Ghidra static pseudocode; types require review. */

void FUN_001043bc(void)

{
  long lVar1;
  long extraout_x9;
  long unaff_x20;
  double dVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  
  FUN_001058ec();
  if ((*(byte *)(unaff_x20 + 0x10) >> 1 & 1) != 0) {
    dVar2 = (double)FUN_00105ebc();
    *(double *)(extraout_x9 + 0x10) = dVar2 + *(double *)(extraout_x9 + 0x10);
    lVar1 = *(long *)(unaff_x20 + 8);
    uVar4 = *(undefined8 *)(lVar1 + 0x28);
    uVar6 = *(undefined8 *)(lVar1 + 0x30);
    FUN_00106e90(*(undefined8 *)(lVar1 + 0x20),uVar4,uVar6);
    uVar3 = FUN_00106e40();
    lVar1 = *(long *)(unaff_x20 + 8);
    uVar7 = *(undefined8 *)(lVar1 + 0x30);
    uVar5 = *(undefined8 *)(lVar1 + 0x28);
    uVar3 = FUN_00106e60(*(undefined8 *)(lVar1 + 0x20),uVar5,uVar7,uVar3,uVar4,uVar6);
    *(undefined8 *)(lVar1 + 0x20) = uVar3;
    *(undefined8 *)(lVar1 + 0x28) = uVar5;
    *(undefined8 *)(lVar1 + 0x30) = uVar7;
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
  FUN_00105be0(0);
  return;
}

