/* Artifact: libexcavator.so | Address: 0010528c | Ghidra static pseudocode; types require review. */

void FUN_0010528c(undefined8 param_1,undefined8 param_2,int param_3)

{
  short sVar1;
  undefined4 *__s;
  undefined8 uVar2;
  long extraout_x8;
  long lVar3;
  long extraout_x8_00;
  long extraout_x8_01;
  long extraout_x8_02;
  long extraout_x8_03;
  long extraout_x8_04;
  float *extraout_x9;
  float *extraout_x9_00;
  long extraout_x10;
  long extraout_x10_00;
  long unaff_x23;
  double dVar4;
  double dVar5;
  undefined1 auVar6 [16];
  undefined1 auStack_170 [48];
  float local_140;
  char local_108;
  short local_107;
  char local_105;
  float local_104;
  float fStack_100;
  float local_fc;
  float fStack_f8;
  float local_f4;
  float fStack_f0;
  float local_ec;
  float fStack_e8;
  float local_e4;
  long local_88;
  
  auVar6 = FUN_001061b4();
  __s = auVar6._0_8_;
  local_88 = extraout_x8;
  memset(__s,0,0x138);
  if (param_3 - 4U < 0x7d) {
    memcpy(&local_108,auVar6._8_8_,(long)param_3);
    lVar3 = 3;
    while (lVar3 < param_3) {
      FUN_00105e30();
      lVar3 = extraout_x8_00;
    }
    sVar1 = FUN_00106154(&local_108,local_108);
    if (local_107 == sVar1) {
      if (local_108 == '\x03') {
        if (0x5f < param_3 && local_105 == '\x01') {
          memcpy(auStack_170,&local_108,0x60);
          FUN_00105db0(3);
          FUN_0010623c();
          FUN_00105aa4();
          lVar3 = extraout_x8_01;
          while (lVar3 != 0x60) {
            auVar6 = FUN_00105ecc();
            *(undefined1 (*) [16])(extraout_x10 + 0x60) = auVar6;
            *(double *)(extraout_x10 + 0x70) = (double)*extraout_x9;
            lVar3 = extraout_x8_02;
          }
          uVar2 = FUN_001060d8();
          if ((int)uVar2 != 0) {
            FUN_00105b3c();
            uVar2 = 0xfffffff9;
          }
          goto LAB_0010544c;
        }
      }
      else if (local_108 == '\x02') {
        if (99 < param_3 && local_105 == '\x01') {
          memcpy(auStack_170,&local_108,100);
          FUN_00105db0(2);
          FUN_0010623c();
          FUN_00105aa4();
          *(double *)(__s + 0x18) = (double)local_140;
          lVar3 = extraout_x8_03;
          while (lVar3 != 0x60) {
            auVar6 = FUN_00105ecc();
            *(undefined1 (*) [16])(extraout_x10_00 + 0x68) = auVar6;
            *(double *)(extraout_x10_00 + 0x78) = (double)*extraout_x9_00;
            lVar3 = extraout_x8_04;
          }
          uVar2 = FUN_001060d8();
          if ((int)uVar2 != 0) {
            FUN_00105b3c();
            uVar2 = 0xfffffffa;
          }
          goto LAB_0010544c;
        }
      }
      else if ((local_108 == '\x01') && (0x27 < param_3 && local_105 == '\x01')) {
        dVar4 = (double)fStack_100;
        dVar5 = (double)local_fc;
        *__s = 1;
        uVar2 = FUN_00106e3c((double)local_104);
        *(undefined8 *)(__s + 8) = uVar2;
        *(double *)(__s + 10) = dVar4;
        *(double *)(__s + 0xc) = dVar5;
        dVar4 = (double)local_f4;
        dVar5 = (double)fStack_f0;
        uVar2 = FUN_00106e3c((double)fStack_f8);
        *(undefined8 *)(__s + 0xe) = uVar2;
        *(double *)(__s + 0x10) = dVar4;
        *(double *)(__s + 0x12) = dVar5;
        FUN_00106e3c((double)local_ec,(double)fStack_e8,(double)local_e4);
        uVar2 = FUN_001060e0();
        if ((int)uVar2 != 0) {
          FUN_00105b3c();
          uVar2 = 0xfffffffb;
        }
        goto LAB_0010544c;
      }
      uVar2 = 0xfffffffc;
    }
    else {
      uVar2 = 0xfffffffd;
    }
  }
  else {
    uVar2 = 0xffffffff;
  }
LAB_0010544c:
  if (*(long *)(unaff_x23 + 0x28) == local_88) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

