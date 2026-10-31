/* Artifact: libexcavator.so | Address: 001056c0 | Ghidra static pseudocode; types require review. */

void FUN_001056c0(undefined8 param_1,undefined8 param_2,int param_3)

{
  bool bVar1;
  short sVar2;
  double *pdVar3;
  undefined8 uVar4;
  long lVar5;
  long extraout_x8;
  long extraout_x8_00;
  float *extraout_x9;
  long extraout_x10;
  long unaff_x22;
  undefined1 auVar6 [16];
  char local_c8;
  short sStack_c7;
  char cStack_c5;
  float fStack_c4;
  
  auVar6 = FUN_00106180();
  pdVar3 = auVar6._0_8_;
  bVar1 = param_3 - 4U == 0x7c;
  pdVar3[0xc] = 0.0;
  pdVar3[9] = 0.0;
  pdVar3[8] = 0.0;
  pdVar3[0xb] = 0.0;
  pdVar3[10] = 0.0;
  pdVar3[5] = 0.0;
  pdVar3[4] = 0.0;
  pdVar3[7] = 0.0;
  pdVar3[6] = 0.0;
  pdVar3[1] = 0.0;
  *pdVar3 = 0.0;
  pdVar3[3] = 0.0;
  pdVar3[2] = 0.0;
  if (param_3 - 4U < 0x7d) {
    memcpy(&local_c8,auVar6._8_8_,(long)param_3);
    lVar5 = 3;
    while (lVar5 < param_3) {
      FUN_00105e30();
      lVar5 = extraout_x8;
    }
    sVar2 = FUN_00106154(&local_c8,local_c8);
    bVar1 = sStack_c7 == sVar2;
    if (bVar1) {
      bVar1 = local_c8 == -0x7f;
      if ((bVar1) &&
         (bVar1 = 0x37 < param_3 && cStack_c5 == '\x01', 0x37 < param_3 && cStack_c5 == '\x01')) {
        lVar5 = 0;
        *pdVar3 = (double)fStack_c4;
        while (bVar1 = lVar5 == 0x60, !bVar1) {
          auVar6 = FUN_00105ecc();
          *(undefined1 (*) [16])(extraout_x10 + 8) = auVar6;
          *(double *)(extraout_x10 + 0x18) = (double)*extraout_x9;
          lVar5 = extraout_x8_00;
        }
        uVar4 = 0;
      }
      else {
        uVar4 = 0xfffffffc;
      }
    }
    else {
      uVar4 = 0xfffffffd;
    }
  }
  else {
    uVar4 = 0xffffffff;
  }
  FUN_00105f14(*(undefined8 *)(unaff_x22 + 0x28),uVar4);
  if (bVar1) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

