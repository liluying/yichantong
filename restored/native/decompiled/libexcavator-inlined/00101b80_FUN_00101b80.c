/* Artifact: libexcavator.so | Address: 00101b80 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001062c4 */
/* WARNING: Inlined function: FUN_00105bb8 */
/* WARNING: Inlined function: FUN_00105bcc */
/* WARNING: Inlined function: FUN_00106264 */
/* WARNING: Inlined function: FUN_00106278 */
/* WARNING: Inlined function: FUN_00106250 */
/* WARNING: Inlined function: FUN_00105f78 */
/* WARNING: Inlined function: FUN_00105a3c */
/* WARNING: Inlined function: FUN_001060b0 */
/* WARNING: Inlined function: FUN_00105ad4 */
/* WARNING: Inlined function: FUN_00105d3c */
/* WARNING: Inlined function: FUN_00105c1c */
/* WARNING: Inlined function: FUN_00106210 */
/* WARNING: Inlined function: FUN_00105d5c */
/* WARNING: Inlined function: FUN_00105a48 */
/* WARNING: Inlined function: FUN_00106064 */
/* WARNING: Inlined function: FUN_00105f20 */
/* WARNING: Inlined function: FUN_001061f0 */
/* WARNING: Inlined function: FUN_00105ce8 */
/* WARNING: Inlined function: FUN_00105eec */
/* WARNING: Inlined function: FUN_00105d84 */
/* WARNING: Inlined function: FUN_001061c0 */
/* WARNING: Inlined function: FUN_00105f48 */
/* WARNING: Inlined function: FUN_00105d68 */
/* WARNING: Inlined function: FUN_00105c94 */
/* WARNING: Inlined function: FUN_00105e08 */
/* WARNING: Inlined function: FUN_001061e8 */
/* WARNING: Inlined function: FUN_00105ccc */
/* WARNING: Inlined function: FUN_00105b94 */
/* WARNING: Inlined function: FUN_00105a78 */
/* WARNING: Inlined function: FUN_0010616c */
/* WARNING: Inlined function: FUN_00105df4 */
/* WARNING: Inlined function: FUN_00106230 */
/* WARNING: Inlined function: FUN_001060d8 */

undefined8 FUN_00101b80(undefined4 *param_1,undefined8 *param_2)

{
  bool bVar1;
  char cVar2;
  bool bVar3;
  bool bVar4;
  char cVar5;
  int iVar6;
  undefined8 uVar7;
  undefined8 *__src;
  double dVar8;
  undefined8 uVar9;
  double dVar10;
  undefined8 uVar11;
  undefined8 uVar12;
  double dVar13;
  undefined8 uVar14;
  double dVar15;
  undefined8 uVar16;
  undefined8 uVar17;
  undefined8 uVar18;
  undefined8 uVar19;
  undefined8 uVar20;
  undefined8 uVar21;
  undefined8 uVar22;
  double dVar23;
  double dVar24;
  undefined8 uVar25;
  undefined8 uVar26;
  undefined8 uVar27;
  undefined8 uVar28;
  
  memset(param_1,0,0x138);
  dVar8 = (double)param_2[8];
  bVar1 = false;
  bVar3 = false;
  bVar4 = false;
  if (DAT_00107800 <= dVar8) {
    bVar1 = false;
    bVar3 = false;
    bVar4 = true;
    if (!NAN(dVar8)) {
      bVar1 = dVar8 < 100.0;
      bVar3 = dVar8 == 100.0;
      bVar4 = false;
    }
  }
  if (bVar3 || bVar1 != bVar4) {
    dVar8 = (double)param_2[9];
    cVar2 = false;
    bVar1 = false;
    cVar5 = false;
    if (0.0 <= dVar8) {
      cVar2 = false;
      bVar1 = false;
      cVar5 = true;
      if (!NAN(dVar8)) {
        cVar2 = dVar8 < 100.0;
        bVar1 = dVar8 == 100.0;
        cVar5 = false;
      }
    }
    if (bVar1 || cVar2 != cVar5) {
      dVar8 = DAT_00107800;
                    /* WARNING: Could not inline here */
      FUN_00105bcc(param_2[10]);
      if (bVar1 || cVar2 != cVar5) {
        FUN_001059d8(param_2[0xb]);
        if (bVar1 || cVar2 != cVar5) {
          FUN_001059d8(param_2[0xc]);
          if (bVar1 || cVar2 != cVar5) {
                    /* WARNING: Could not inline here */
            FUN_00105bb8(param_2[0xd]);
            if (bVar1 || cVar2 != cVar5) {
              dVar23 = (double)param_2[0xe];
              bVar1 = false;
              bVar3 = false;
              bVar4 = false;
              if (dVar8 <= dVar23) {
                bVar1 = false;
                bVar3 = false;
                bVar4 = true;
                if (!NAN(dVar23)) {
                  bVar1 = dVar23 < 100.0;
                  bVar3 = dVar23 == 100.0;
                  bVar4 = false;
                }
              }
              if (bVar3 || bVar1 != bVar4) {
                dVar23 = (double)param_2[0xf];
                bVar1 = false;
                bVar3 = false;
                bVar4 = false;
                if (dVar8 <= dVar23) {
                  bVar1 = false;
                  bVar3 = false;
                  bVar4 = true;
                  if (!NAN(dVar23)) {
                    bVar1 = dVar23 < 100.0;
                    bVar3 = dVar23 == 100.0;
                    bVar4 = false;
                  }
                }
                if (bVar3 || bVar1 != bVar4) {
                  dVar23 = (double)param_2[0x10];
                  bVar1 = false;
                  bVar3 = false;
                  bVar4 = false;
                  if (dVar8 <= dVar23) {
                    bVar1 = false;
                    bVar3 = false;
                    bVar4 = true;
                    if (!NAN(dVar23)) {
                      bVar1 = dVar23 < 100.0;
                      bVar3 = dVar23 == 100.0;
                      bVar4 = false;
                    }
                  }
                  if (bVar3 || bVar1 != bVar4) {
                    iVar6 = FUN_00106d7c();
                    if (iVar6 == 0) {
                      uVar7 = 0xfffffff4;
                    }
                    else {
                      __src = param_2 + 0x11;
                      iVar6 = FUN_00106d7c(*__src,param_2[0xd],param_2[0xe]);
                      if (iVar6 == 0) {
                        uVar7 = 0xfffffff3;
                      }
                      else {
                        iVar6 = FUN_00101fec(__src);
                        if (iVar6 == 0) {
                          iVar6 = FUN_00107104(*param_2,param_2[1],param_2[2],param_2[3]);
                          if (iVar6 == 0) {
                            uVar7 = 0xfffffff1;
                          }
                          else {
                            dVar23 = (double)param_2[8];
                            uVar21 = 0;
                            uVar7 = FUN_00106e3c(0);
                            dVar8 = (double)param_2[0xb] - (double)param_2[0xc];
                            dVar10 = (double)param_2[0xd] * (double)param_2[0xd];
                            dVar8 = dVar10 - dVar8 * dVar8;
                            if (0.0 <= dVar8) {
                              dVar8 = (double)param_2[8] - SQRT(dVar8);
                              uVar22 = 0;
                              FUN_00106e3c(param_2[0xb],0,param_2[8]);
                              dVar24 = 1.0;
                    /* WARNING: Could not inline here */
                              FUN_00105a3c();
                              uVar9 = FUN_0010599c();
                              uVar11 = 0;
                              uVar17 = FUN_00106e3c(param_2[0xc],0,dVar8);
                              uVar16 = FUN_00107478(uVar9,uVar22,dVar24,dVar10,uVar17,uVar11,dVar8);
                              uVar9 = uVar22;
                              dVar8 = dVar24;
                              FUN_00106e70();
                              uVar12 = FUN_00106e40();
                              uVar14 = 0;
                              uVar17 = uVar12;
                              uVar11 = FUN_00106e3c(-dVar8,0,uVar12);
                              dVar13 = (double)FUN_00106da8(param_2[0xe],param_2[0x11],param_2[0xd])
                              ;
                              dVar10 = (double)FUN_00106dcc();
                              uVar12 = FUN_00106e40(uVar12,uVar9,dVar8,
                                                    dVar13 * (double)param_2[0x11]);
                              uVar11 = FUN_00106e40(uVar11,uVar14,uVar17,
                                                    dVar10 * (double)param_2[0x11]);
                              uVar11 = FUN_00106e60(uVar12,uVar9,dVar8,uVar11,uVar14,uVar17);
                              uVar17 = uVar21;
                              dVar10 = dVar23;
                              uVar18 = FUN_00106e60(uVar7,uVar21,dVar23,uVar11,uVar9,dVar8);
                              uVar9 = uVar22;
                              dVar8 = dVar24;
                              FUN_00106e70(uVar16,uVar22,dVar24,uVar18,uVar17,dVar10);
                    /* WARNING: Could not inline here */
                              uVar12 = FUN_00105d5c();
                              uVar20 = 0;
                              uVar11 = uVar12;
                              uVar14 = FUN_00106e3c(-dVar8,0,uVar12);
                    /* WARNING: Could not inline here */
                              dVar13 = (double)FUN_00106064(param_2[0xf],param_2[0x10]);
                              dVar15 = (double)FUN_00106dcc();
                              uVar19 = FUN_00106e40(uVar12,uVar9,dVar8,
                                                    dVar13 * (double)param_2[0x10]);
                              uVar12 = FUN_00106e40(uVar14,uVar20,uVar11,
                                                    dVar15 * (double)param_2[0x10]);
                              uVar11 = FUN_00106e60(uVar19,uVar9,dVar8,uVar12,uVar20,uVar11);
                              uVar11 = FUN_00106e60(uVar18,uVar17,dVar10,uVar11,uVar9,dVar8);
                              dVar8 = dVar24;
                              dVar23 = (double)FUN_00106e70(uVar16,uVar22,dVar24,uVar7,uVar21,dVar23
                                                           );
                              dVar23 = atan2(dVar23,-dVar8);
                              dVar8 = DAT_00107820;
                              uVar19 = param_2[1];
                              uVar25 = param_2[2];
                              uVar27 = param_2[3];
                              dVar23 = dVar23 * DAT_00107820;
                              uVar9 = FUN_001076b8(*param_2,uVar19,uVar25,uVar27);
                              FUN_00106e3c(0,0,0x3ff0000000000000);
                              uVar28 = param_2[8];
                              uVar20 = 0;
                              FUN_00106e3c(param_2[0xb],0,uVar28);
                              uVar12 = FUN_0010599c();
                              uVar7 = uVar20;
                              uVar21 = uVar28;
                    /* WARNING: Could not inline here */
                              uVar14 = FUN_00105d3c(0);
                              uVar26 = param_2[8];
                              dVar13 = (double)param_2[10] - (double)param_2[9];
                              uVar18 = FUN_00106e3c(0,dVar13,uVar26);
                              uVar14 = FUN_00107590(uVar14,uVar7,uVar21,uVar18,dVar13,uVar26);
                              uVar7 = FUN_00107370(uVar12,uVar20,uVar28,dVar15,uVar14,uVar7,uVar21,
                                                   uVar18);
                              uVar12 = FUN_00107370(uVar9,uVar19,uVar25,uVar27,uVar7,uVar20,uVar28,
                                                    dVar15);
                              uVar7 = uVar19;
                              uVar21 = uVar25;
                              uVar9 = uVar27;
                              FUN_00107170();
                              uVar14 = FUN_00107370();
                              dVar13 = (double)FUN_00106e70(uVar11,uVar17,dVar10,uVar16,uVar22,
                                                            dVar24);
                              dVar15 = (double)FUN_00103078(uVar12,uVar19,uVar25,uVar27,param_2[4],
                                                            param_2[5],param_2[6],param_2[7]);
                              dVar10 = atan2(-dVar10,dVar13);
                              *param_1 = 2;
                              uVar9 = FUN_001070f4(uVar14,uVar7,uVar21,uVar9);
                              *(undefined8 *)(param_1 + 2) = uVar9;
                              *(undefined8 *)(param_1 + 4) = uVar7;
                              *(undefined8 *)(param_1 + 6) = uVar21;
                              *(undefined8 *)(param_1 + 8) = param_2[8];
                              *(undefined8 *)(param_1 + 10) = param_2[9];
                              *(undefined8 *)(param_1 + 0xc) = param_2[0x10];
                              *(undefined8 *)(param_1 + 0xe) = param_2[0xf];
                              uVar7 = param_2[0xd];
                              *(double *)(param_1 + 0x14) = dVar10 * dVar8 - dVar15;
                              *(double *)(param_1 + 0x16) = dVar10 * dVar8;
                              *(undefined8 *)(param_1 + 0x10) = uVar7;
                              *(double *)(param_1 + 0x12) = dVar23;
                              memcpy(param_1 + 0x18,__src,0x68);
                              FUN_00101778(param_1);
                              uVar7 = 0;
                            }
                            else {
                              uVar7 = 0xffffff9c;
                            }
                          }
                        }
                        else {
                          uVar7 = 0xfffffff2;
                        }
                      }
                    }
                  }
                  else {
                    uVar7 = 0xfffffff7;
                  }
                }
                else {
                  uVar7 = 0xfffffff8;
                }
              }
              else {
                uVar7 = 0xfffffff9;
              }
            }
            else {
              uVar7 = 0xfffffffa;
            }
          }
          else {
            uVar7 = 0xfffffffb;
          }
        }
        else {
          uVar7 = 0xfffffffc;
        }
      }
      else {
        uVar7 = 0xfffffffd;
      }
    }
    else {
      uVar7 = 0xfffffffe;
    }
  }
  else {
    uVar7 = 0xffffffff;
  }
  return uVar7;
}

