/* Artifact: libexcavator.so | Address: 00101778 | Ghidra static pseudocode; types require review. */

undefined8 FUN_00101778(int *param_1)

{
  int iVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 in_d3;
  double dVar6;
  double dVar7;
  double local_40;
  double dStack_38;
  double local_30;
  double dStack_28;
  
  iVar1 = *param_1;
  if (iVar1 == 3) {
    dVar7 = *(double *)(param_1 + 0x10);
    sincos((*(double *)(param_1 + 0x12) * DAT_00107808) / DAT_00107810,&dStack_28,&local_30);
    uVar4 = *(undefined8 *)(param_1 + 4);
    uVar5 = *(undefined8 *)(param_1 + 6);
    param_1[0x32] = 0;
    param_1[0x33] = 0;
    dVar6 = -(dVar7 * local_30);
    *(double *)(param_1 + 0x30) = dVar7 * dStack_28;
    *(double *)(param_1 + 0x34) = dVar6;
    uVar2 = FUN_001070a4(*(undefined8 *)(param_1 + 2));
    *(undefined8 *)(param_1 + 0x36) = uVar2;
    *(undefined8 *)(param_1 + 0x38) = uVar4;
    *(undefined8 *)(param_1 + 0x3a) = uVar5;
    *(double *)(param_1 + 0x3c) = dVar6;
    uVar3 = FUN_00107170();
    uVar2 = 0;
    *(undefined8 *)(param_1 + 0x46) = uVar3;
    *(undefined8 *)(param_1 + 0x48) = uVar4;
    *(undefined8 *)(param_1 + 0x4a) = uVar5;
    *(double *)(param_1 + 0x4c) = dVar6;
  }
  else if (iVar1 == 2) {
    dVar7 = *(double *)(param_1 + 0x10);
    sincos((*(double *)(param_1 + 0x12) * DAT_00107808) / DAT_00107810,&dStack_38,&local_40);
    uVar4 = *(undefined8 *)(param_1 + 4);
    uVar5 = *(undefined8 *)(param_1 + 6);
    param_1[0x34] = 0;
    param_1[0x35] = 0;
    dVar6 = -(dVar7 * local_40);
    *(double *)(param_1 + 0x32) = dVar7 * dStack_38;
    *(double *)(param_1 + 0x36) = dVar6;
    uVar2 = FUN_001070a4(*(undefined8 *)(param_1 + 2));
    *(undefined8 *)(param_1 + 0x38) = uVar2;
    *(undefined8 *)(param_1 + 0x3a) = uVar4;
    *(undefined8 *)(param_1 + 0x3c) = uVar5;
    *(double *)(param_1 + 0x3e) = dVar6;
    uVar3 = FUN_00107170();
    uVar2 = 0;
    *(undefined8 *)(param_1 + 0x40) = uVar3;
    *(undefined8 *)(param_1 + 0x42) = uVar4;
    *(undefined8 *)(param_1 + 0x44) = uVar5;
    *(double *)(param_1 + 0x46) = dVar6;
  }
  else if (iVar1 == 1) {
    uVar4 = *(undefined8 *)(param_1 + 4);
    uVar5 = *(undefined8 *)(param_1 + 6);
    FUN_001071e4(*(undefined8 *)(param_1 + 2));
    uVar3 = FUN_00107170();
    uVar2 = 0;
    *(undefined8 *)(param_1 + 0x14) = uVar3;
    *(undefined8 *)(param_1 + 0x16) = uVar4;
    *(undefined8 *)(param_1 + 0x18) = uVar5;
    *(undefined8 *)(param_1 + 0x1a) = in_d3;
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

