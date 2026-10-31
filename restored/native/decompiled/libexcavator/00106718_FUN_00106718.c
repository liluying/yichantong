/* Artifact: libexcavator.so | Address: 00106718 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00106718(double *param_1,uint param_2,double *param_3,double *param_4)

{
  long lVar1;
  undefined8 uVar2;
  long lVar3;
  ulong uVar4;
  double *pdVar5;
  long lVar6;
  long lVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double local_f0;
  double dStack_e8;
  double local_e0;
  undefined8 local_d0;
  undefined8 uStack_c8;
  undefined8 local_c0;
  double *local_b8;
  undefined1 *local_b0;
  undefined1 *puStack_a8;
  double local_a0;
  double dStack_98;
  double local_90;
  double local_88;
  undefined1 auStack_80 [8];
  double local_78;
  double dStack_70;
  double local_68;
  undefined1 auStack_60 [16];
  double local_50;
  double local_48;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  if ((int)param_2 < 3) {
    uVar2 = 0xffffffff;
  }
  else {
    pdVar5 = &local_a0;
    for (lVar3 = 0; lVar3 != 3; lVar3 = lVar3 + 1) {
      for (lVar6 = 0; lVar6 != 0x20; lVar6 = lVar6 + 8) {
        *(undefined8 *)((long)pdVar5 + lVar6) = 0;
      }
      pdVar5 = pdVar5 + 4;
    }
    for (uVar4 = (ulong)param_2; uVar4 != 0; uVar4 = uVar4 - 1) {
      dVar9 = param_1[1];
      dVar8 = *param_1;
      dVar11 = dVar8 * dVar8;
      dVar10 = dVar9 * dVar9;
      local_a0 = dVar11 + local_a0;
      local_90 = dVar8 + local_90;
      dStack_98 = dVar9 * dVar8 + dStack_98;
      local_48 = local_48 - (dVar11 + dVar10);
      local_88 = local_88 - (dVar8 * dVar11 + dVar10 * dVar8);
      dStack_70 = dVar9 + dStack_70;
      local_78 = dVar10 + local_78;
      local_68 = local_68 - (dVar11 * dVar9 + dVar10 * dVar9);
      param_1 = param_1 + 3;
    }
    local_50 = (double)(int)param_2;
    pdVar5 = &local_a0;
    lVar3 = 0;
    while (lVar3 != 3) {
      lVar7 = 0x20;
      for (lVar6 = 1; lVar3 + lVar6 != 3; lVar6 = lVar6 + 1) {
        *(double *)((long)pdVar5 + lVar7) = pdVar5[lVar6];
        lVar7 = lVar7 + 0x20;
      }
      pdVar5 = pdVar5 + 5;
      lVar3 = lVar3 + 1;
    }
    local_b8 = &local_a0;
    local_b0 = auStack_80;
    puStack_a8 = auStack_60;
    FUN_00106928(&local_b8,3,4);
    FUN_00106a28(&local_b8,3,4);
    uStack_c8 = _UNK_00107fe0;
    local_d0 = _DAT_00107fd8;
    local_c0 = DAT_00107fe8;
    FUN_00106b10(&local_b8,3,4,&local_d0,&local_f0);
    local_f0 = local_f0 * -0.5;
    dStack_e8 = dStack_e8 * -0.5;
    local_e0 = (local_f0 * local_f0 + dStack_e8 * dStack_e8) - local_e0;
    if (0.0 <= local_e0) {
      uVar2 = 0;
      *param_3 = local_f0;
      param_3[1] = dStack_e8;
      param_3[2] = 0.0;
      *param_4 = SQRT(local_e0);
    }
    else {
      uVar2 = 0xfffffffe;
    }
  }
  if (*(long *)(lVar1 + 0x28) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

