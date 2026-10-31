/* Artifact: libexcavator.so | Address: 001018b4 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_001018b4(undefined4 *param_1,double *param_2)

{
  long lVar1;
  undefined1 uVar2;
  long lVar3;
  undefined8 uVar4;
  double dVar5;
  double dVar6;
  undefined8 in_d3;
  undefined4 **local_228;
  undefined8 *puStack_220;
  undefined8 local_218;
  code *local_210;
  code *pcStack_208;
  undefined4 *local_200;
  undefined1 *puStack_1f8;
  double local_1f0;
  undefined4 local_1e8;
  undefined8 local_1e0 [12];
  undefined1 auStack_180 [8];
  undefined8 local_178;
  undefined8 local_130;
  undefined8 uStack_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(undefined8 *)(lVar1 + 0x28);
  *param_1 = 1;
  FUN_00106e04();
  FUN_00106230();
  dVar5 = *param_2;
  dVar6 = (dVar5 - *(double *)param_2[2]) + param_2[1];
  uVar4 = FUN_00105a3c();
  *(undefined8 *)(param_1 + 8) = uVar4;
  *(double *)(param_1 + 10) = dVar5;
  *(double *)(param_1 + 0xc) = dVar6;
  uVar4 = FUN_00106e04();
  *(undefined8 *)(param_1 + 0xe) = uVar4;
  *(double *)(param_1 + 0x10) = dVar5;
  *(double *)(param_1 + 0x12) = dVar6;
  uVar4 = FUN_00107090();
  puStack_1f8 = auStack_180;
  *(undefined8 *)(param_1 + 0x14) = uVar4;
  *(double *)(param_1 + 0x16) = dVar5;
  *(double *)(param_1 + 0x18) = dVar6;
  *(undefined8 *)(param_1 + 0x1a) = in_d3;
  local_1f0 = param_2[2];
  local_228 = &local_200;
  local_1e8 = *(undefined4 *)(param_2 + 3);
  local_218 = DAT_00107818;
  local_210 = FUN_00101a14;
  pcStack_208 = FUN_00101b28;
  local_1e0[0] = 0;
  local_1e0[3] = 0;
  local_1e0[4] = 0;
  local_1e0[7] = 0;
  local_1e0[8] = 0;
  local_1e0[0xb] = 0;
  for (lVar3 = 0; uVar2 = lVar3 == 0x60, !(bool)uVar2; lVar3 = lVar3 + 0x20) {
    *(undefined8 *)((long)local_1e0 + lVar3) = 0x800000008;
  }
  local_1e0[2] = _UNK_00107898;
  local_1e0[1] = _DAT_00107890;
  local_1e0[6] = _UNK_001078a8;
  local_1e0[5] = _DAT_001078a0;
  local_1e0[10] = _UNK_001078a8;
  local_1e0[9] = _DAT_001078a0;
  puStack_220 = local_1e0;
  local_200 = param_1;
  FUN_001063e8(&local_228);
  FUN_00107170(local_130,uStack_128,local_120,uStack_118);
  local_178 = FUN_001072b8();
  uVar4 = FUN_00101778(auStack_180);
  FUN_00105de8(uVar4,auStack_180);
  FUN_00101a14(&local_228);
  FUN_00105f14(*(undefined8 *)(lVar1 + 0x28));
  if ((bool)uVar2) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

