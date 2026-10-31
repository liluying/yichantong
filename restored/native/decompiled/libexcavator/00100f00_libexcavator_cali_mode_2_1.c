/* Artifact: libexcavator.so | Address: 00100f00 | Ghidra static pseudocode; types require review. */

void libexcavator_cali_mode_2_1(undefined8 param_1,undefined8 *param_2)

{
  undefined8 *puVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  undefined8 *puVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined8 uVar10;
  undefined8 in_d3;
  undefined8 local_3b0 [64];
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
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 local_e0;
  undefined8 local_d8;
  undefined8 local_d0;
  undefined8 local_c8;
  undefined8 local_c0;
  undefined8 local_b8;
  undefined8 local_b0;
  undefined8 local_a8;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 local_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined8 local_68;
  long local_58;
  
  lVar3 = tpidr_el0;
  local_58 = *(long *)(lVar3 + 0x28);
  memset(&local_1b0,0,0x150);
  uStack_1a8 = param_2[1];
  local_1b0 = *param_2;
  uStack_198 = param_2[3];
  local_1a0 = param_2[2];
  uStack_188 = param_2[5];
  local_190 = param_2[4];
  local_180 = param_2[6];
  memcpy(auStack_178,param_2 + 7,0x68);
  iVar2 = *(int *)(param_2 + 0x15);
  lVar4 = 0;
  puVar6 = local_3b0 + 2;
  local_110 = (undefined1 *)local_3b0;
  local_108 = iVar2;
  for (lVar5 = 0; lVar5 < iVar2; lVar5 = lVar5 + 1) {
    puVar1 = (undefined8 *)(param_2[0x14] + lVar4);
    uVar8 = puVar1[1];
    uVar9 = puVar1[2];
    uVar7 = FUN_001070a4(*puVar1);
    puVar6[-2] = uVar7;
    puVar6[-1] = uVar8;
    *puVar6 = uVar9;
    puVar6[1] = in_d3;
    iVar2 = *(int *)(param_2 + 0x15);
    lVar4 = lVar4 + 0x18;
    puVar6 = puVar6 + 4;
  }
  uVar7 = param_2[0x17];
  uVar9 = param_2[0x18];
  local_100 = FUN_001070a4(param_2[0x16]);
  uVar8 = param_2[0x1a];
  uVar10 = param_2[0x1b];
  local_f8 = uVar7;
  local_f0 = uVar9;
  local_e8 = in_d3;
  local_e0 = FUN_001070a4(param_2[0x19]);
  uVar7 = param_2[0x1d];
  uVar9 = param_2[0x1e];
  local_d8 = uVar8;
  local_d0 = uVar10;
  local_c8 = in_d3;
  local_c0 = FUN_001070a4(param_2[0x1c]);
  uVar8 = param_2[0x20];
  uVar10 = param_2[0x21];
  local_b8 = uVar7;
  local_b0 = uVar9;
  local_a8 = in_d3;
  local_a0 = FUN_001070a4(param_2[0x1f]);
  uVar7 = param_2[0x23];
  uVar9 = param_2[0x24];
  local_98 = uVar8;
  local_90 = uVar10;
  local_88 = in_d3;
  local_80 = FUN_001070a4(param_2[0x22]);
  local_78 = uVar7;
  local_70 = uVar9;
  local_68 = in_d3;
  FUN_00103218(param_1,&local_1b0);
  if (*(long *)(lVar3 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

