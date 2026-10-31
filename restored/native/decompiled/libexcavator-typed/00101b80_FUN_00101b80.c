/* Artifact: libexcavator.so | Address: 00101b80 | Ghidra static pseudocode; types require review. */

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
/* WARNING: Inlined function: point_make */
/* WARNING: Inlined function: FUN_001061e8 */
/* WARNING: Inlined function: FUN_00105ccc */
/* WARNING: Inlined function: FUN_00105b94 */
/* WARNING: Inlined function: quat_multiply */
/* WARNING: Inlined function: FUN_00105a78 */
/* WARNING: Inlined function: quat_conjugate */
/* WARNING: Inlined function: FUN_0010616c */
/* WARNING: Inlined function: FUN_00105df4 */
/* WARNING: Inlined function: FUN_001070f4 */
/* WARNING: Inlined function: FUN_00106230 */
/* WARNING: Inlined function: FUN_001060d8 */

undefined8 FUN_00101b80(undefined4 *param_1,Quat *param_2)

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
  float fVar15;
  double dVar16;
  double dVar17;
  double dVar18;
  float fVar19;
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
  Quat QVar31;
  Quat QVar32;
  Point a;
  Point a_00;
  Point b;
  
  memset(param_1,0,0x138);
  dVar10 = param_2[2].w;
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
    dVar10 = param_2[2].x;
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
      FUN_00105bcc(param_2[2].y);
      if (bVar2 || cVar3 != cVar6) {
        dVar11 = param_2[2].z;
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
          FUN_001059d8(param_2[3].w);
          if (bVar2 || cVar3 != cVar6) {
                    /* WARNING: Could not inline here */
            FUN_00105bb8(param_2[3].x);
            if (bVar2 || cVar3 != cVar6) {
              dVar11 = param_2[3].y;
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
                dVar16 = param_2[3].z;
                bVar2 = false;
                bVar4 = false;
                bVar5 = false;
                if (dVar10 <= dVar16) {
                  bVar2 = false;
                  bVar4 = false;
                  bVar5 = true;
                  if (!NAN(dVar16)) {
                    bVar2 = dVar16 < 100.0;
                    bVar4 = dVar16 == 100.0;
                    bVar5 = false;
                  }
                }
                if (bVar4 || bVar2 != bVar5) {
                  dVar12 = param_2[4].w;
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
                    if ((dVar11 <= dVar12 + dVar16) &&
                       (bVar2 = false, !NAN(dVar16 + dVar11) && !NAN(dVar12))) {
                      bVar2 = dVar16 + dVar11 < dVar12;
                    }
                    if (bVar2 || dVar12 + dVar11 < dVar16) {
                      uVar8 = 0xfffffff4;
                    }
                    else {
                      __src = &param_2[4].x;
                    /* WARNING: Could not inline here */
                      iVar7 = FUN_00106d7c(*__src,param_2[3].x,param_2[3].y);
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
                            dVar11 = param_2[2].w;
                            a.x = param_2[2].z;
                            dVar10 = a.x - param_2[3].w;
                            dVar10 = param_2[3].x * param_2[3].x - dVar10 * dVar10;
                            if (0.0 <= dVar10) {
                              a.z = param_2[2].w;
                              dVar28 = a.z - SQRT(dVar10);
                              a.y = 0.0;
                              b.z = 1.0;
                              b.x = 0.0;
                              b.y = 0.0;
                    /* WARNING: Return address prevents inlining here */
                    /* WARNING: Could not inline here */
                              QVar31 = quat_from_vectors(a,b);
                              dVar14 = QVar31.z;
                              dVar22 = QVar31.y;
                              dVar12 = QVar31.x;
                              dVar10 = QVar31.w;
                              dVar27 = dVar12 + dVar12;
                              dVar29 = dVar22 + dVar22;
                              dVar30 = dVar14 + dVar14;
                              dVar16 = dVar28 * (dVar14 * dVar27 + dVar10 * dVar29) +
                                       (dVar12 * dVar29 - dVar10 * dVar30) * 0.0 +
                                       param_2[3].w * ((1.0 - dVar22 * dVar29) - dVar14 * dVar30);
                              dVar27 = param_2[3].w * (dVar14 * dVar27 - dVar10 * dVar29) +
                                       (dVar22 * dVar30 + dVar10 * dVar27) * 0.0 +
                                       dVar28 * ((1.0 - dVar12 * dVar27) - dVar22 * dVar29);
                              dVar28 = 1.0 / param_2[3].x;
                              dVar12 = (dVar16 - 0.0) * dVar28;
                              dVar28 = (dVar27 - dVar11) * dVar28;
                              dVar22 = param_2[3].x;
                              dVar10 = param_2[4].x;
                              dVar22 = ((dVar10 * dVar10 + dVar22 * dVar22) -
                                       param_2[3].y * param_2[3].y) / ((dVar10 + dVar10) * dVar22);
                              dVar14 = 1.0 - dVar22 * dVar22;
                              dVar10 = 0.0;
                              if (0.0 <= dVar14) {
                                dVar10 = SQRT(dVar14);
                              }
                              dVar22 = dVar22 * param_2[4].x;
                              dVar10 = dVar10 * param_2[4].x;
                              dVar14 = dVar12 * dVar22 + -dVar28 * dVar10 + 0.0;
                              dVar29 = dVar11 + dVar28 * dVar22 + dVar12 * dVar10;
                              dVar30 = 1.0 / param_2[3].y;
                              dVar12 = (dVar16 - dVar14) * dVar30;
                              dVar30 = (dVar27 - dVar29) * dVar30;
                              dVar23 = param_2[3].y;
                              dVar10 = param_2[3].z;
                              dVar28 = param_2[4].w;
                    /* WARNING: Could not inline here */
                              dVar22 = (double)FUN_00106dcc();
                              dVar23 = (((dVar28 * dVar28 + dVar23 * dVar23) - dVar10 * dVar10) /
                                       ((dVar28 + dVar28) * dVar23)) * param_2[4].w;
                              dVar22 = dVar22 * param_2[4].w;
                              dVar11 = atan2(dVar16 - 0.0,-(dVar27 - dVar11));
                              dVar10 = DAT_00107820;
                              dVar28 = param_2->y;
                              dVar24 = param_2->z;
                              dVar11 = dVar11 * DAT_00107820;
                              fVar15 = (float)(param_2->x * dVar28 + param_2->w * dVar24);
                              fVar9 = (float)((0.5 - dVar28 * dVar28) - dVar24 * dVar24);
                              fVar19 = SQRT(fVar15 * fVar15 + fVar9 * fVar9);
                              if (fVar19 <= 9.536743e-07) {
                                dVar24 = 0.0;
                                dVar28 = 1.0;
                              }
                              else {
                                fVar9 = fVar9 / fVar19;
                                fVar19 = SQRT((1.0 - fVar9) * 0.5);
                                dVar28 = (double)SQRT((fVar9 + 1.0) * 0.5);
                                fVar9 = -fVar19;
                                if (0.0 <= fVar15) {
                                  fVar9 = fVar19;
                                }
                                dVar24 = (double)fVar9;
                              }
                              dVar25 = param_2[2].w;
                              uVar8 = 0;
                              dVar13 = dVar25;
                    /* WARNING: Could not inline here */
                              QVar31.w = FUN_0010599c(param_2[2].z);
                              a_00.z = 1.0;
                              a_00.x = 0.0;
                              a_00.y = 0.0;
                              auVar1._8_8_ = param_2[2].w;
                              auVar1._0_8_ = param_2[2].y - param_2[2].x;
                              auVar1._16_8_ = 0;
                    /* WARNING: Could not inline here */
                              QVar32 = quat_from_vectors(a_00,(Point)(auVar1 << 0x40));
                              QVar31.x = (double)uVar8;
                              QVar31.z = dVar13;
                              QVar31.y = dVar25;
                    /* WARNING: Return address prevents inlining here */
                    /* WARNING: Could not inline here */
                              QVar31 = quat_multiply(QVar31,QVar32);
                              dVar26 = QVar31.z;
                              dVar20 = QVar31.y;
                              dVar17 = QVar31.x;
                              dVar13 = QVar31.w;
                              dVar25 = ((dVar28 * dVar13 - dVar17 * 0.0) - dVar20 * 0.0) -
                                       dVar24 * dVar26;
                              dVar21 = (dVar24 * dVar17 + dVar13 * 0.0 + dVar28 * dVar20) -
                                       dVar26 * 0.0;
                              dVar18 = (dVar26 * 0.0 + dVar13 * 0.0 + dVar28 * dVar17) -
                                       dVar24 * dVar20;
                              dVar28 = (dVar20 * 0.0 + dVar24 * dVar13 + dVar28 * dVar26) -
                                       dVar17 * 0.0;
                              if (dVar25 < 0.0) {
                                dVar25 = -dVar25;
                                dVar18 = -dVar18;
                                dVar21 = -dVar21;
                                dVar28 = -dVar28;
                              }
                              QVar32.x = -dVar18;
                              QVar32.y = -dVar21;
                              QVar32.z = -dVar28;
                              QVar32.w = dVar25;
                    /* WARNING: Could not inline here */
                              QVar31 = quat_multiply(QVar32,*param_2);
                              dVar28 = (double)FUN_00103078(dVar25,dVar18,dVar21,dVar28,param_2[1].w
                                                            ,param_2[1].x,param_2[1].y,param_2[1].z)
                              ;
                              dVar12 = atan2(-((dVar29 + dVar30 * dVar23 + dVar12 * dVar22) - dVar27
                                              ),(dVar14 + dVar12 * dVar23 + -dVar30 * dVar22) -
                                                dVar16);
                              *param_1 = 2;
                              *(double *)(param_1 + 2) = QVar31.x;
                              *(double *)(param_1 + 4) = QVar31.y;
                              *(double *)(param_1 + 6) = QVar31.z;
                              *(double *)(param_1 + 8) = param_2[2].w;
                              *(double *)(param_1 + 10) = param_2[2].x;
                              *(double *)(param_1 + 0xc) = param_2[4].w;
                              *(double *)(param_1 + 0xe) = param_2[3].z;
                              dVar16 = param_2[3].x;
                              *(double *)(param_1 + 0x14) = dVar12 * dVar10 - dVar28;
                              *(double *)(param_1 + 0x16) = dVar12 * dVar10;
                              *(double *)(param_1 + 0x10) = dVar16;
                              *(double *)(param_1 + 0x12) = dVar11;
                              memcpy(param_1 + 0x18,__src,0x68);
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

