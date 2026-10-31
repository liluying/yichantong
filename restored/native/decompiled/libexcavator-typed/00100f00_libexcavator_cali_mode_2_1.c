/* Artifact: libexcavator.so | Address: 00100f00 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_from_xyz */

void libexcavator_cali_mode_2_1(undefined8 param_1,undefined8 *param_2)

{
  double *pdVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  double *pdVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  Quat QVar15;
  double local_3b0 [64];
  undefined8 local_1b0;
  undefined8 uStack_1a8;
  undefined8 local_1a0;
  undefined8 uStack_198;
  undefined8 local_190;
  undefined8 uStack_188;
  undefined8 local_180;
  undefined1 auStack_178 [104];
  undefined1 *local_110;
  int local_108;
  double local_100;
  double local_f8;
  double local_f0;
  double local_e8;
  double local_e0;
  double local_d8;
  double local_d0;
  double local_c8;
  double local_c0;
  double local_b8;
  double local_b0;
  double local_a8;
  double local_a0;
  double local_98;
  double local_90;
  double local_88;
  double local_80;
  double local_78;
  double local_70;
  double local_68;
  long local_58;
  
  lVar2 = tpidr_el0;
  local_58 = *(long *)(lVar2 + 0x28);
  memset(&local_1b0,0,0x150);
  uStack_1a8 = param_2[1];
  local_1b0 = *param_2;
  uStack_198 = param_2[3];
  local_1a0 = param_2[2];
  uStack_188 = param_2[5];
  local_190 = param_2[4];
  local_180 = param_2[6];
  memcpy(auStack_178,param_2 + 7,0x68);
  iVar3 = *(int *)(param_2 + 0x15);
  lVar4 = 0;
  pdVar6 = local_3b0 + 2;
  local_110 = (undefined1 *)local_3b0;
  local_108 = iVar3;
  for (lVar5 = 0; lVar5 < iVar3; lVar5 = lVar5 + 1) {
    pdVar1 = (double *)(param_2[0x14] + lVar4);
    dVar7 = *pdVar1;
    dVar8 = pdVar1[1];
    dVar9 = pdVar1[2];
    dVar13 = 1.0;
    dVar14 = 1.0 - (dVar9 * dVar9 + dVar7 * dVar7 + dVar8 * dVar8);
    dVar10 = 0.0;
    dVar11 = 0.0;
    dVar12 = 0.0;
    if (0.0 < dVar14) {
      dVar13 = SQRT(dVar14);
      dVar10 = dVar9;
      dVar11 = dVar7;
      dVar12 = dVar8;
    }
    pdVar6[-2] = dVar13;
    pdVar6[-1] = dVar11;
    *pdVar6 = dVar12;
    pdVar6[1] = dVar10;
    iVar3 = *(int *)(param_2 + 0x15);
    lVar4 = lVar4 + 0x18;
    pdVar6 = pdVar6 + 4;
  }
                    /* WARNING: Could not inline here */
  QVar15 = quat_from_xyz((double)param_2[0x16],(double)param_2[0x17],(double)param_2[0x18]);
  local_e8 = QVar15.z;
  local_f0 = QVar15.y;
  local_f8 = QVar15.x;
  local_100 = QVar15.w;
                    /* WARNING: Could not inline here */
  QVar15 = quat_from_xyz((double)param_2[0x19],(double)param_2[0x1a],(double)param_2[0x1b]);
  local_c8 = QVar15.z;
  local_d0 = QVar15.y;
  local_d8 = QVar15.x;
  local_e0 = QVar15.w;
                    /* WARNING: Could not inline here */
  QVar15 = quat_from_xyz((double)param_2[0x1c],(double)param_2[0x1d],(double)param_2[0x1e]);
  local_a8 = QVar15.z;
  local_b0 = QVar15.y;
  local_b8 = QVar15.x;
  local_c0 = QVar15.w;
                    /* WARNING: Could not inline here */
  QVar15 = quat_from_xyz((double)param_2[0x1f],(double)param_2[0x20],(double)param_2[0x21]);
  local_88 = QVar15.z;
  local_90 = QVar15.y;
  local_98 = QVar15.x;
  local_a0 = QVar15.w;
                    /* WARNING: Could not inline here */
  QVar15 = quat_from_xyz((double)param_2[0x22],(double)param_2[0x23],(double)param_2[0x24]);
  local_68 = QVar15.z;
  local_70 = QVar15.y;
  local_78 = QVar15.x;
  local_80 = QVar15.w;
  FUN_00103218(param_1,&local_1b0);
  if (*(long *)(lVar2 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

