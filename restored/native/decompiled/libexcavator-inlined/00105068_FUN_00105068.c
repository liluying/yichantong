/* Artifact: libexcavator.so | Address: 00105068 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106180 */
/* WARNING: Inlined function: FUN_00105e80 */
/* WARNING: Inlined function: FUN_001061c8 */
/* WARNING: Inlined function: FUN_001061a0 */
/* WARNING: Inlined function: FUN_00105f5c */
/* WARNING: Inlined function: FUN_00105c5c */

long FUN_00105068(int *param_1,byte *param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  double dVar4;
  double dVar5;
  double dVar6;
  byte *pbVar7;
  ushort uVar8;
  size_t __n;
  long lVar9;
  double *pdVar10;
  long lVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  undefined1 local_a0;
  undefined2 uStack_9f;
  undefined1 uStack_9d;
  float fStack_9c;
  float fStack_98;
  float afStack_94 [9];
  undefined1 auStack_70 [8];
  float afStack_68 [12];
  long local_38;
  
  lVar3 = tpidr_el0;
  local_38 = *(long *)(lVar3 + 0x28);
  iVar2 = *param_1;
  if (iVar2 == 3) {
    afStack_68[4] = 0.0;
    afStack_68[5] = 0.0;
    afStack_68[2] = 0.0;
    afStack_68[3] = 0.0;
    afStack_68[8] = 0.0;
    afStack_68[9] = 0.0;
    afStack_68[6] = 0.0;
    afStack_68[7] = 0.0;
    afStack_68[0] = 0.0;
    afStack_68[1] = 0.0;
    auStack_70._0_4_ = 0.0;
    auStack_70._4_4_ = 0;
    if (param_3 < 0x60) {
LAB_00105138:
      afStack_68[8] = 0.0;
      afStack_68[9] = 0.0;
      afStack_68[6] = 0.0;
      afStack_68[7] = 0.0;
      afStack_68[4] = 0.0;
      afStack_68[5] = 0.0;
      afStack_68[2] = 0.0;
      afStack_68[3] = 0.0;
      afStack_68[0] = 0.0;
      afStack_68[1] = 0.0;
      auStack_70._4_4_ = 0;
      auStack_70._0_4_ = 0.0;
      afStack_94[8] = 0.0;
      afStack_94[7] = 0.0;
      afStack_94[6] = 0.0;
      afStack_94[5] = 0.0;
      afStack_94[4] = 0.0;
      afStack_94[3] = 0.0;
      afStack_94[2] = 0.0;
      afStack_94[1] = 0.0;
      afStack_94[0] = 0.0;
      fStack_98 = 0.0;
      fStack_9c = 0.0;
      uStack_9d = 0;
      uStack_9f = 0;
      local_a0 = 0;
      lVar11 = 0xfffffffd;
      goto LAB_00105260;
    }
    local_a0 = 3;
    dVar12 = *(double *)(param_1 + 4);
    dVar4 = *(double *)(param_1 + 2);
    dVar18 = *(double *)(param_1 + 8);
    dVar15 = *(double *)(param_1 + 6);
    dVar13 = *(double *)(param_1 + 0xc);
    dVar5 = *(double *)(param_1 + 10);
    dVar19 = *(double *)(param_1 + 0x10);
    dVar16 = *(double *)(param_1 + 0xe);
    dVar6 = *(double *)(param_1 + 0x12);
    dVar14 = *(double *)(param_1 + 0x14);
    dVar17 = *(double *)(param_1 + 0x16);
    pdVar10 = (double *)(param_1 + 0x1c);
    for (lVar11 = 0; lVar11 != 0x30; lVar11 = lVar11 + 0xc) {
      *(ulong *)(auStack_70 + lVar11) = CONCAT44((float)pdVar10[-1],(float)pdVar10[-2]);
      *(float *)((long)afStack_68 + lVar11) = (float)*pdVar10;
      pdVar10 = pdVar10 + 3;
    }
    __n = 0x60;
    lVar11 = 0x60;
LAB_001051b8:
    afStack_94[8] = (float)dVar17;
    afStack_94[7] = (float)dVar14;
    afStack_94[6] = (float)dVar6;
    afStack_94[5] = (float)dVar19;
    afStack_94[4] = (float)dVar16;
    afStack_94[3] = (float)dVar13;
    afStack_94[2] = (float)dVar5;
    afStack_94[1] = (float)dVar18;
    afStack_94[0] = (float)dVar15;
    fStack_98 = (float)dVar12;
    fStack_9c = (float)dVar4;
    uStack_9d = 1;
    uStack_9f = 0;
    memcpy(param_2,&local_a0,__n);
  }
  else {
    if (iVar2 == 2) {
      afStack_68[10] = 0.0;
      afStack_68[4] = 0.0;
      afStack_68[5] = 0.0;
      afStack_68[2] = 0.0;
      afStack_68[3] = 0.0;
      afStack_68[8] = 0.0;
      afStack_68[9] = 0.0;
      afStack_68[6] = 0.0;
      afStack_68[7] = 0.0;
      afStack_68[0] = 0.0;
      afStack_68[1] = 0.0;
      auStack_70._4_4_ = 0;
      if (param_3 < 100) goto LAB_00105138;
      local_a0 = 2;
      dVar12 = *(double *)(param_1 + 4);
      dVar4 = *(double *)(param_1 + 2);
      dVar18 = *(double *)(param_1 + 8);
      dVar15 = *(double *)(param_1 + 6);
      dVar13 = *(double *)(param_1 + 0xc);
      dVar5 = *(double *)(param_1 + 10);
      dVar19 = *(double *)(param_1 + 0x10);
      dVar16 = *(double *)(param_1 + 0xe);
      dVar14 = *(double *)(param_1 + 0x14);
      dVar6 = *(double *)(param_1 + 0x12);
      dVar17 = *(double *)(param_1 + 0x16);
      auStack_70._0_4_ = (undefined4)*(double *)(param_1 + 0x18);
      pdVar10 = (double *)(param_1 + 0x1e);
      for (lVar11 = 0; lVar11 != 0x30; lVar11 = lVar11 + 0xc) {
        *(ulong *)(auStack_70 + lVar11 + 4) = CONCAT44((float)pdVar10[-1],(float)pdVar10[-2]);
        *(float *)((long)afStack_68 + lVar11 + 4) = (float)*pdVar10;
        pdVar10 = pdVar10 + 3;
      }
      __n = 100;
      lVar11 = 100;
      goto LAB_001051b8;
    }
    if (iVar2 != 1) {
      lVar11 = 0xffffffff;
      goto LAB_00105260;
    }
    afStack_94[5] = 0.0;
    afStack_94[6] = 0.0;
    fStack_98 = 0.0;
    afStack_94[0] = 0.0;
    local_a0 = 0;
    uStack_9f = 0;
    uStack_9d = 0;
    fStack_9c = 0.0;
    afStack_94[3] = 0.0;
    afStack_94[4] = 0.0;
    afStack_94[1] = 0.0;
    afStack_94[2] = 0.0;
    if (param_3 < 0x28) {
      lVar11 = 0xfffffffe;
      goto LAB_00105260;
    }
    local_a0 = 1;
    uStack_9d = 1;
    pdVar10 = (double *)(param_1 + 0xc);
    for (lVar11 = 0; lVar11 != 0x18; lVar11 = lVar11 + 0xc) {
      *(ulong *)((long)&fStack_9c + lVar11) = CONCAT44((float)pdVar10[-1],(float)pdVar10[-2]);
      *(float *)((long)afStack_94 + lVar11) = (float)*pdVar10;
      pdVar10 = pdVar10 + 3;
    }
    lVar11 = 0x28;
    afStack_94[4] = (float)*(double *)(param_1 + 2);
    afStack_94[5] = (float)*(double *)(param_1 + 4);
    afStack_94[6] = (float)*(double *)(param_1 + 6);
    *(ulong *)(param_2 + 8) = CONCAT44(afStack_94[0],fStack_98);
    *(ulong *)param_2 = CONCAT44(fStack_9c,0x1000001);
    *(ulong *)(param_2 + 0x18) = CONCAT44(afStack_94[4],afStack_94[3]);
    *(ulong *)(param_2 + 0x10) = CONCAT44(afStack_94[2],afStack_94[1]);
    *(ulong *)(param_2 + 0x20) = CONCAT44(afStack_94[6],afStack_94[5]);
  }
  uVar8 = FUN_001077b0(*param_2,param_2 + 3,(int)lVar11 + -3);
  *(ushort *)(param_2 + 1) = uVar8;
  uVar1 = (uint)*param_2 + (uint)uVar8;
  pbVar7 = param_2 + 3;
  for (lVar9 = lVar11 + -3; lVar9 != 0; lVar9 = lVar9 + -1) {
    uVar1 = (uVar1 * 0x1c55) % 0x6a93;
    *pbVar7 = *pbVar7 ^ (byte)uVar1;
    pbVar7 = pbVar7 + 1;
  }
LAB_00105260:
  if (*(long *)(lVar3 + 0x28) == local_38) {
    return lVar11;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

