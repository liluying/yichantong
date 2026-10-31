/* Artifact: libexcavator.so | Address: 0010120c | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_from_xyz */

void FUN_0010120c(undefined8 *param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  undefined8 uVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  Quat QVar11;
  
  *param_1 = *param_2;
  uVar2 = param_2[1];
  uVar1 = param_2[3];
  param_1[2] = param_2[2];
  param_1[1] = uVar2;
  param_1[3] = uVar1;
  uVar2 = param_2[4];
  uVar1 = param_2[6];
  param_1[5] = param_2[5];
  param_1[4] = uVar2;
  param_1[6] = uVar1;
  dVar3 = (double)param_2[7];
  dVar4 = (double)param_2[8];
  dVar5 = (double)param_2[9];
  dVar9 = 1.0;
  dVar10 = 1.0 - (dVar5 * dVar5 + dVar3 * dVar3 + dVar4 * dVar4);
  dVar6 = 0.0;
  dVar7 = 0.0;
  dVar8 = 0.0;
  if (0.0 < dVar10) {
    dVar9 = SQRT(dVar10);
    dVar6 = dVar5;
    dVar7 = dVar3;
    dVar8 = dVar4;
  }
  param_1[7] = dVar9;
  param_1[8] = dVar7;
  param_1[9] = dVar8;
  param_1[10] = dVar6;
  uVar2 = param_2[10];
  uVar1 = param_2[0xc];
  param_1[0xc] = param_2[0xb];
  param_1[0xb] = uVar2;
  param_1[0xd] = uVar1;
                    /* WARNING: Could not inline here */
  QVar11 = quat_from_xyz((double)param_2[0xd],(double)param_2[0xe],(double)param_2[0xf]);
  param_1[0xe] = QVar11.w;
  param_1[0xf] = QVar11.x;
  param_1[0x10] = QVar11.y;
  param_1[0x11] = QVar11.z;
  *(undefined4 *)(param_1 + 0x12) = *(undefined4 *)(param_2 + 0x10);
  return;
}

