/* Artifact: libexcavator.so | Address: 0010108c | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_from_xyz */

void libexcavator_cali_mode_3_0(void)

{
  long lVar1;
  undefined8 uVar2;
  double *extraout_x1;
  long extraout_x9;
  undefined8 extraout_d0;
  double dVar3;
  undefined8 extraout_var;
  double dVar4;
  double dVar5;
  double dVar6;
  double local_118;
  double dStack_110;
  double local_108;
  double dStack_100;
  double local_f8;
  double dStack_f0;
  double local_e8;
  double dStack_e0;
  double local_d8;
  double dStack_d0;
  double local_c8;
  double dStack_c0;
  double local_b8;
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
  dVar3 = *extraout_x1;
  dVar4 = extraout_x1[1];
  dVar5 = extraout_x1[2];
  local_118 = 1.0;
  dVar6 = 1.0 - (dVar5 * dVar5 + dVar3 * dVar3 + dVar4 * dVar4);
  dStack_100 = 0.0;
  dStack_110 = 0.0;
  local_108 = 0.0;
  if (0.0 < dVar6) {
    local_118 = SQRT(dVar6);
    dStack_100 = dVar5;
    dStack_110 = dVar3;
    local_108 = dVar4;
  }
  dStack_f0 = extraout_x1[4];
  local_f8 = extraout_x1[3];
  dStack_e0 = extraout_x1[6];
  local_e8 = extraout_x1[5];
  dStack_d0 = extraout_x1[8];
  local_d8 = extraout_x1[7];
  dStack_c0 = extraout_x1[10];
  local_c8 = extraout_x1[9];
  local_b8 = extraout_x1[0xb];
  local_b0 = extraout_d0;
  uStack_a8 = extraout_var;
  uStack_a0 = extraout_d0;
  uStack_98 = extraout_var;
  memcpy((void *)(extraout_x9 + 0x68),extraout_x1 + 0xc,0x68);
  FUN_00103844(uVar2,&local_118);
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

