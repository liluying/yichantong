/* Artifact: libexcavator.so | Address: 001018b4 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106e04 */
/* WARNING: Inlined function: FUN_00106230 */
/* WARNING: Inlined function: FUN_00105a3c */
/* WARNING: Inlined function: FUN_00107090 */
/* WARNING: Inlined function: FUN_001063e8 */
/* WARNING: Inlined function: quat_conjugate */
/* WARNING: Inlined function: quat_to_euler */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Inlined function: FUN_00105f14 */
/* WARNING: Inlined function: FUN_001062b8 */
/* WARNING: Inlined function: FUN_00105ebc */
/* WARNING: Inlined function: thunk_FUN_00107064 */
/* WARNING: Inlined function: quat_from_xyz */
/* WARNING: Inlined function: FUN_00105be0 */
/* WARNING: Switch with 1 destination removed at 0x00106560 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 FUN_001018b4(undefined4 *param_1,double *param_2)

{
  double *pdVar1;
  int *piVar2;
  undefined8 uVar3;
  int iVar4;
  long lVar5;
  int iVar6;
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
  double dVar17;
  undefined4 **local_228;
  undefined8 *puStack_220;
  undefined8 local_218;
  code *local_210;
  code *pcStack_208;
  undefined4 *local_200;
  undefined1 *puStack_1f8;
  double local_1f0;
  undefined4 local_1e8;
  undefined8 local_1e0 [12];
  undefined1 auStack_180 [312];
  undefined8 local_48;
  
  lVar5 = tpidr_el0;
  local_48 = *(undefined8 *)(lVar5 + 0x28);
  puStack_220 = local_1e0;
  *param_1 = 1;
  *(undefined8 *)(param_1 + 2) = 0;
  *(undefined8 *)(param_1 + 4) = 0;
  *(undefined8 *)(param_1 + 6) = 0;
  dVar13 = *param_2;
  dVar15 = param_2[1];
  dVar11 = *(double *)param_2[2];
  *(undefined8 *)(param_1 + 8) = 0;
  *(undefined8 *)(param_1 + 10) = 0;
  *(double *)(param_1 + 0xc) = (dVar13 - dVar11) + dVar15;
  *(undefined8 *)(param_1 + 0xe) = 0;
  *(undefined8 *)(param_1 + 0x10) = 0;
  *(undefined8 *)(param_1 + 0x12) = 0;
  puStack_1f8 = auStack_180;
  *(undefined8 *)(param_1 + 0x14) = 0x3ff0000000000000;
  *(undefined8 *)(param_1 + 0x16) = 0;
  *(undefined8 *)(param_1 + 0x18) = 0;
  *(undefined8 *)(param_1 + 0x1a) = 0;
  dVar11 = DAT_00107fd0;
  local_1f0 = param_2[2];
  local_228 = &local_200;
  local_1e8 = *(undefined4 *)(param_2 + 3);
  local_218 = DAT_00107818;
  local_210 = FUN_00101a14;
  pcStack_208 = FUN_00101b28;
  local_1e0[0] = 0;
  local_1e0[3] = 0;
  local_1e0[4] = 0;
  local_1e0[7] = 0;
  local_1e0[8] = 0;
  local_1e0[0xb] = 0;
  for (lVar5 = 0; lVar5 != 0x60; lVar5 = lVar5 + 0x20) {
    *(undefined8 *)((long)puStack_220 + lVar5) = 0x800000008;
  }
  local_1e0[2] = _UNK_00107898;
  local_1e0[1] = _DAT_00107890;
  local_1e0[6] = _UNK_001078a8;
  local_1e0[5] = _DAT_001078a0;
  local_1e0[10] = _UNK_001078a8;
  local_1e0[9] = _DAT_001078a0;
  local_200 = param_1;
  for (iVar6 = 0; iVar6 < local_218._4_4_; iVar6 = iVar6 + 1) {
    for (lVar5 = 0; lVar5 < (int)local_218; lVar5 = lVar5 + 1) {
      piVar2 = (int *)(puStack_220 + lVar5 * 4);
      iVar4 = piVar2[1];
      if (iVar4 != 0) {
        pdVar7 = (double *)(piVar2 + 2);
        dVar15 = *pdVar7;
        pdVar8 = (double *)(piVar2 + 4);
        dVar13 = *pdVar8;
        pdVar1 = (double *)(piVar2 + 6);
        for (iVar9 = 0; iVar9 < *piVar2; iVar9 = iVar9 + 1) {
          dVar13 = (dVar13 - dVar15) / (double)iVar4;
          dVar17 = dVar15;
          dVar14 = dVar11;
          for (iVar10 = 0; iVar10 <= iVar4; iVar10 = iVar10 + 1) {
            *pdVar1 = dVar15 + dVar13 * (double)iVar10;
            (*pcStack_208)(&local_228);
            dVar12 = (double)(*local_210)(&local_228);
            if (dVar12 < dVar14) {
              dVar17 = *pdVar1;
              dVar14 = dVar12;
            }
            iVar4 = piVar2[1];
          }
          dVar15 = dVar17 - dVar13;
          dVar13 = dVar13 + dVar17;
        }
        dVar13 = (dVar15 + dVar13) * 0.5;
        *pdVar1 = dVar13;
        dVar15 = (*pdVar8 - *pdVar7) * 0.25;
        *pdVar7 = dVar13 - dVar15;
        *pdVar8 = dVar13 + dVar15;
      }
    }
  }
  FUN_001058ec(&local_228);
  if (param_1[4] == 3) {
    *(double *)((long)param_2[1] + 0x30) =
         *(double *)(*(long *)(param_1 + 2) + 0x18) + *(double *)((long)param_2[1] + 0x30);
    dVar15 = param_2[1];
    dVar17 = *(double *)(*(long *)(param_1 + 2) + 0x38);
    dVar14 = *(double *)(*(long *)(param_1 + 2) + 0x58);
    dVar12 = 1.0;
    dVar16 = 1.0 - (dVar17 * dVar17 + dVar14 * dVar14 + 0.0);
    dVar11 = 0.0;
    dVar13 = 0.0;
    if (0.0 < dVar16) {
      dVar12 = SQRT(dVar16);
      dVar11 = dVar17;
      dVar13 = dVar14;
    }
    uVar3 = 0;
    *(double *)((long)dVar15 + 0x50) = dVar12;
    *(double *)((long)dVar15 + 0x58) = dVar11;
    *(double *)((long)dVar15 + 0x60) = dVar13;
    *(undefined8 *)((long)dVar15 + 0x68) = 0;
  }
  else {
    uVar3 = 0xffffffff;
  }
  return uVar3;
}

