/* Artifact: libexcavator.so | Address: 00103d54 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106180 */
/* WARNING: Inlined function: FUN_00106204 */
/* WARNING: Inlined function: FUN_00105a04 */
/* WARNING: Inlined function: FUN_00105a3c */
/* WARNING: Inlined function: FUN_00106224 */
/* WARNING: Inlined function: FUN_00105d20 */
/* WARNING: Inlined function: FUN_00105b70 */
/* WARNING: Inlined function: FUN_00106054 */
/* WARNING: Inlined function: FUN_00106090 */
/* WARNING: Inlined function: FUN_0010611c */
/* WARNING: Inlined function: FUN_00105b4c */
/* WARNING: Inlined function: FUN_00105e18 */
/* WARNING: Inlined function: FUN_001060a0 */
/* WARNING: Inlined function: FUN_00105dcc */
/* WARNING: Inlined function: FUN_00105a48 */
/* WARNING: Inlined function: FUN_00106160 */
/* WARNING: Inlined function: FUN_00105fc8 */
/* WARNING: Inlined function: FUN_00105e94 */
/* WARNING: Inlined function: FUN_00105cb0 */
/* WARNING: Inlined function: FUN_00105b14 */
/* WARNING: Inlined function: FUN_00106044 */
/* WARNING: Inlined function: FUN_001060f0 */
/* WARNING: Inlined function: FUN_00106100 */
/* WARNING: Inlined function: FUN_00105d04 */
/* WARNING: Inlined function: FUN_00105adc */

void FUN_00103d54(int *param_1,double *param_2,undefined8 *param_3)

{
  undefined8 *puVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  undefined8 uVar5;
  double dVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  double dVar9;
  undefined8 uVar10;
  undefined8 uVar11;
  double dVar12;
  undefined8 uVar13;
  double dVar14;
  undefined8 uVar15;
  undefined1 auStack_188 [64];
  double adStack_148 [13];
  undefined1 auStack_e0 [72];
  long local_98;
  
  lVar2 = tpidr_el0;
  local_98 = *(long *)(lVar2 + 0x28);
  memset(param_3,0,0x178);
  iVar3 = FUN_00107104(param_2[7],param_2[8],param_2[9],param_2[10]);
  if (iVar3 == 0) {
    uVar5 = 0xfffffffe;
  }
  else if ((*(int *)(param_2 + 0x12) == 0) ||
          (iVar3 = FUN_00107104(param_2[0xe],param_2[0xf],param_2[0x10],param_2[0x11]), iVar3 != 0))
  {
    iVar3 = *param_1;
    if (iVar3 == 3) {
      dVar12 = param_2[8];
      dVar9 = param_2[9];
      dVar6 = param_2[10];
      uVar5 = FUN_00107370(param_2[7]);
      *param_3 = uVar5;
      param_3[1] = dVar12;
      param_3[2] = dVar9;
      param_3[3] = dVar6;
                    /* WARNING: Could not inline here */
      FUN_00105a3c();
      FUN_00105928(*(undefined8 *)(param_1 + 0x36));
                    /* WARNING: Could not inline here */
      FUN_00105d20();
                    /* WARNING: Could not inline here */
      FUN_00105b70();
                    /* WARNING: Could not inline here */
      FUN_00106054();
      FUN_00106c98(*(undefined8 *)(param_1 + 0x14),auStack_e0);
                    /* WARNING: Could not inline here */
      FUN_0010611c();
      FUN_00106ce8(auStack_e0);
                    /* WARNING: Could not inline here */
      FUN_00105b4c();
                    /* WARNING: Could not inline here */
      FUN_00105e18();
                    /* WARNING: Could not inline here */
      FUN_001060a0();
                    /* WARNING: Could not inline here */
      FUN_00105dcc();
                    /* WARNING: Could not inline here */
      FUN_00105a48();
                    /* WARNING: Could not inline here */
      FUN_00106160(*(undefined8 *)(param_1 + 0xc));
      FUN_00106dcc();
                    /* WARNING: Could not inline here */
      FUN_00105fc8(*(undefined8 *)(param_1 + 0x16));
                    /* WARNING: Could not inline here */
      FUN_00105e94(*(undefined8 *)(param_1 + 0x16));
                    /* WARNING: Could not inline here */
      FUN_00105cb0();
                    /* WARNING: Could not inline here */
      FUN_00105b14();
                    /* WARNING: Could not inline here */
      FUN_00106044();
                    /* WARNING: Could not inline here */
      FUN_001060f0();
                    /* WARNING: Could not inline here */
      FUN_00106100();
      param_1 = param_1 + 0x18;
      for (lVar4 = 8; lVar4 != 0x68; lVar4 = lVar4 + 0x18) {
        puVar1 = (undefined8 *)((long)param_1 + lVar4);
        uVar10 = *puVar1;
        uVar8 = puVar1[1];
        FUN_00106ce8(puVar1[-1],auStack_188);
                    /* WARNING: Could not inline here */
        uVar5 = FUN_00105d04();
        *(undefined8 *)((long)adStack_148 + lVar4) = uVar5;
        *(undefined8 *)((long)adStack_148 + lVar4 + 8) = uVar10;
        *(undefined8 *)((long)adStack_148 + lVar4 + 0x10) = uVar8;
      }
      FUN_00105938();
      for (; param_1 != (int *)0x60; param_1 = param_1 + 6) {
                    /* WARNING: Could not inline here */
        FUN_00105adc();
                    /* WARNING: Could not inline here */
        FUN_00105a04();
      }
    }
    else if (iVar3 == 2) {
      dVar12 = param_2[8];
      dVar9 = param_2[9];
      dVar6 = param_2[10];
      uVar5 = FUN_00107370(param_2[7]);
      *param_3 = uVar5;
      param_3[1] = dVar12;
      param_3[2] = dVar9;
      param_3[3] = dVar6;
      dVar9 = *param_2;
      FUN_00106e3c(0,0);
      uVar11 = *(undefined8 *)(param_1 + 0x3a);
      uVar5 = FUN_00105928(*(undefined8 *)(param_1 + 0x38));
      uVar7 = *(undefined8 *)(param_1 + 8);
      uVar8 = *(undefined8 *)(param_1 + 10);
      uVar10 = FUN_00106e3c(0,uVar8,uVar7);
      uVar10 = FUN_00106e60(uVar5,uVar11,dVar9,uVar10,uVar8,uVar7);
      uVar5 = uVar11;
      dVar12 = dVar9;
      uVar8 = FUN_00106e60();
      if (*(int *)(param_2 + 0x12) == 0) {
        dVar6 = *(double *)(param_1 + 0x16);
      }
      else {
        dVar6 = (double)FUN_00103078(*param_3,param_3[1],param_3[2],param_3[3],param_2[0xe],
                                     param_2[0xf],param_2[0x10],param_2[0x11]);
        dVar6 = dVar6 + *(double *)(param_1 + 0x14);
      }
      FUN_00106c98(dVar6,auStack_e0);
      uVar13 = 0;
      uVar15 = 0;
      FUN_00106e3c(*(undefined8 *)(param_1 + 0xe),0,0);
      uVar7 = FUN_00106ce8(auStack_e0);
      FUN_00106e60(uVar8,uVar5,dVar12,uVar7,uVar13,uVar15);
      uVar8 = FUN_00106e70();
      dVar6 = (double)thunk_FUN_00107024();
      uVar13 = FUN_00106e40(uVar8,uVar5,dVar12,1.0 / dVar6);
      uVar15 = 0;
      uVar8 = uVar13;
      uVar7 = FUN_00106e3c(-dVar12,0,uVar13);
      dVar14 = (double)FUN_00106da8(*(undefined8 *)(param_1 + 0xc),*(undefined8 *)(param_1 + 0x18),
                                    dVar6);
      dVar6 = (double)FUN_00106dcc();
      uVar13 = FUN_00106e40(uVar13,uVar5,dVar12,dVar14 * *(double *)(param_1 + 0x18));
      uVar7 = FUN_00106e40(uVar7,uVar15,uVar8,dVar6 * *(double *)(param_1 + 0x18));
      uVar7 = FUN_00106e60(uVar13,uVar5,dVar12,uVar7,uVar15,uVar8);
      uVar8 = uVar11;
      dVar6 = dVar9;
      FUN_00106e60(uVar10,uVar11,dVar9,uVar7,uVar5,dVar12);
      FUN_00106e10();
      uVar5 = FUN_00107590();
      param_3[4] = uVar5;
      param_3[5] = uVar8;
      param_3[6] = dVar6;
      param_3[7] = uVar7;
      FUN_00107400(auStack_188);
      param_1 = param_1 + 0x1a;
      for (lVar4 = 0; lVar4 != 0x60; lVar4 = lVar4 + 0x18) {
        puVar1 = (undefined8 *)((long)param_1 + lVar4);
        uVar7 = puVar1[1];
        uVar13 = puVar1[2];
        uVar8 = FUN_00106ce8(*puVar1,uVar7,uVar13,auStack_188);
        uVar5 = uVar11;
        dVar12 = dVar9;
        uVar8 = FUN_00106e60(uVar10,uVar11,dVar9,uVar8,uVar7,uVar13);
        *(undefined8 *)((long)adStack_148 + lVar4 + 8) = uVar8;
        *(undefined8 *)((long)adStack_148 + lVar4 + 0x10) = uVar5;
        *(double *)((long)adStack_148 + lVar4 + 0x18) = dVar12;
      }
      FUN_00105938();
      for (; param_1 != (int *)0x60; param_1 = param_1 + 6) {
        uVar10 = *(undefined8 *)(param_1 + 0x1a);
        uVar5 = *(undefined8 *)(param_1 + 0x18);
        lVar4 = (long)param_3 + (long)param_1;
        *(undefined8 *)(lVar4 + 200) = *(undefined8 *)(param_1 + 0x1c);
        *(undefined8 *)(lVar4 + 0xc0) = uVar10;
        *(undefined8 *)(lVar4 + 0xb8) = uVar5;
        dVar12 = param_2[0xc];
        dVar9 = param_2[0xd];
        FUN_00106fe8(param_2[0xb]);
                    /* WARNING: Could not inline here */
        uVar5 = FUN_00105a04();
        *(undefined8 *)(lVar4 + 0x118) = uVar5;
        *(double *)(lVar4 + 0x120) = dVar12;
        *(double *)(lVar4 + 0x128) = dVar9;
      }
    }
    else {
      if (iVar3 != 1) {
        uVar5 = 0xffffffff;
        goto LAB_001040e4;
      }
      dVar12 = param_2[8];
      dVar9 = param_2[9];
      dVar6 = param_2[10];
      uVar5 = FUN_00107370(param_2[7]);
      *param_3 = uVar5;
      param_3[1] = dVar12;
      param_3[2] = dVar9;
      param_3[3] = dVar6;
      for (lVar4 = 0; lVar4 != 0x30; lVar4 = lVar4 + 0x18) {
        adStack_148[2] = *(double *)((long)param_1 + lVar4 + 0x28);
        adStack_148[1] = *(double *)((long)param_1 + lVar4 + 0x20);
        dVar9 = *(double *)((long)param_1 + lVar4 + 0x30);
        dVar12 = *param_2;
        *(double *)((long)param_3 + lVar4 + 0xc0) = adStack_148[2];
        *(double *)((long)param_3 + lVar4 + 0xb8) = adStack_148[1];
        dVar9 = dVar9 + dVar12;
        *(double *)((long)param_3 + lVar4 + 200) = dVar9;
        dVar12 = (double)FUN_00106fe8(param_2[0xb],param_2[0xc],param_2[0xd]);
        dVar6 = param_2[5];
        dVar14 = param_2[6];
        uVar5 = FUN_00106e50(param_2[4],dVar6,dVar14,(double)(float)(dVar9 * dVar12));
        *(undefined8 *)((long)param_3 + lVar4 + 0x118) = uVar5;
        *(double *)((long)param_3 + lVar4 + 0x120) = dVar6;
        *(double *)((long)param_3 + lVar4 + 0x128) = dVar14;
      }
    }
    uVar5 = 0;
  }
  else {
    uVar5 = 0xfffffffd;
  }
LAB_001040e4:
  if (*(long *)(lVar2 + 0x28) == local_98) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}

