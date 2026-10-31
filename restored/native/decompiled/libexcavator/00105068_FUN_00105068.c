/* Artifact: libexcavator.so | Address: 00105068 | Ghidra static pseudocode; types require review. */

long FUN_00105068(undefined8 param_1,undefined8 param_2,int param_3)

{
  int iVar1;
  undefined8 uVar2;
  int *piVar3;
  undefined8 *__dest;
  size_t __n;
  long extraout_x8;
  long extraout_x8_00;
  long extraout_x8_01;
  long extraout_x8_02;
  long extraout_x8_03;
  long extraout_x8_04;
  long extraout_x8_05;
  long extraout_x8_06;
  double *extraout_x9;
  double *extraout_x9_00;
  double *extraout_x9_01;
  long extraout_x11;
  long extraout_x11_00;
  long extraout_x11_01;
  undefined1 extraout_w12;
  long lVar4;
  undefined1 *puVar5;
  long unaff_x22;
  undefined4 extraout_s0;
  undefined4 extraout_var;
  undefined1 auVar6 [16];
  undefined8 local_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined4 uStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  undefined4 uStack_6c;
  undefined8 uStack_68;
  undefined8 local_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined4 local_40;
  long local_38;
  
  auVar6 = FUN_00106180();
  __dest = auVar6._8_8_;
  piVar3 = auVar6._0_8_;
  iVar1 = *piVar3;
  local_38 = extraout_x8;
  if (iVar1 == 3) {
    uStack_58 = 0;
    local_60 = 0;
    uStack_48 = 0;
    uStack_50 = 0;
    fStack_78 = 0.0;
    fStack_74 = 0.0;
    local_80 = 0.0;
    fStack_7c = 0.0;
    uStack_68 = 0;
    fStack_70 = 0.0;
    uStack_6c = 0;
    uStack_98 = 0;
    local_a0 = 0;
    uStack_88 = 0;
    fStack_84 = 0.0;
    uStack_90 = 0;
    if (param_3 < 0x60) {
LAB_00105138:
      uStack_48 = 0;
      uStack_50 = 0;
      uStack_58 = 0;
      local_60 = 0;
      uStack_68 = 0;
      uStack_6c = 0;
      fStack_70 = 0.0;
      fStack_74 = 0.0;
      fStack_78 = 0.0;
      fStack_7c = 0.0;
      local_80 = 0.0;
      fStack_84 = 0.0;
      uStack_88 = 0;
      uStack_90 = 0;
      uStack_98 = 0;
      local_a0 = 0;
      lVar4 = 0xfffffffd;
      goto LAB_00105260;
    }
    FUN_00105f5c();
    lVar4 = FUN_00105c5c();
    fStack_7c = (float)*(double *)(lVar4 + 0x48);
    fStack_78 = (float)*(double *)(lVar4 + 0x50);
    fStack_74 = (float)*(double *)(lVar4 + 0x58);
    lVar4 = extraout_x8_02;
    while (lVar4 != 0x30) {
      uVar2 = FUN_00105e80();
      *(undefined8 *)(extraout_x11_00 + 0x30) = uVar2;
      *(float *)(extraout_x11_00 + 0x38) = (float)*extraout_x9_00;
      lVar4 = extraout_x8_03;
    }
    __n = 0x60;
    lVar4 = 0x60;
LAB_001051b8:
    memcpy(__dest,&local_a0,__n);
  }
  else {
    if (iVar1 == 2) {
      local_40 = 0;
      uStack_58 = 0;
      local_60 = 0;
      uStack_48 = 0;
      uStack_50 = 0;
      fStack_78 = 0.0;
      fStack_74 = 0.0;
      local_80 = 0.0;
      fStack_7c = 0.0;
      uStack_68 = 0;
      fStack_70 = 0.0;
      uStack_6c = 0;
      uStack_98 = 0;
      local_a0 = 0;
      uStack_88 = 0;
      fStack_84 = 0.0;
      uStack_90 = 0;
      if (param_3 < 100) goto LAB_00105138;
      FUN_00105f5c();
      lVar4 = FUN_00105c5c();
      fStack_7c = (float)*(double *)(lVar4 + 0x48);
      fStack_78 = (float)*(double *)(lVar4 + 0x50);
      fStack_74 = (float)*(double *)(lVar4 + 0x58);
      fStack_70 = (float)*(double *)(lVar4 + 0x60);
      lVar4 = extraout_x8_00;
      while (lVar4 != 0x30) {
        uVar2 = FUN_00105e80();
        *(undefined8 *)(extraout_x11 + 0x34) = uVar2;
        *(float *)(extraout_x11 + 0x3c) = (float)*extraout_x9;
        lVar4 = extraout_x8_01;
      }
      __n = 100;
      lVar4 = 100;
      goto LAB_001051b8;
    }
    if (iVar1 != 1) {
      lVar4 = 0xffffffff;
      goto LAB_00105260;
    }
    local_80 = 0.0;
    fStack_7c = 0.0;
    uStack_98 = 0;
    local_a0 = 0;
    uStack_88 = 0;
    fStack_84 = 0.0;
    uStack_90 = 0;
    if (param_3 < 0x28) {
      lVar4 = 0xfffffffe;
      goto LAB_00105260;
    }
    lVar4 = 0;
    local_a0 = 0x1000001;
    while (lVar4 != 0x18) {
      piVar3 = (int *)FUN_00105e80();
      *(ulong *)(extraout_x11_01 + 4) = CONCAT44(extraout_var,extraout_s0);
      *(float *)(extraout_x11_01 + 0xc) = (float)*extraout_x9_01;
      lVar4 = extraout_x8_04;
    }
    lVar4 = 0x28;
    fStack_84 = (float)*(double *)(piVar3 + 2);
    local_80 = (float)*(double *)(piVar3 + 4);
    fStack_7c = (float)*(double *)(piVar3 + 6);
    __dest[1] = uStack_98;
    *__dest = local_a0;
    __dest[3] = CONCAT44(fStack_84,uStack_88);
    __dest[2] = uStack_90;
    __dest[4] = CONCAT44(fStack_7c,local_80);
  }
  FUN_001077b0(*(undefined1 *)__dest,(undefined1 *)((long)__dest + 3),(int)lVar4 + -3);
  FUN_001061c8(lVar4 + -3);
  puVar5 = (undefined1 *)((long)__dest + 3);
  if (extraout_x8_05 != 0) {
    do {
      FUN_001061a0();
      *puVar5 = extraout_w12;
      puVar5 = puVar5 + 1;
    } while (extraout_x8_06 != 1);
  }
LAB_00105260:
  if (*(long *)(unaff_x22 + 0x28) == local_38) {
    return lVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

