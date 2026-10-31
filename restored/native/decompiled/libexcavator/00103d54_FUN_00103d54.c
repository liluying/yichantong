/* Artifact: libexcavator.so | Address: 00103d54 | Ghidra static pseudocode; types require review. */

void FUN_00103d54(undefined1 param_1 [16],double param_2,double param_3,double param_4,
                 undefined8 param_5,undefined8 param_6,undefined8 *param_7)

{
  undefined8 *puVar1;
  int iVar2;
  double *pdVar3;
  int extraout_w8;
  long extraout_x8;
  int *piVar4;
  long unaff_x22;
  long lVar5;
  undefined8 uVar6;
  double dVar7;
  undefined8 uVar8;
  double dVar9;
  undefined8 uVar10;
  undefined1 auVar11 [16];
  undefined1 auStack_188 [64];
  undefined8 auStack_148 [13];
  undefined1 auStack_e0 [72];
  long local_98;
  
  auVar11 = FUN_00106180();
  pdVar3 = auVar11._8_8_;
  piVar4 = auVar11._0_8_;
  local_98 = extraout_x8;
  memset(param_7,0,0x178);
  FUN_00106204();
  iVar2 = FUN_00107104();
  if (iVar2 == 0) {
    uVar6 = 0xfffffffe;
  }
  else {
    if (*(int *)(pdVar3 + 0x12) != 0) {
      param_2 = pdVar3[0xf];
      param_3 = pdVar3[0x10];
      param_4 = pdVar3[0x11];
      iVar2 = FUN_00107104(pdVar3[0xe]);
      if (iVar2 == 0) {
        uVar6 = 0xfffffffd;
        goto LAB_001040e4;
      }
    }
    iVar2 = *piVar4;
    if (iVar2 == 3) {
      FUN_00106204();
      uVar6 = FUN_00107370();
      *param_7 = uVar6;
      param_7[1] = param_2;
      param_7[2] = param_3;
      param_7[3] = param_4;
      FUN_00105a3c();
      FUN_00106224();
      FUN_00105928(*(undefined8 *)(piVar4 + 0x36));
      FUN_00105d20();
      FUN_00105b70();
      FUN_00106054();
      FUN_00106c98(*(undefined8 *)(piVar4 + 0x14),auStack_e0);
      FUN_0010611c();
      FUN_00106ce8(auStack_e0);
      FUN_00105b4c();
      FUN_00105e18();
      FUN_001060a0();
      FUN_00105dcc();
      FUN_00105a48();
      FUN_00106160(*(undefined8 *)(piVar4 + 0xc));
      FUN_00106dcc();
      FUN_00105fc8(*(undefined8 *)(piVar4 + 0x16));
      FUN_00105e94(*(undefined8 *)(piVar4 + 0x16));
      FUN_00105cb0();
      FUN_00105b14();
      FUN_00106044();
      FUN_001060f0();
      FUN_00106100();
      piVar4 = piVar4 + 0x18;
      for (lVar5 = 8; lVar5 != 0x68; lVar5 = lVar5 + 0x18) {
        puVar1 = (undefined8 *)((long)piVar4 + lVar5);
        uVar8 = *puVar1;
        uVar10 = puVar1[1];
        FUN_00106ce8(puVar1[-1],auStack_188);
        uVar6 = FUN_00105d04();
        *(undefined8 *)((long)auStack_148 + lVar5) = uVar6;
        *(undefined8 *)((long)auStack_148 + lVar5 + 8) = uVar8;
        *(undefined8 *)((long)auStack_148 + lVar5 + 0x10) = uVar10;
      }
      FUN_00105938();
      for (; piVar4 != (int *)0x60; piVar4 = piVar4 + 6) {
        FUN_00105adc();
        FUN_00105a04();
      }
    }
    else if (iVar2 == 2) {
      FUN_00106204();
      uVar6 = FUN_00107370();
      *param_7 = uVar6;
      param_7[1] = param_2;
      param_7[2] = param_3;
      param_7[3] = param_4;
      FUN_00105a3c();
      FUN_00106224();
      FUN_00105928(*(undefined8 *)(piVar4 + 0x38));
      FUN_00105d20();
      FUN_00105b70();
      FUN_00106054();
      FUN_00106090(*(undefined4 *)(pdVar3 + 0x12));
      if (extraout_w8 == 0) {
        dVar7 = *(double *)(piVar4 + 0x16);
      }
      else {
        dVar7 = (double)FUN_00103078(*param_7,param_7[1],param_7[2],param_7[3],pdVar3[0xe],
                                     pdVar3[0xf],pdVar3[0x10],pdVar3[0x11]);
        dVar7 = dVar7 + *(double *)(piVar4 + 0x14);
      }
      FUN_00106c98(dVar7,auStack_e0);
      FUN_0010611c();
      FUN_00106ce8(auStack_e0);
      FUN_00105b4c();
      FUN_00105e18();
      FUN_001060a0();
      FUN_00105dcc();
      FUN_00105a48();
      FUN_00106160(*(undefined8 *)(piVar4 + 0xc));
      FUN_00106dcc();
      FUN_00105fc8(*(undefined8 *)(piVar4 + 0x18));
      FUN_00105e94(*(undefined8 *)(piVar4 + 0x18));
      FUN_00105cb0();
      FUN_00105b14();
      FUN_00106044();
      FUN_001060f0();
      FUN_00106100();
      piVar4 = piVar4 + 0x1a;
      for (lVar5 = 0; lVar5 != 0x60; lVar5 = lVar5 + 0x18) {
        puVar1 = (undefined8 *)((long)piVar4 + lVar5);
        uVar8 = puVar1[1];
        uVar10 = puVar1[2];
        FUN_00106ce8(*puVar1,auStack_188);
        uVar6 = FUN_00105d04();
        *(undefined8 *)((long)auStack_148 + lVar5 + 8) = uVar6;
        *(undefined8 *)((long)auStack_148 + lVar5 + 0x10) = uVar8;
        *(undefined8 *)((long)auStack_148 + lVar5 + 0x18) = uVar10;
      }
      FUN_00105938();
      for (; piVar4 != (int *)0x60; piVar4 = piVar4 + 6) {
        FUN_00105adc();
        FUN_00105a04();
      }
    }
    else {
      if (iVar2 != 1) {
        uVar6 = 0xffffffff;
        goto LAB_001040e4;
      }
      FUN_00106204();
      uVar6 = FUN_00107370();
      *param_7 = uVar6;
      param_7[1] = param_2;
      param_7[2] = param_3;
      param_7[3] = param_4;
      for (lVar5 = 0; lVar5 != 0x30; lVar5 = lVar5 + 0x18) {
        auStack_148[2] = *(undefined8 *)((long)piVar4 + lVar5 + 0x28);
        auStack_148[1] = *(undefined8 *)((long)piVar4 + lVar5 + 0x20);
        dVar7 = *(double *)((long)piVar4 + lVar5 + 0x30);
        dVar9 = *pdVar3;
        *(undefined8 *)((long)param_7 + lVar5 + 0xc0) = auStack_148[2];
        *(undefined8 *)((long)param_7 + lVar5 + 0xb8) = auStack_148[1];
        *(double *)((long)param_7 + lVar5 + 200) = dVar7 + dVar9;
        dVar7 = pdVar3[0xc];
        dVar9 = pdVar3[0xd];
        FUN_00106fe8(pdVar3[0xb]);
        uVar6 = FUN_00105a04();
        *(undefined8 *)((long)param_7 + lVar5 + 0x118) = uVar6;
        *(double *)((long)param_7 + lVar5 + 0x120) = dVar7;
        *(double *)((long)param_7 + lVar5 + 0x128) = dVar9;
      }
    }
    uVar6 = 0;
  }
LAB_001040e4:
  if (*(long *)(unaff_x22 + 0x28) == local_98) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}

