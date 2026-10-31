/* Artifact: libexcavator.so | Address: 00103844 | Ghidra static pseudocode; types require review. */

undefined8 FUN_00103844(undefined8 param_1,undefined8 *param_2)

{
  char in_NG;
  undefined1 in_ZR;
  char in_OV;
  int iVar1;
  undefined8 uVar2;
  undefined4 *unaff_x19;
  undefined8 *__src;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  double dVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  double dVar10;
  double dVar11;
  undefined8 uVar12;
  double dVar13;
  undefined8 uVar14;
  double dVar15;
  double dVar16;
  undefined8 uVar17;
  undefined8 uVar18;
  undefined8 uVar19;
  undefined8 uVar20;
  undefined8 local_28;
  
  FUN_001062c4(param_1,0,0x138);
  FUN_00105bb8(param_2[4]);
  if ((bool)in_ZR || in_NG != in_OV) {
    FUN_00105bcc(param_2[5]);
    if ((bool)in_ZR || in_NG != in_OV) {
      FUN_00105bcc(param_2[6]);
      if ((bool)in_ZR || in_NG != in_OV) {
        FUN_001059d8(param_2[7]);
        if ((bool)in_ZR || in_NG != in_OV) {
          FUN_001059d8(param_2[8]);
          if ((bool)in_ZR || in_NG != in_OV) {
            FUN_00105bb8(param_2[9]);
            if ((bool)in_ZR || in_NG != in_OV) {
              uVar2 = FUN_00106264();
              if ((bool)in_ZR || in_NG != in_OV) {
                FUN_00106278(uVar2,param_2[0xb]);
                if ((bool)in_ZR || in_NG != in_OV) {
                  FUN_00106250(param_2[0xc]);
                  if ((bool)in_ZR || in_NG != in_OV) {
                    iVar1 = FUN_00106d7c();
                    if (iVar1 == 0) {
                      uVar2 = 0xfffffff4;
                    }
                    else {
                      __src = param_2 + 0xd;
                      uVar2 = param_2[9];
                      iVar1 = FUN_00106d7c(*__src,uVar2,param_2[10]);
                      if (iVar1 == 0) {
                        uVar2 = 0xfffffff3;
                      }
                      else {
                        iVar1 = FUN_00101fec(__src);
                        if (iVar1 == 0) {
                          iVar1 = FUN_00105f78();
                          if (iVar1 == 0) {
                            uVar2 = 0xfffffff1;
                          }
                          else {
                            uVar14 = param_2[4];
                            uVar3 = FUN_00105a3c();
                            dVar10 = (double)param_2[8];
                            uVar4 = FUN_001060b0(param_2[7]);
                            if ((bool)in_NG) {
                              uVar2 = 0xffffff9c;
                            }
                            else {
                              dVar10 = SQRT(dVar10);
                              FUN_00105ad4(uVar4,dVar10,param_2[4]);
                              dVar15 = 1.0;
                              FUN_00105a3c();
                              FUN_0010599c();
                              FUN_00105d3c(param_2[8]);
                              FUN_00105c1c();
                              FUN_00106210();
                              dVar11 = dVar10;
                              FUN_00106e70();
                              FUN_00105d5c();
                              uVar4 = FUN_00105a48();
                              FUN_00106064(param_2[10],param_2[0xd]);
                              FUN_00106dcc();
                              FUN_00105f20(param_2[0xd]);
                              FUN_001061f0(param_2[0xd]);
                              FUN_00106e40(uVar4);
                              FUN_00105ce8();
                              uVar4 = uVar14;
                              uVar5 = FUN_00105eec();
                              FUN_00106e70(local_28,dVar10,dVar15,uVar5,dVar11,uVar4);
                              FUN_00105d5c();
                              FUN_00105d84();
                              FUN_00106064(param_2[0xb],param_2[0xc]);
                              FUN_001061c0();
                              FUN_00105f48(param_2[0xc]);
                              FUN_00105d68(param_2[0xc]);
                              FUN_00105c94();
                              FUN_00105e08();
                              uVar5 = FUN_00106e60(uVar5);
                              dVar16 = dVar15;
                              dVar6 = (double)FUN_00106e70(local_28,dVar10,dVar15,uVar3,uVar2,uVar14
                                                          );
                              dVar6 = atan2(dVar6,-dVar16);
                              dVar16 = DAT_00107820;
                              uVar12 = param_2[1];
                              uVar17 = param_2[2];
                              uVar20 = param_2[3];
                              dVar6 = dVar6 * DAT_00107820;
                              uVar14 = FUN_001076b8(*param_2);
                              uVar18 = param_2[4];
                              uVar2 = uVar12;
                              uVar3 = uVar20;
                              FUN_00105ad4(param_2[7]);
                              FUN_0010606c();
                              uVar7 = FUN_0010599c();
                              uVar19 = param_2[4];
                              dVar13 = (double)param_2[6] - (double)param_2[5];
                              uVar8 = FUN_001061e8(param_2[6],dVar13,uVar19);
                              FUN_0010606c();
                              FUN_00105ccc();
                              uVar9 = FUN_00105b94();
                              FUN_00107370(uVar14,uVar12,uVar17,uVar20,uVar9,dVar13,uVar19,uVar3);
                              FUN_00107170();
                              FUN_0010616c();
                              FUN_00105a78();
                              FUN_00106e70(uVar5,dVar11,uVar4,local_28,dVar10,dVar15);
                              dVar10 = (double)FUN_001061dc();
                              *unaff_x19 = 3;
                              FUN_001070f4(uVar8,uVar7,uVar2,uVar18);
                              FUN_00106230();
                              *(undefined8 *)(unaff_x19 + 8) = param_2[4];
                              *(undefined8 *)(unaff_x19 + 10) = param_2[5];
                              *(undefined8 *)(unaff_x19 + 0xc) = param_2[0xc];
                              *(undefined8 *)(unaff_x19 + 0xe) = param_2[0xb];
                              uVar2 = param_2[9];
                              *(double *)(unaff_x19 + 0x12) = dVar6;
                              *(double *)(unaff_x19 + 0x14) = dVar10 * dVar16;
                              *(undefined8 *)(unaff_x19 + 0x10) = uVar2;
                              memcpy(unaff_x19 + 0x16,__src,0x68);
                              FUN_001060d8();
                              uVar2 = 0;
                            }
                          }
                        }
                        else {
                          uVar2 = 0xfffffff2;
                        }
                      }
                    }
                  }
                  else {
                    uVar2 = 0xfffffff7;
                  }
                }
                else {
                  uVar2 = 0xfffffff8;
                }
              }
              else {
                uVar2 = 0xfffffff9;
              }
            }
            else {
              uVar2 = 0xfffffffa;
            }
          }
          else {
            uVar2 = 0xfffffffb;
          }
        }
        else {
          uVar2 = 0xfffffffc;
        }
      }
      else {
        uVar2 = 0xfffffffd;
      }
    }
    else {
      uVar2 = 0xfffffffe;
    }
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

