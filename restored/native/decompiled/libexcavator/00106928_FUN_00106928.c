/* Artifact: libexcavator.so | Address: 00106928 | Ghidra static pseudocode; types require review. */

int FUN_00106928(long param_1,int param_2,uint param_3)

{
  double *pdVar1;
  double *pdVar2;
  double dVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  ulong uVar7;
  long lVar8;
  int iVar9;
  ulong uVar10;
  long lVar11;
  long lVar12;
  double dVar13;
  double dVar14;
  
  dVar3 = DAT_00107838;
  iVar4 = 0;
  iVar9 = 0;
  uVar10 = (ulong)param_3;
  for (lVar8 = 0; lVar8 < (int)param_3 && iVar9 < param_2 + -1; lVar8 = lVar8 + 1) {
    lVar12 = *(long *)(param_1 + (long)iVar9 * 8);
    lVar11 = (long)iVar9 + 1;
    for (lVar5 = lVar11; dVar13 = ABS(*(double *)(lVar12 + lVar8 * 8)), lVar5 < param_2;
        lVar5 = lVar5 + 1) {
      lVar6 = *(long *)(param_1 + lVar5 * 8);
      if (dVar13 < ABS(*(double *)(lVar6 + lVar8 * 8))) {
        *(long *)(param_1 + lVar5 * 8) = lVar12;
        iVar4 = iVar4 + 1;
        *(long *)(param_1 + (long)iVar9 * 8) = lVar6;
        lVar12 = lVar6;
      }
    }
    if (dVar3 <= dVar13) {
      for (; lVar11 < param_2; lVar11 = lVar11 + 1) {
        lVar5 = *(long *)(param_1 + lVar11 * 8);
        dVar13 = *(double *)(lVar5 + lVar8 * 8);
        if (dVar3 <= ABS(dVar13)) {
          dVar14 = *(double *)(lVar12 + lVar8 * 8);
          pdVar1 = (double *)(lVar12 + lVar8 * 8);
          pdVar2 = (double *)(lVar5 + lVar8 * 8);
          for (uVar7 = uVar10; uVar7 != 0; uVar7 = uVar7 - 1) {
            *pdVar2 = *pdVar2 - (dVar13 / dVar14) * *pdVar1;
            pdVar1 = pdVar1 + 1;
            pdVar2 = pdVar2 + 1;
          }
        }
      }
    }
    else {
      iVar9 = iVar9 + -1;
    }
    iVar9 = iVar9 + 1;
    uVar10 = uVar10 - 1;
  }
  return iVar4;
}

