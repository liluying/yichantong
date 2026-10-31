/* Artifact: libexcavator.so | Address: 00101a14 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_0010618c */
/* WARNING: Inlined function: thunk_FUN_001063d4 */
/* WARNING: Inlined function: FUN_00106140 */
/* WARNING: Inlined function: FUN_00105f00 */
/* WARNING: Inlined function: FUN_001059f4 */
/* WARNING: Inlined function: FUN_00105ee0 */
/* WARNING: Inlined function: FUN_00106138 */
/* WARNING: Inlined function: FUN_00105fdc */
/* WARNING: Inlined function: FUN_00106110 */
/* WARNING: Inlined function: FUN_00106328 */
/* WARNING: Inlined function: FUN_00105f84 */

void FUN_00101a14(long *param_1)

{
  long lVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  double dVar17;
  double dStack_288;
  double dStack_280;
  double dStack_278;
  double dStack_270;
  double dStack_1d0;
  double dStack_1c8;
  double dStack_1c0;
  int aiStack_110 [2];
  double adStack_108 [6];
  undefined1 auStack_d8 [48];
  double local_a8;
  undefined1 auStack_a0 [48];
  double local_70;
  long local_68;
  double dVar11;
  
  lVar2 = tpidr_el0;
  local_68 = *(long *)(lVar2 + 0x28);
  lVar5 = *param_1;
  for (lVar4 = 0; lVar4 != 0xa8; lVar4 = lVar4 + 0x38) {
    *(undefined8 *)(auStack_d8 + lVar4 + -8) = 0;
    *(undefined8 *)((long)adStack_108 + lVar4 + 0x10) = 0;
    *(undefined8 *)((long)adStack_108 + lVar4 + 8) = 0;
    *(undefined8 *)((long)adStack_108 + lVar4 + 0x20) = 0;
    *(undefined8 *)((long)adStack_108 + lVar4 + 0x18) = 0;
    *(undefined8 *)((long)adStack_108 + lVar4) = 0;
    *(undefined8 *)((long)aiStack_110 + lVar4) = 0;
  }
  lVar6 = 0;
  lVar4 = 0;
  do {
    if (*(int *)(lVar5 + 0x18) <= lVar4) {
      for (lVar4 = 0; lVar4 != 0xa8; lVar4 = lVar4 + 0x38) {
        iVar3 = *(int *)((long)aiStack_110 + lVar4);
        dVar7 = *(double *)((long)adStack_108 + lVar4);
        dVar8 = 0.0;
        if (1 < iVar3) {
          dVar7 = dVar7 / (double)iVar3;
          dVar9 = (*(double *)((long)adStack_108 + lVar4 + 8) - dVar7 * dVar7 * (double)iVar3) /
                  (double)(iVar3 + -1);
          dVar8 = SQRT(dVar9);
          if (dVar9 <= 0.0) {
            dVar8 = 0.0;
          }
        }
        *(double *)((long)adStack_108 + lVar4 + 0x20) = dVar7;
        *(double *)(auStack_d8 + lVar4 + -8) = dVar8;
      }
      dVar7 = SQRT(adStack_108[5] * adStack_108[5] + local_a8 * local_a8 + local_70 * local_70);
LAB_00101af8:
      if (*(long *)(lVar2 + 0x28) == local_68) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(dVar7);
    }
    lVar1 = *(long *)(lVar5 + 0x10) + lVar6;
    iVar3 = FUN_00103d54(*(undefined8 *)(lVar5 + 8),lVar1,&dStack_288);
    if (iVar3 != 0) {
      dVar7 = -2.0;
      goto LAB_00101af8;
    }
    dVar14 = dStack_280 + dStack_280;
    dVar15 = dStack_278 + dStack_278;
    dVar16 = dStack_270 + dStack_270;
    dVar8 = 1.0 - dStack_280 * dVar14;
    dVar7 = dStack_1d0 * (dStack_280 * dVar15 + dStack_288 * dVar16);
    dVar10 = dStack_1d0 * (dStack_270 * dVar14 - dStack_288 * dVar15);
    dVar9 = dStack_1c8 * (dStack_278 * dVar16 + dStack_288 * dVar14);
    dVar12 = dStack_1c8 * (dVar8 - dStack_270 * dVar16);
    dVar17 = dStack_1c0 * (dStack_278 * dVar16 - dStack_288 * dVar14);
    dVar11 = dStack_1c0 * (dVar8 - dStack_278 * dVar15);
    dVar13 = *(double *)(lVar1 + 0x18);
    dVar8 = *(double *)(lVar1 + 0x10);
                    /* WARNING: Return address prevents inlining here */
    FUN_001062d0(*(double *)(lVar1 + 8) +
                 dStack_1c0 * (dStack_270 * dVar14 + dStack_288 * dVar15) +
                 dStack_1c8 * (dStack_280 * dVar15 - dStack_288 * dVar16) +
                 dStack_1d0 * ((1.0 - dStack_278 * dVar15) - dStack_270 * dVar16),aiStack_110);
                    /* WARNING: Return address prevents inlining here */
    FUN_001062d0(dVar8 + dVar17 + dVar7 + dVar12,auStack_d8);
                    /* WARNING: Return address prevents inlining here */
    FUN_001062d0(dVar13 + dVar10 + dVar9 + dVar11,auStack_a0);
    lVar4 = lVar4 + 1;
    lVar6 = lVar6 + 0x98;
  } while( true );
}

