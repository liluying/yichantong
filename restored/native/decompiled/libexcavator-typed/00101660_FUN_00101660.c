/* Artifact: libexcavator.so | Address: 00101660 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001062c4 */
/* WARNING: Inlined function: FUN_00105f78 */
/* WARNING: Inlined function: quat_to_euler */
/* WARNING: Inlined function: FUN_00105b3c */

undefined8 FUN_00101660(undefined4 *param_1,Quat *param_2)

{
  bool bVar1;
  bool bVar2;
  int iVar3;
  undefined8 uVar4;
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  
  memset(param_1,0,0x138);
  dVar5 = param_2[1].w;
  if ((((0.0 <= dVar5) && (dVar9 = param_2[1].x, 0.0 <= dVar9)) &&
      (dVar14 = param_2[1].y, DAT_00107800 <= dVar14)) &&
     (dVar13 = param_2[1].z, DAT_00107800 <= dVar13)) {
    bVar1 = true;
    if ((dVar14 <= dVar5 + dVar9) && (bVar1 = false, !NAN(dVar9 + dVar14) && !NAN(dVar5))) {
      bVar1 = dVar9 + dVar14 < dVar5;
    }
    bVar2 = true;
    if ((!bVar1) && (bVar2 = false, !NAN(dVar5 + dVar14) && !NAN(dVar9))) {
      bVar2 = dVar5 + dVar14 < dVar9;
    }
    if (!bVar2) {
      dVar5 = ((dVar9 * dVar9 + dVar14 * dVar14) - dVar5 * dVar5) / (dVar14 + dVar14);
      if (dVar5 <= dVar9) {
                    /* WARNING: Return address prevents inlining here */
        iVar3 = quat_is_valid(*param_2);
        if (iVar3 == 0) {
          return 0xfffffffe;
        }
        dVar6 = param_2->w;
        dVar10 = param_2->x;
        dVar11 = param_2->y;
        dVar12 = param_2->z;
        dVar15 = SQRT(dVar9 * dVar9 - dVar5 * dVar5);
        dVar7 = atan2(dVar6 * dVar10 + dVar11 * dVar12,(0.5 - dVar10 * dVar10) - dVar11 * dVar11);
        dVar9 = DAT_00107820;
        dVar7 = dVar7 * DAT_00107820;
        dVar8 = asin(dVar11 * (dVar6 + dVar6) - dVar12 * (dVar10 + dVar10));
        dVar8 = dVar8 * dVar9;
        dVar6 = atan2(dVar6 * dVar12 + dVar10 * dVar11,(0.5 - dVar11 * dVar11) - dVar12 * dVar12);
        *(double *)(param_1 + 8) = dVar15;
        *(double *)(param_1 + 10) = dVar5 - dVar14;
        *(double *)(param_1 + 0xc) = dVar13;
        *(double *)(param_1 + 0xe) = dVar15;
        *(double *)(param_1 + 0x10) = dVar5;
        *(double *)(param_1 + 0x12) = dVar13;
        *(double *)(param_1 + 2) = dVar7;
        *(double *)(param_1 + 4) = dVar8;
        *param_1 = 1;
        *(undefined8 *)(param_1 + 6) = 0;
        uVar4 = FUN_00101778(dVar7,dVar8,dVar6 * dVar9,param_1);
        if ((int)uVar4 != 0) {
          memset(param_1,0,0x138);
          return 0xfffffffd;
        }
        return uVar4;
      }
    }
  }
  return 0xffffffff;
}

