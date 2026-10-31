/* Artifact: libexcavator.so | Address: 001018b4 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106230 */
/* WARNING: Inlined function: FUN_00105a3c */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Inlined function: FUN_00105f14 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_001018b4(undefined1 param_1 [16],undefined8 param_2,undefined8 param_3,undefined8 param_4,
                 undefined4 *param_5,double *param_6)

{
  long lVar1;
  long lVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  double dVar5;
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
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  *param_5 = 1;
  uVar3 = FUN_00106e04();
  *(undefined8 *)(param_5 + 2) = uVar3;
  *(undefined8 *)(param_5 + 4) = param_2;
  *(undefined8 *)(param_5 + 6) = param_3;
  dVar5 = (*param_6 - *(double *)param_6[2]) + param_6[1];
  uVar4 = 0;
  uVar3 = FUN_00106e3c(0);
  *(undefined8 *)(param_5 + 8) = uVar3;
  *(undefined8 *)(param_5 + 10) = uVar4;
  *(double *)(param_5 + 0xc) = dVar5;
  uVar3 = FUN_00106e04();
  *(undefined8 *)(param_5 + 0xe) = uVar3;
  *(undefined8 *)(param_5 + 0x10) = uVar4;
  *(double *)(param_5 + 0x12) = dVar5;
  uVar3 = FUN_00107090();
  puStack_1f8 = auStack_180;
  *(undefined8 *)(param_5 + 0x14) = uVar3;
  *(undefined8 *)(param_5 + 0x16) = uVar4;
  *(double *)(param_5 + 0x18) = dVar5;
  *(undefined8 *)(param_5 + 0x1a) = param_4;
  local_1f0 = param_6[2];
  local_228 = &local_200;
  local_1e8 = *(undefined4 *)(param_6 + 3);
  local_218 = DAT_00107818;
  local_210 = FUN_00101a14;
  pcStack_208 = FUN_00101b28;
  local_1e0[0] = 0;
  local_1e0[3] = 0;
  local_1e0[4] = 0;
  local_1e0[7] = 0;
  local_1e0[8] = 0;
  local_1e0[0xb] = 0;
  for (lVar2 = 0; lVar2 != 0x60; lVar2 = lVar2 + 0x20) {
    *(undefined8 *)((long)local_1e0 + lVar2) = 0x800000008;
  }
  local_1e0[2] = _UNK_00107898;
  local_1e0[1] = _DAT_00107890;
  local_1e0[6] = _UNK_001078a8;
  local_1e0[5] = _DAT_001078a0;
  local_1e0[10] = _UNK_001078a8;
  local_1e0[9] = _DAT_001078a0;
  puStack_220 = local_1e0;
  local_200 = param_5;
  FUN_001063e8(&local_228);
  FUN_00107170(local_130,uStack_128,local_120,uStack_118);
  local_178 = FUN_001072b8();
  FUN_00101778(auStack_180);
  memcpy(param_5,auStack_180,0x138);
  FUN_00101a14(&local_228);
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

