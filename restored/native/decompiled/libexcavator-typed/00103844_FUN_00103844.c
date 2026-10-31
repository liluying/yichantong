/* Artifact: libexcavator.so | Address: 00103844 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001062c4 */
/* WARNING: Inlined function: FUN_00105bb8 */
/* WARNING: Inlined function: FUN_00105bcc */
/* WARNING: Inlined function: FUN_001059d8 */
/* WARNING: Inlined function: FUN_00106264 */
/* WARNING: Inlined function: FUN_00106278 */
/* WARNING: Inlined function: FUN_00106250 */
/* WARNING: Inlined function: FUN_00106d7c */
/* WARNING: Inlined function: FUN_00105f78 */
/* WARNING: Inlined function: FUN_00105a3c */
/* WARNING: Inlined function: FUN_001060b0 */
/* WARNING: Inlined function: FUN_00105ad4 */
/* WARNING: Inlined function: FUN_0010599c */
/* WARNING: Inlined function: FUN_00105d3c */
/* WARNING: Inlined function: FUN_00105c1c */
/* WARNING: Inlined function: FUN_00106210 */
/* WARNING: Inlined function: point_subtract */
/* WARNING: Inlined function: FUN_00105d5c */
/* WARNING: Inlined function: FUN_00105a48 */
/* WARNING: Inlined function: FUN_00106064 */
/* WARNING: Inlined function: FUN_00106dcc */
/* WARNING: Inlined function: FUN_00105f20 */
/* WARNING: Inlined function: FUN_001061f0 */
/* WARNING: Inlined function: point_scale */
/* WARNING: Inlined function: FUN_00105ce8 */
/* WARNING: Inlined function: FUN_00105eec */
/* WARNING: Inlined function: FUN_00105d84 */
/* WARNING: Inlined function: FUN_001061c0 */
/* WARNING: Inlined function: FUN_00105f48 */
/* WARNING: Inlined function: FUN_00105d68 */
/* WARNING: Inlined function: FUN_00105c94 */
/* WARNING: Inlined function: FUN_00105e08 */
/* WARNING: Inlined function: point_add */
/* WARNING: Inlined function: quat_6b8 */
/* WARNING: Inlined function: FUN_0010606c */
/* WARNING: Inlined function: FUN_001061e8 */
/* WARNING: Inlined function: FUN_00105ccc */
/* WARNING: Inlined function: FUN_00105b94 */
/* WARNING: Inlined function: quat_multiply */
/* WARNING: Inlined function: quat_conjugate */
/* WARNING: Inlined function: FUN_0010616c */
/* WARNING: Inlined function: FUN_00105a78 */
/* WARNING: Inlined function: FUN_001061dc */
/* WARNING: Inlined function: FUN_001070f4 */
/* WARNING: Inlined function: FUN_00106230 */
/* WARNING: Inlined function: FUN_001060d8 */

undefined8 FUN_00103844(undefined4 *param_1,Quat *param_2)

{
  undefined1 auVar1 [24];
  bool bVar2;
  char cVar3;
  bool bVar4;
  bool bVar5;
  char cVar6;
  int iVar7;
  undefined8 uVar8;
  double *__src;
  float fVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  double dVar13;
  double dVar14;
  double dVar15;
  float fVar16;
  double dVar17;
  double dVar18;
  double dVar19;
  float fVar20;
  undefined8 uVar21;
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
  Quat QVar32;
  Quat QVar33;
  Point a;
  Point b;
  Point b_00;
  
  memset(param_1,0,0x138);
  dVar10 = param_2[1].w;
  bVar2 = false;
  bVar4 = false;
  bVar5 = false;
  if (DAT_00107800 <= dVar10) {
    bVar2 = false;
    bVar4 = false;
    bVar5 = true;
    if (!NAN(dVar10)) {
      bVar2 = dVar10 < 100.0;
      bVar4 = dVar10 == 100.0;
      bVar5 = false;
    }
  }
  if (bVar4 || bVar2 != bVar5) {
    dVar10 = param_2[1].x;
    cVar3 = false;
    bVar2 = false;
    cVar6 = false;
    if (0.0 <= dVar10) {
      cVar3 = false;
      bVar2 = false;
      cVar6 = true;
      if (!NAN(dVar10)) {
        cVar3 = dVar10 < 100.0;
        bVar2 = dVar10 == 100.0;
        cVar6 = false;
      }
    }
    if (bVar2 || cVar3 != cVar6) {
      dVar10 = DAT_00107800;
                    /* WARNING: Could not inline here */
      FUN_00105bcc(param_2[1].y);
      if (bVar2 || cVar3 != cVar6) {
        dVar11 = param_2[1].z;
        cVar3 = false;
        bVar2 = false;
        cVar6 = false;
        if (-100.0 <= dVar11) {
          cVar3 = false;
          bVar2 = false;
          cVar6 = true;
          if (!NAN(dVar11)) {
            cVar3 = dVar11 < 100.0;
            bVar2 = dVar11 == 100.0;
            cVar6 = false;
          }
        }
        if (bVar2 || cVar3 != cVar6) {
                    /* WARNING: Could not inline here */
          FUN_001059d8(param_2[2].w);
          if (bVar2 || cVar3 != cVar6) {
                    /* WARNING: Could not inline here */
            FUN_00105bb8(param_2[2].x);
            if (bVar2 || cVar3 != cVar6) {
              dVar11 = param_2[2].y;
              bVar2 = false;
              bVar4 = false;
              bVar5 = false;
              if (dVar10 <= dVar11) {
                bVar2 = false;
                bVar4 = false;
                bVar5 = true;
                if (!NAN(dVar11)) {
                  bVar2 = dVar11 < 100.0;
                  bVar4 = dVar11 == 100.0;
                  bVar5 = false;
                }
              }
              if (bVar4 || bVar2 != bVar5) {
                dVar17 = param_2[2].z;
                bVar2 = false;
                bVar4 = false;
                bVar5 = false;
                if (dVar10 <= dVar17) {
                  bVar2 = false;
                  bVar4 = false;
                  bVar5 = true;
                  if (!NAN(dVar17)) {
                    bVar2 = dVar17 < 100.0;
                    bVar4 = dVar17 == 100.0;
                    bVar5 = false;
                  }
                }
                if (bVar4 || bVar2 != bVar5) {
                  dVar12 = param_2[3].w;
                  bVar2 = false;
                  bVar4 = false;
                  bVar5 = false;
                  if (dVar10 <= dVar12) {
                    bVar2 = false;
                    bVar4 = false;
                    bVar5 = true;
                    if (!NAN(dVar12)) {
                      bVar2 = dVar12 < 100.0;
                      bVar4 = dVar12 == 100.0;
                      bVar5 = false;
                    }
                  }
                  if (bVar4 || bVar2 != bVar5) {
                    bVar2 = true;
                    if ((dVar11 <= dVar12 + dVar17) &&
                       (bVar2 = false, !NAN(dVar17 + dVar11) && !NAN(dVar12))) {
                      bVar2 = dVar17 + dVar11 < dVar12;
                    }
                    if (bVar2 || dVar12 + dVar11 < dVar17) {
                      uVar8 = 0xfffffff4;
                    }
                    else {
                      __src = &param_2[3].x;
                    /* WARNING: Could not inline here */
                      iVar7 = FUN_00106d7c(*__src,param_2[2].x,param_2[2].y);
                      if (iVar7 == 0) {
                        uVar8 = 0xfffffff3;
                      }
                      else {
                        iVar7 = FUN_00101fec(__src);
                        if (iVar7 == 0) {
                    /* WARNING: Return address prevents inlining here */
                          iVar7 = quat_is_valid(*param_2);
                          if (iVar7 == 0) {
                            uVar8 = 0xfffffff1;
                          }
                          else {
                            dVar11 = param_2[1].w;
                            a.x = param_2[1].z;
                            dVar10 = a.x - param_2[2].w;
                            dVar10 = param_2[2].x * param_2[2].x - dVar10 * dVar10;
                            if (0.0 <= dVar10) {
                              a.z = param_2[1].w;
                              dVar29 = a.z - SQRT(dVar10);
                              a.y = 0.0;
                              b.z = 1.0;
                              b.x = 0.0;
                              b.y = 0.0;
                    /* WARNING: Return address prevents inlining here */
                    /* WARNING: Could not inline here */
                              QVar32 = quat_from_vectors(a,b);
                              dVar14 = QVar32.z;
                              dVar24 = QVar32.y;
                              dVar12 = QVar32.x;
                              dVar10 = QVar32.w;
                              dVar28 = dVar12 + dVar12;
                              dVar30 = dVar24 + dVar24;
                              dVar31 = dVar14 + dVar14;
                              dVar17 = dVar29 * (dVar14 * dVar28 + dVar10 * dVar30) +
                                       (dVar12 * dVar30 - dVar10 * dVar31) * 0.0 +
                                       param_2[2].w * ((1.0 - dVar24 * dVar30) - dVar14 * dVar31);
                              dVar28 = param_2[2].w * (dVar14 * dVar28 - dVar10 * dVar30) +
                                       (dVar24 * dVar31 + dVar10 * dVar28) * 0.0 +
                                       dVar29 * ((1.0 - dVar12 * dVar28) - dVar24 * dVar30);
                              dVar29 = 1.0 / param_2[2].x;
                              dVar12 = (dVar17 - 0.0) * dVar29;
                              dVar29 = (dVar28 - dVar11) * dVar29;
                              dVar24 = param_2[2].x;
                              dVar10 = param_2[3].x;
                              dVar24 = ((dVar10 * dVar10 + dVar24 * dVar24) -
                                       param_2[2].y * param_2[2].y) / ((dVar10 + dVar10) * dVar24);
                              dVar14 = 1.0 - dVar24 * dVar24;
                              dVar10 = 0.0;
                              if (0.0 <= dVar14) {
                                dVar10 = SQRT(dVar14);
                              }
                              dVar24 = dVar24 * param_2[3].x;
                              dVar10 = dVar10 * param_2[3].x;
                              dVar14 = dVar12 * dVar24 + -dVar29 * dVar10 + 0.0;
                              dVar30 = dVar11 + dVar29 * dVar24 + dVar12 * dVar10;
                              dVar31 = 1.0 / param_2[2].y;
                              dVar12 = (dVar17 - dVar14) * dVar31;
                              dVar31 = (dVar28 - dVar30) * dVar31;
                              dVar25 = param_2[2].y;
                              dVar10 = param_2[2].z;
                              dVar29 = param_2[3].w;
                    /* WARNING: Could not inline here */
                              dVar24 = (double)FUN_00106dcc();
                              dVar25 = (((dVar29 * dVar29 + dVar25 * dVar25) - dVar10 * dVar10) /
                                       ((dVar29 + dVar29) * dVar25)) * param_2[3].w;
                              dVar24 = dVar24 * param_2[3].w;
                              dVar11 = atan2(dVar17 - 0.0,-(dVar28 - dVar11));
                              dVar10 = DAT_00107820;
                              dVar29 = param_2->y;
                              dVar26 = param_2->z;
                              dVar11 = dVar11 * DAT_00107820;
                              fVar16 = (float)(param_2->x * dVar29 + param_2->w * dVar26);
                              fVar9 = (float)((0.5 - dVar29 * dVar29) - dVar26 * dVar26);
                              fVar20 = SQRT(fVar16 * fVar16 + fVar9 * fVar9);
                              if (fVar20 <= 9.536743e-07) {
                                dVar26 = 0.0;
                                dVar29 = 1.0;
                              }
                              else {
                                fVar9 = fVar9 / fVar20;
                                fVar20 = SQRT((1.0 - fVar9) * 0.5);
                                dVar29 = (double)SQRT((fVar9 + 1.0) * 0.5);
                                fVar9 = -fVar20;
                                if (0.0 <= fVar16) {
                                  fVar9 = fVar20;
                                }
                                dVar26 = (double)fVar9;
                              }
                              uVar8 = 0;
                              uVar21 = 0x3ff0000000000000;
                              dVar13 = dVar26;
                    /* WARNING: Could not inline here */
                              QVar32.w = FUN_0010599c(0);
                              auVar1._8_8_ = param_2[1].w;
                              auVar1._0_8_ = param_2[1].y - param_2[1].x;
                              auVar1._16_8_ = 0;
                              b_00.z = 1.0;
                              b_00.x = 0.0;
                              b_00.y = 0.0;
                    /* WARNING: Could not inline here */
                              QVar33 = quat_from_vectors((Point)(auVar1 << 0x40),b_00);
                              QVar32.x = (double)uVar8;
                              QVar32.z = dVar13;
                              QVar32.y = (double)uVar21;
                    /* WARNING: Return address prevents inlining here */
                    /* WARNING: Could not inline here */
                              QVar32 = quat_multiply(QVar32,QVar33);
                              dVar27 = QVar32.z;
                              dVar22 = QVar32.y;
                              dVar18 = QVar32.x;
                              dVar13 = QVar32.w;
                              dVar15 = ((dVar29 * dVar13 - dVar18 * 0.0) - dVar22 * 0.0) -
                                       dVar26 * dVar27;
                              dVar23 = (dVar26 * dVar18 + dVar13 * 0.0 + dVar29 * dVar22) -
                                       dVar27 * 0.0;
                              dVar19 = (dVar27 * 0.0 + dVar13 * 0.0 + dVar29 * dVar18) -
                                       dVar26 * dVar22;
                              dVar29 = (dVar22 * 0.0 + dVar26 * dVar13 + dVar29 * dVar27) -
                                       dVar18 * 0.0;
                              if (dVar15 < 0.0) {
                                dVar15 = -dVar15;
                                dVar19 = -dVar19;
                                dVar23 = -dVar23;
                                dVar29 = -dVar29;
                              }
                              QVar33.x = -dVar19;
                              QVar33.y = -dVar23;
                              QVar33.z = -dVar29;
                              QVar33.w = dVar15;
                    /* WARNING: Could not inline here */
                              QVar32 = quat_multiply(QVar33,*param_2);
                              dVar12 = atan2(-((dVar30 + dVar31 * dVar25 + dVar12 * dVar24) - dVar28
                                              ),(dVar14 + dVar12 * dVar25 + -dVar31 * dVar24) -
                                                dVar17);
                              *param_1 = 3;
                              *(double *)(param_1 + 2) = QVar32.x;
                              *(double *)(param_1 + 4) = QVar32.y;
                              *(double *)(param_1 + 6) = QVar32.z;
                              *(double *)(param_1 + 8) = param_2[1].w;
                              *(double *)(param_1 + 10) = param_2[1].x;
                              *(double *)(param_1 + 0xc) = param_2[3].w;
                              *(double *)(param_1 + 0xe) = param_2[2].z;
                              dVar17 = param_2[2].x;
                              *(double *)(param_1 + 0x12) = dVar11;
                              *(double *)(param_1 + 0x14) = dVar12 * dVar10;
                              *(double *)(param_1 + 0x10) = dVar17;
                              memcpy(param_1 + 0x16,__src,0x68);
                              FUN_00101778(param_1);
                              uVar8 = 0;
                            }
                            else {
                              uVar8 = 0xffffff9c;
                            }
                          }
                        }
                        else {
                          uVar8 = 0xfffffff2;
                        }
                      }
                    }
                  }
                  else {
                    uVar8 = 0xfffffff7;
                  }
                }
                else {
                  uVar8 = 0xfffffff8;
                }
              }
              else {
                uVar8 = 0xfffffff9;
              }
            }
            else {
              uVar8 = 0xfffffffa;
            }
          }
          else {
            uVar8 = 0xfffffffb;
          }
        }
        else {
          uVar8 = 0xfffffffc;
        }
      }
      else {
        uVar8 = 0xfffffffd;
      }
    }
    else {
      uVar8 = 0xfffffffe;
    }
  }
  else {
    uVar8 = 0xffffffff;
  }
  return uVar8;
}

