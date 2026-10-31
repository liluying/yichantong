/* Artifact: libexcavator.so | Address: 00100e20 | Ghidra static pseudocode; types require review. */

void libexcavator_cali_mode_2_0(void)

{
  long lVar1;
  undefined8 *puVar2;
  long extraout_x9;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 in_d3;
  undefined1 auVar7 [16];
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
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
  auVar7 = FUN_0010162c();
  puVar2 = auVar7._8_8_;
  uVar3 = puVar2[1];
  uVar5 = puVar2[2];
  local_138 = FUN_001070a4(*puVar2);
  uVar4 = puVar2[4];
  uVar6 = puVar2[5];
  uStack_130 = uVar3;
  local_128 = uVar5;
  uStack_120 = in_d3;
  local_118 = FUN_001070a4(puVar2[3]);
  uStack_f0 = puVar2[7];
  local_f8 = puVar2[6];
  uStack_e0 = puVar2[9];
  local_e8 = puVar2[8];
  uStack_d0 = puVar2[0xb];
  local_d8 = puVar2[10];
  uStack_c0 = puVar2[0xd];
  local_c8 = puVar2[0xc];
  local_b8 = puVar2[0xe];
  uStack_110 = uVar4;
  local_108 = uVar6;
  uStack_100 = in_d3;
  memcpy((void *)(extraout_x9 + 0x88),puVar2 + 0xf,0x68);
  FUN_00101b80(auVar7._0_8_,&local_138);
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

