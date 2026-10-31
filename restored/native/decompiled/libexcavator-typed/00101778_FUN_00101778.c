/* Artifact: libexcavator.so | Address: 00101778 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_from_euler */
/* WARNING: Inlined function: quat_conjugate */
/* WARNING: Inlined function: quat_from_xyz */

undefined8 FUN_00101778(int *param_1)

{
  int iVar1;
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
  double dStack_b0;
  double dStack_a8;
  double dStack_a0;
  double dStack_98;
  double dStack_90;
  double dStack_88;
  double local_40;
  double dStack_38;
  double local_30;
  double dStack_28;
  
  dVar10 = DAT_00108020;
  iVar1 = *param_1;
  if (iVar1 == 3) {
    dVar10 = *(double *)(param_1 + 0x10);
    sincos((*(double *)(param_1 + 0x12) * DAT_00107808) / DAT_00107810,&dStack_28,&local_30);
    param_1[0x32] = 0;
    param_1[0x33] = 0;
    *(double *)(param_1 + 0x30) = dVar10 * dStack_28;
    *(double *)(param_1 + 0x34) = -(dVar10 * local_30);
                    /* WARNING: Could not inline here */
    QVar11 = quat_from_xyz(*(double *)(param_1 + 2),*(double *)(param_1 + 4),
                           *(double *)(param_1 + 6));
    *(double *)(param_1 + 0x36) = QVar11.w;
    *(double *)(param_1 + 0x38) = QVar11.x;
    *(double *)(param_1 + 0x3a) = QVar11.y;
    *(double *)(param_1 + 0x3c) = QVar11.z;
    uVar2 = 0;
    *(double *)(param_1 + 0x46) = QVar11.w;
    *(double *)(param_1 + 0x48) = -QVar11.x;
    *(double *)(param_1 + 0x4a) = -QVar11.y;
    *(double *)(param_1 + 0x4c) = -QVar11.z;
  }
  else if (iVar1 == 2) {
    dVar10 = *(double *)(param_1 + 0x10);
    sincos((*(double *)(param_1 + 0x12) * DAT_00107808) / DAT_00107810,&dStack_38,&local_40);
    dVar4 = *(double *)(param_1 + 2);
    dVar6 = *(double *)(param_1 + 4);
    dVar7 = *(double *)(param_1 + 6);
    param_1[0x34] = 0;
    param_1[0x35] = 0;
    *(double *)(param_1 + 0x32) = dVar10 * dStack_38;
    *(double *)(param_1 + 0x36) = -(dVar10 * local_40);
    dVar8 = 1.0;
    dVar9 = 1.0 - (dVar7 * dVar7 + dVar4 * dVar4 + dVar6 * dVar6);
    dVar10 = 0.0;
    dVar3 = 0.0;
    dVar5 = 0.0;
    if (0.0 < dVar9) {
      dVar8 = SQRT(dVar9);
      dVar10 = dVar7;
      dVar3 = dVar4;
      dVar5 = dVar6;
    }
    *(double *)(param_1 + 0x38) = dVar8;
    *(double *)(param_1 + 0x3a) = dVar3;
    *(double *)(param_1 + 0x3c) = dVar5;
    *(double *)(param_1 + 0x3e) = dVar10;
    uVar2 = 0;
    *(double *)(param_1 + 0x40) = dVar8;
    *(double *)(param_1 + 0x42) = -dVar3;
    *(double *)(param_1 + 0x44) = -dVar5;
    *(double *)(param_1 + 0x46) = -dVar10;
  }
  else if (iVar1 == 1) {
    dVar3 = *(double *)(param_1 + 2);
    dVar5 = *(double *)(param_1 + 4);
    sincos(*(double *)(param_1 + 6) * DAT_00108020,&dStack_a8,&dStack_b0);
    sincos(dVar5 * dVar10,&dStack_98,&dStack_a0);
    sincos(dVar3 * dVar10,&dStack_88,&dStack_90);
    dVar10 = dStack_b0 * dStack_90 * dStack_a0 + dStack_a8 * dStack_88 * dStack_98;
    dVar3 = dStack_b0 * dStack_88 * dStack_a0 - dStack_a8 * dStack_90 * dStack_98;
    dVar5 = dStack_b0 * dStack_90 * dStack_98 + dStack_a8 * dStack_88 * dStack_a0;
    dVar4 = dStack_a8 * dStack_90 * dStack_a0 - dStack_b0 * dStack_88 * dStack_98;
    if (dVar10 < 0.0) {
      dVar10 = -dVar10;
      dVar3 = -dVar3;
      dVar5 = -dVar5;
      dVar4 = -dVar4;
    }
    uVar2 = 0;
    *(double *)(param_1 + 0x14) = dVar10;
    *(double *)(param_1 + 0x16) = -dVar3;
    *(double *)(param_1 + 0x18) = -dVar5;
    *(double *)(param_1 + 0x1a) = -dVar4;
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

