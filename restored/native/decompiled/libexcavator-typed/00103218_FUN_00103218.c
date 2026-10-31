/* Artifact: libexcavator.so | Address: 00103218 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106110 */
/* WARNING: Inlined function: FUN_00106e80 */
/* WARNING: Inlined function: FUN_00107090 */
/* WARNING: Inlined function: FUN_00106e1c */
/* WARNING: Inlined function: quat_from_vectors */
/* WARNING: Inlined function: FUN_001061e8 */
/* WARNING: Inlined function: FUN_001063e8 */
/* WARNING: Inlined function: quat_conjugate */
/* WARNING: Inlined function: FUN_001070f4 */
/* WARNING: Inlined function: FUN_001060e0 */
/* WARNING: Inlined function: FUN_0010612c */
/* WARNING: Inlined function: FUN_00106e04 */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Inlined function: quat_multiply */
/* WARNING: Inlined function: FUN_00107180 */
/* WARNING: Inlined function: FUN_00106224 */
/* WARNING: Switch with 1 destination removed at 0x00106560 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 FUN_00103218(undefined4 *param_1,long param_2)

{
  double *pdVar1;
  int *piVar2;
  undefined8 *puVar3;
  int iVar4;
  int iVar5;
  long lVar6;
  double *pdVar7;
  double *pdVar8;
  int iVar9;
  int iVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  Quat QVar17;
  undefined8 *local_278;
  undefined8 *puStack_270;
  undefined8 local_268;
  code *local_260;
  code *pcStack_258;
  undefined8 local_250;
  undefined8 local_248;
  undefined8 uStack_240;
  undefined8 local_238;
  undefined8 local_230;
  undefined8 uStack_228;
  undefined8 uStack_220;
  undefined8 uStack_218;
  undefined8 local_210;
  undefined8 uStack_208;
  undefined8 local_200;
  undefined8 uStack_1f8;
  double local_1f0;
  double dStack_1e8;
  double local_1e0;
  double dStack_1d8;
  undefined8 local_1d0;
  undefined8 uStack_1c8;
  undefined8 local_1c0;
  double dStack_1b8;
  double local_1b0;
  double dStack_1a8;
  long local_68;
  
  lVar6 = tpidr_el0;
  local_68 = *(long *)(lVar6 + 0x28);
  memset(param_1,0,0x138);
  if (*(double *)(param_2 + 0x18) <= *(double *)(param_2 + 0x20)) {
    *param_1 = 2;
    *(undefined8 *)(param_1 + 8) = *(undefined8 *)(param_2 + 8);
    *(undefined8 *)(param_1 + 10) = *(undefined8 *)(param_2 + 0x10);
    *(undefined8 *)(param_1 + 0xc) = *(undefined8 *)(param_2 + 0x30);
    *(undefined8 *)(param_1 + 0xe) = *(undefined8 *)(param_2 + 0x28);
    *(undefined8 *)(param_1 + 0x10) = *(undefined8 *)(param_2 + 0x20);
    memcpy(param_1 + 0x18,(void *)(param_2 + 0x38),0x68);
    dVar11 = *(double *)(param_2 + 0x18);
    dVar15 = dVar11 * dVar11;
    dVar12 = atan2(dVar11,SQRT(*(double *)(param_2 + 0x20) * *(double *)(param_2 + 0x20) - dVar15));
    dVar11 = DAT_00107820;
    *(double *)(param_1 + 0x12) = dVar12 * DAT_00107820;
    dVar12 = (double)FUN_001034b4(*(undefined8 *)(param_2 + 0xa0),*(undefined4 *)(param_2 + 0xa8));
    if (dVar11 < 0.0) {
      dVar12 = -dVar12;
      dVar11 = -dVar11;
      dVar15 = -dVar15;
    }
    uStack_228 = *(undefined8 *)(param_2 + 0xb8);
    local_230 = *(undefined8 *)(param_2 + 0xb0);
    uStack_218 = *(undefined8 *)(param_2 + 200);
    uStack_220 = *(undefined8 *)(param_2 + 0xc0);
    local_210 = 0x3ff0000000000000;
    uStack_208 = 0;
    local_200 = 0;
    uStack_1f8 = 0;
                    /* WARNING: Could not inline here */
    dVar13 = (double)thunk_FUN_00107024(dVar12,dVar11,dVar15);
    dStack_1e8 = 0.0;
    if (9.5367431640625e-07 <= dVar13) {
      dVar13 = (dVar15 * 0.0 + dVar12 * 0.0 + dVar11 * 1.0) / (dVar13 * 1.0);
      dVar16 = 1.0;
      if (1.0 <= dVar13) {
        local_1e0 = 0.0;
        dStack_1d8 = 0.0;
        dStack_1e8 = 0.0;
      }
      else {
                    /* WARNING: Could not inline here */
        dVar14 = (double)thunk_FUN_00107024();
        local_1e0 = 0.0;
        dStack_1d8 = 0.0;
        dStack_1e8 = 0.0;
        if (9.5367431640625e-07 < dVar14) {
          dVar14 = SQRT((1.0 - dVar13) * 0.5) / dVar14;
          dVar16 = SQRT((dVar13 + 1.0) * 0.5);
          dStack_1e8 = (dVar15 * 1.0 - dVar11 * 0.0) * dVar14;
          local_1e0 = (dVar12 * 0.0 - dVar15 * 0.0) * dVar14;
          dStack_1d8 = (dVar11 * 0.0 - dVar12 * 1.0) * dVar14;
        }
      }
    }
    else {
      dVar16 = 1.0;
      local_1e0 = 0.0;
      dStack_1d8 = 0.0;
    }
    dVar13 = DAT_00107fd0;
    local_1c0 = *(undefined8 *)(param_2 + 8);
    uStack_1c8 = *(undefined8 *)(param_2 + 0x10);
    local_278 = &local_230;
    puStack_270 = &local_250;
    local_1d0 = 0;
    local_238 = 0;
    local_260 = (code *)&LAB_001036e8;
    pcStack_258 = (code *)&LAB_0010377c;
    local_250 = 0x800000008;
    local_268 = DAT_00107830;
    uStack_240 = _UNK_001078b8;
    local_248 = _DAT_001078b0;
    local_1f0 = dVar16;
    dStack_1b8 = dVar12;
    local_1b0 = dVar11;
    dStack_1a8 = dVar15;
    for (iVar5 = 0; puVar3 = local_278, iVar5 < local_268._4_4_; iVar5 = iVar5 + 1) {
      for (lVar6 = 0; lVar6 < (int)local_268; lVar6 = lVar6 + 1) {
        piVar2 = (int *)(puStack_270 + lVar6 * 4);
        iVar4 = piVar2[1];
        if (iVar4 != 0) {
          pdVar7 = (double *)(piVar2 + 2);
          dVar12 = *pdVar7;
          pdVar8 = (double *)(piVar2 + 4);
          dVar11 = *pdVar8;
          pdVar1 = (double *)(piVar2 + 6);
          for (iVar9 = 0; iVar9 < *piVar2; iVar9 = iVar9 + 1) {
            dVar11 = (dVar11 - dVar12) / (double)iVar4;
            dVar15 = dVar12;
            dVar16 = dVar13;
            for (iVar10 = 0; iVar10 <= iVar4; iVar10 = iVar10 + 1) {
              *pdVar1 = dVar12 + dVar11 * (double)iVar10;
              (*pcStack_258)(&local_278);
              dVar14 = (double)(*local_260)(&local_278);
              if (dVar14 < dVar16) {
                dVar15 = *pdVar1;
                dVar16 = dVar14;
              }
              iVar4 = piVar2[1];
            }
            dVar12 = dVar15 - dVar11;
            dVar11 = dVar11 + dVar15;
          }
          dVar11 = (dVar12 + dVar11) * 0.5;
          *pdVar1 = dVar11;
          dVar12 = (*pdVar8 - *pdVar7) * 0.25;
          *pdVar7 = dVar11 - dVar12;
          *pdVar8 = dVar11 + dVar12;
        }
      }
    }
    dVar16 = (double)puStack_270[3];
    dVar11 = (double)local_278[0xf];
    dVar15 = (double)local_278[0x10];
    dVar13 = (double)local_278[0x11];
                    /* WARNING: Could not inline here */
    dVar12 = (double)thunk_FUN_00107024();
    if (9.5367431640625e-07 <= dVar12) {
      dVar16 = sin(dVar16 * DAT_00108020);
      dVar12 = dVar16 / dVar12;
      dVar11 = dVar11 * dVar12;
      dVar15 = dVar15 * dVar12;
      dVar16 = SQRT(1.0 - dVar16 * dVar16);
      dVar13 = dVar13 * dVar12;
    }
    else {
      dVar11 = 0.0;
      dVar16 = 1.0;
      dVar15 = 0.0;
      dVar13 = 0.0;
    }
    QVar17.x = dVar11;
    QVar17.w = dVar16;
    QVar17.z = dVar13;
    QVar17.y = dVar15;
                    /* WARNING: Could not inline here */
    QVar17 = quat_multiply(*(Quat *)(puVar3 + 8),QVar17);
    puVar3[4] = QVar17.w;
    puVar3[5] = QVar17.x;
    puVar3[6] = QVar17.y;
    puVar3[7] = QVar17.z;
    return 0;
  }
  if (*(long *)(lVar6 + 0x28) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0xffffffff);
  }
  return 0xffffffff;
}

