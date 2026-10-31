/* Artifact: libexcavator.so | Address: 00100e20 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_from_xyz */

void libexcavator_cali_mode_2_0(void)

{
  long lVar1;
  double *pdVar2;
  long extraout_x9;
  double dVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  Quat QVar7;
  undefined1 auVar8 [16];
  double local_138;
  double dStack_130;
  double local_128;
  double dStack_120;
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
  undefined8 local_70;
  undefined8 uStack_68;
  undefined8 local_60;
  undefined8 uStack_58;
  undefined8 local_50;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  local_50 = 0;
  uStack_58 = 0;
  local_60 = 0;
  uStack_68 = 0;
  local_70 = 0;
  auVar8 = FUN_0010162c();
  pdVar2 = auVar8._8_8_;
  dVar3 = *pdVar2;
  dVar4 = pdVar2[1];
  dVar5 = pdVar2[2];
  local_138 = 1.0;
  dVar6 = 1.0 - (dVar5 * dVar5 + dVar3 * dVar3 + dVar4 * dVar4);
  dStack_120 = 0.0;
  dStack_130 = 0.0;
  local_128 = 0.0;
  if (0.0 < dVar6) {
    local_138 = SQRT(dVar6);
    dStack_120 = dVar5;
    dStack_130 = dVar3;
    local_128 = dVar4;
  }
                    /* WARNING: Could not inline here */
  QVar7 = quat_from_xyz(pdVar2[3],pdVar2[4],pdVar2[5]);
  dStack_100 = QVar7.z;
  local_108 = QVar7.y;
  dStack_110 = QVar7.x;
  local_118 = QVar7.w;
  dStack_f0 = pdVar2[7];
  local_f8 = pdVar2[6];
  dStack_e0 = pdVar2[9];
  local_e8 = pdVar2[8];
  dStack_d0 = pdVar2[0xb];
  local_d8 = pdVar2[10];
  dStack_c0 = pdVar2[0xd];
  local_c8 = pdVar2[0xc];
  local_b8 = pdVar2[0xe];
  memcpy((void *)(extraout_x9 + 0x88),pdVar2 + 0xf,0x68);
  FUN_00101b80(auVar8._0_8_,&local_138);
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

