/* Artifact: libexcavator.so | Address: 00106a28 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

uint FUN_00106a28(long param_1,int param_2,uint param_3)

{
  double *pdVar1;
  double dVar2;
  long lVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  ulong uVar9;
  long lVar10;
  double dVar11;
  double dVar12;
  
  dVar2 = DAT_00107838;
  lVar3 = 0;
  lVar5 = (long)(int)param_3;
  uVar6 = (ulong)param_3;
  for (iVar4 = 0; iVar4 < param_2 && lVar3 < lVar5; iVar4 = iVar4 + 1) {
    lVar7 = *(long *)(param_1 + (long)iVar4 * 8);
    dVar11 = *(double *)(lVar7 + lVar3 * 8);
    if (dVar2 <= ABS(dVar11)) {
      pdVar1 = (double *)(lVar7 + lVar3 * 8);
      for (uVar9 = uVar6; uVar9 != 0; uVar9 = uVar9 - 1) {
        *pdVar1 = (1.0 / dVar11) * *pdVar1;
        pdVar1 = pdVar1 + 1;
      }
      for (lVar8 = 0; lVar8 < iVar4; lVar8 = lVar8 + 1) {
        lVar10 = *(long *)(param_1 + lVar8 * 8);
        dVar11 = *(double *)(lVar10 + lVar3 * 8);
        if (dVar2 <= ABS(dVar11)) {
          dVar12 = *(double *)(lVar7 + lVar3 * 8);
          lVar10 = lVar10 + lVar3 * 8;
          for (uVar9 = 0; uVar6 != uVar9; uVar9 = uVar9 + 1) {
            *(double *)(lVar10 + uVar9 * 8) =
                 *(double *)(lVar10 + uVar9 * 8) -
                 (dVar11 / dVar12) * *(double *)(lVar7 + lVar3 * 8 + uVar9 * 8);
          }
        }
      }
      param_3 = param_3 - 1;
    }
    else {
      iVar4 = iVar4 + -1;
    }
    lVar3 = lVar3 + 1;
    uVar6 = uVar6 - 1;
  }
  return param_3;
}

