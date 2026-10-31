/* Artifact: libexcavator.so | Address: 001063e8 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

void FUN_001063e8(long param_1)

{
  double *pdVar1;
  int *piVar2;
  double dVar3;
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
  
  dVar3 = DAT_00107fd0;
  for (iVar5 = 0; iVar5 < *(int *)(param_1 + 0x14); iVar5 = iVar5 + 1) {
    for (lVar6 = 0; lVar6 < *(int *)(param_1 + 0x10); lVar6 = lVar6 + 1) {
      piVar2 = (int *)(*(long *)(param_1 + 8) + lVar6 * 0x20);
      iVar4 = piVar2[1];
      if (iVar4 != 0) {
        pdVar7 = (double *)(piVar2 + 2);
        dVar13 = *pdVar7;
        pdVar8 = (double *)(piVar2 + 4);
        dVar11 = *pdVar8;
        pdVar1 = (double *)(piVar2 + 6);
        for (iVar9 = 0; iVar9 < *piVar2; iVar9 = iVar9 + 1) {
          dVar11 = (dVar11 - dVar13) / (double)iVar4;
          dVar14 = dVar13;
          dVar15 = dVar3;
          for (iVar10 = 0; iVar10 <= iVar4; iVar10 = iVar10 + 1) {
            *pdVar1 = dVar13 + dVar11 * (double)iVar10;
            (**(code **)(param_1 + 0x20))(param_1);
            dVar12 = (double)(**(code **)(param_1 + 0x18))(param_1);
            if (dVar12 < dVar15) {
              dVar14 = *pdVar1;
              dVar15 = dVar12;
            }
            iVar4 = piVar2[1];
          }
          dVar13 = dVar14 - dVar11;
          dVar11 = dVar11 + dVar14;
        }
        dVar11 = (dVar13 + dVar11) * 0.5;
        *pdVar1 = dVar11;
        dVar13 = (*pdVar8 - *pdVar7) * 0.25;
        *pdVar7 = dVar11 - dVar13;
        *pdVar8 = dVar11 + dVar13;
      }
    }
  }
                    /* WARNING: Could not recover jumptable at 0x00106560. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(param_1 + 0x20))(param_1);
  return;
}

