/* Artifact: libexcavator.so | Address: 00104600 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: thunk_FUN_001063d4 */
/* WARNING: Inlined function: FUN_00105f00 */
/* WARNING: Inlined function: FUN_001059f4 */
/* WARNING: Inlined function: FUN_00106084 */
/* WARNING: Inlined function: quat_rotate */
/* WARNING: Inlined function: FUN_00105be8 */
/* WARNING: Inlined function: point_subtract */
/* WARNING: Inlined function: FUN_00106090 */
/* WARNING: Inlined function: FUN_00105b04 */
/* WARNING: Inlined function: FUN_001062d0 */
/* WARNING: Inlined function: FUN_00105fdc */
/* WARNING: Inlined function: FUN_0010607c */

void FUN_00104600(undefined8 param_1,long param_2,int param_3,undefined8 *param_4)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  double *pdVar4;
  long lVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  double dVar20;
  double dVar21;
  double dVar22;
  double dVar23;
  double dVar24;
  double dVar25;
  double dVar26;
  double dVar27;
  double dVar28;
  double dVar29;
  double dVar30;
  double dVar31;
  double dVar32;
  double local_368;
  double dStack_360;
  double local_358;
  double dStack_350;
  double dStack_2b0;
  double dStack_2a8;
  double dStack_2a0;
  double local_298;
  double dStack_290;
  double local_288;
  int aiStack_1f0 [2];
  double adStack_1e8 [6];
  undefined1 auStack_1b8 [48];
  undefined8 local_188;
  undefined1 auStack_180 [48];
  undefined8 local_150;
  undefined1 auStack_148 [48];
  undefined8 local_118;
  undefined1 auStack_110 [48];
  undefined8 local_e0;
  undefined1 auStack_d8 [48];
  undefined8 local_a8;
  long local_a0;
  double dVar14;
  
  lVar1 = tpidr_el0;
  local_a0 = *(long *)(lVar1 + 0x28);
  for (lVar5 = 0; lVar5 != 0x150; lVar5 = lVar5 + 0x38) {
    *(undefined8 *)(auStack_1b8 + lVar5 + -8) = 0;
    *(undefined8 *)((long)adStack_1e8 + lVar5 + 0x10) = 0;
    *(undefined8 *)((long)adStack_1e8 + lVar5 + 8) = 0;
    *(undefined8 *)((long)adStack_1e8 + lVar5 + 0x20) = 0;
    *(undefined8 *)((long)adStack_1e8 + lVar5 + 0x18) = 0;
    *(undefined8 *)((long)adStack_1e8 + lVar5) = 0;
    *(undefined8 *)((long)aiStack_1f0 + lVar5) = 0;
  }
  lVar5 = 0;
  do {
    if (param_3 <= lVar5) {
      for (lVar5 = 0; lVar5 != 0x150; lVar5 = lVar5 + 0x38) {
                    /* WARNING: Return address prevents inlining here */
        FUN_00106378(0,(long)aiStack_1f0 + lVar5);
      }
      uVar3 = 0;
      *param_4 = adStack_1e8[5];
      param_4[1] = local_188;
      param_4[2] = local_150;
      param_4[3] = local_118;
      param_4[4] = local_e0;
      param_4[5] = local_a8;
LAB_001047dc:
      if (*(long *)(lVar1 + 0x28) == local_a0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar3);
    }
    iVar2 = FUN_00103d54(param_1,param_2,&local_368);
    if (iVar2 != 0) {
      uVar3 = 0xfffffffe;
      goto LAB_001047dc;
    }
    dVar25 = dStack_360 + dStack_360;
    dVar26 = local_358 + local_358;
    dVar28 = dStack_350 + dStack_350;
    dVar30 = 1.0 - dStack_360 * dVar25;
    dVar13 = dStack_2b0 * (dStack_350 * dVar25 - local_368 * dVar26);
    dVar11 = dStack_2a8 * (local_358 * dVar28 + local_368 * dVar25);
    dVar14 = dStack_2a0 * (dVar30 - local_358 * dVar26);
    dVar20 = *(double *)(param_2 + 0x18);
    dVar8 = *(double *)(param_2 + 0x10);
    dVar7 = dStack_360 + dStack_360;
    dVar27 = local_358 + local_358;
    dVar10 = dStack_350 + dStack_350;
    dVar31 = 1.0 - dStack_360 * dVar7;
    dVar29 = dStack_290 * (dStack_360 * dVar27 - local_368 * dVar10);
    dVar6 = local_298 * (dStack_360 * dVar27 + local_368 * dVar10);
    dVar15 = local_298 * (dStack_350 * dVar7 - local_368 * dVar27);
    dVar12 = dStack_290 * (local_358 * dVar10 + local_368 * dVar7);
    dVar17 = local_298 * ((1.0 - local_358 * dVar27) - dStack_350 * dVar10);
    dVar21 = dStack_290 * (dVar31 - dStack_350 * dVar10);
    dVar9 = local_288 * (dStack_350 * dVar7 + local_368 * dVar27);
    dVar32 = local_288 * (local_358 * dVar10 - local_368 * dVar7);
    dVar31 = local_288 * (dVar31 - local_358 * dVar27);
    dVar22 = *(double *)(param_2 + 0x18);
    dVar7 = *(double *)(param_2 + 8);
    dVar10 = *(double *)(param_2 + 0x10);
    dVar18 = *(double *)(param_2 + 0xe8);
    dVar23 = *(double *)(param_2 + 0xf0);
    dVar27 = (*(double *)(param_2 + 8) +
             dStack_2a0 * (dStack_350 * dVar25 + local_368 * dVar26) +
             dStack_2a8 * (dStack_360 * dVar26 - local_368 * dVar28) +
             dStack_2b0 * ((1.0 - local_358 * dVar26) - dStack_350 * dVar28)) -
             *(double *)(param_2 + 0xe0);
    dVar16 = *(double *)(param_2 + 0xf8);
    dVar19 = *(double *)(param_2 + 0x100);
    dVar24 = *(double *)(param_2 + 0x108);
    adStack_1e8[0] = adStack_1e8[0] + dVar27;
    adStack_1e8[1] = adStack_1e8[1] + dVar27 * dVar27;
    if (aiStack_1f0[0] == 0) {
      pdVar4 = adStack_1e8 + 2;
      adStack_1e8[3] = dVar27;
LAB_00106320:
      *pdVar4 = dVar27;
    }
    else {
      if (dVar27 < adStack_1e8[2]) {
        adStack_1e8[2] = dVar27;
      }
      pdVar4 = adStack_1e8 + 3;
      if (adStack_1e8[3] < dVar27) goto LAB_00106320;
    }
    aiStack_1f0[0] = aiStack_1f0[0] + 1;
                    /* WARNING: Could not inline here */
    FUN_001062d0((dVar8 + dStack_2a0 * (local_358 * dVar28 - local_368 * dVar25) +
                          dStack_2b0 * (dStack_360 * dVar26 + local_368 * dVar28) +
                          dStack_2a8 * (dVar30 - dStack_350 * dVar28)) - dVar18,auStack_1b8);
                    /* WARNING: Could not inline here */
    FUN_001062d0((dVar20 + dVar13 + dVar11 + dVar14) - dVar23,auStack_180);
                    /* WARNING: Could not inline here */
    FUN_001062d0((dVar7 + dVar9 + dVar29 + dVar17) - dVar16,auStack_148);
                    /* WARNING: Could not inline here */
    FUN_001062d0((dVar10 + dVar32 + dVar6 + dVar21) - dVar19,auStack_110);
                    /* WARNING: Could not inline here */
    FUN_001062d0((dVar22 + dVar15 + dVar12 + dVar31) - dVar24,auStack_d8);
    lVar5 = lVar5 + 1;
    param_2 = param_2 + 0x110;
  } while( true );
}

