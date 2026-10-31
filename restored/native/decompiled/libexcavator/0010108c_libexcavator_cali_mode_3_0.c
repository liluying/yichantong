/* Artifact: libexcavator.so | Address: 0010108c | Ghidra static pseudocode; types require review. */

void libexcavator_cali_mode_3_0(void)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 *extraout_x1;
  long extraout_x9;
  undefined8 extraout_d0;
  undefined8 extraout_var;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 in_d3;
  undefined8 local_118;
  undefined8 uStack_110;
  undefined8 local_108;
  undefined8 uStack_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  undefined8 local_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 local_50;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  local_50 = 0;
  uVar2 = FUN_0010162c(0);
  uVar3 = extraout_x1[1];
  uVar4 = extraout_x1[2];
  local_b0 = extraout_d0;
  uStack_a8 = extraout_var;
  uStack_a0 = extraout_d0;
  uStack_98 = extraout_var;
  local_118 = FUN_001070a4(*extraout_x1);
  uStack_f0 = extraout_x1[4];
  local_f8 = extraout_x1[3];
  uStack_e0 = extraout_x1[6];
  local_e8 = extraout_x1[5];
  uStack_d0 = extraout_x1[8];
  local_d8 = extraout_x1[7];
  uStack_c0 = extraout_x1[10];
  local_c8 = extraout_x1[9];
  local_b8 = extraout_x1[0xb];
  uStack_110 = uVar3;
  local_108 = uVar4;
  uStack_100 = in_d3;
  memcpy((void *)(extraout_x9 + 0x68),extraout_x1 + 0xc,0x68);
  FUN_00103844(uVar2,&local_118);
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

