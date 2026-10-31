/* Artifact: libexcavator.so | Address: 00101b80 | Ghidra static pseudocode; types require review. */

undefined8 FUN_00101b80(undefined8 param_1,undefined8 *param_2)

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
  double dVar5;
  double dVar6;
  double dVar7;
  undefined8 uVar8;
  double dVar9;
  double dVar10;
  double dVar11;
  double dVar12;
  undefined8 uVar13;
  undefined8 uVar14;
  undefined8 uVar15;
  undefined8 uVar16;
  undefined8 local_28;
  
  FUN_001062c4(param_1,0,0x138);
  FUN_00105bb8(param_2[8]);
  if ((bool)in_ZR || in_NG != in_OV) {
    FUN_00105bcc(param_2[9]);
    if ((bool)in_ZR || in_NG != in_OV) {
      FUN_00105bcc(param_2[10]);
      if ((bool)in_ZR || in_NG != in_OV) {
        FUN_001059d8(param_2[0xb]);
        if ((bool)in_ZR || in_NG != in_OV) {
          FUN_001059d8(param_2[0xc]);
          if ((bool)in_ZR || in_NG != in_OV) {
            FUN_00105bb8(param_2[0xd]);
            if ((bool)in_ZR || in_NG != in_OV) {
              uVar2 = FUN_00106264();
              if ((bool)in_ZR || in_NG != in_OV) {
                FUN_00106278(uVar2,param_2[0xf]);
                if ((bool)in_ZR || in_NG != in_OV) {
                  FUN_00106250(param_2[0x10]);
                  if ((bool)in_ZR || in_NG != in_OV) {
                    iVar1 = FUN_00106d7c();
                    if (iVar1 == 0) {
                      uVar2 = 0xfffffff4;
                    }
                    else {
                      __src = param_2 + 0x11;
                      uVar2 = param_2[0xd];
                      iVar1 = FUN_00106d7c(*__src,uVar2,param_2[0xe]);
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
                            dVar10 = (double)param_2[8];
                            uVar3 = FUN_00105a3c();
                            dVar7 = (double)param_2[0xc];
                            uVar4 = FUN_001060b0(param_2[0xb]);
                            if ((bool)in_NG) {
                              uVar2 = 0xffffff9c;
                            }
                            else {
                              dVar7 = SQRT(dVar7);
                              FUN_00105ad4(uVar4,dVar7,param_2[8]);
                              dVar11 = 1.0;
                              FUN_00105a3c();
                              FUN_0010599c();
                              FUN_00105d3c(param_2[0xc]);
                              FUN_00105c1c();
                              FUN_00106210();
                              dVar6 = dVar7;
                              FUN_00106e70();
                              FUN_00105d5c();
                              uVar4 = FUN_00105a48();
                              FUN_00106064(param_2[0xe],param_2[0x11]);
                              FUN_00106dcc();
                              FUN_00105f20(param_2[0x11]);
                              FUN_001061f0(param_2[0x11]);
                              FUN_00106e40(uVar4);
                              FUN_00105ce8();
                              dVar12 = dVar10;
                              uVar4 = FUN_00105eec();
                              FUN_00106e70(local_28,dVar7,dVar11,uVar4,dVar6,dVar12);
                              FUN_00105d5c();
                              FUN_00105d84();
                              FUN_00106064(param_2[0xf],param_2[0x10]);
                              FUN_001061c0();
                              FUN_00105f48(param_2[0x10]);
                              FUN_00105d68(param_2[0x10]);
                              FUN_00105c94();
                              FUN_00105e08();
                              uVar4 = FUN_00106e60(uVar4);
                              dVar5 = dVar11;
                              dVar10 = (double)FUN_00106e70(local_28,dVar7,dVar11,uVar3,uVar2,dVar10
                                                           );
                              dVar5 = atan2(dVar10,-dVar5);
                              dVar10 = DAT_00107820;
                              uVar8 = param_2[1];
                              uVar13 = param_2[2];
                              uVar15 = param_2[3];
                              dVar5 = dVar5 * DAT_00107820;
                              uVar2 = FUN_001076b8(*param_2,uVar8,uVar13,uVar15);
                              FUN_00106e3c(0,0,0x3ff0000000000000);
                              uVar16 = param_2[8];
                              FUN_00106e3c(param_2[0xb],0,uVar16);
                              FUN_0010599c();
                              FUN_00105d3c(0);
                              uVar14 = param_2[8];
                              dVar9 = (double)param_2[10] - (double)param_2[9];
                              FUN_001061e8(param_2[10],dVar9,uVar14);
                              FUN_00105ccc();
                              uVar3 = FUN_00105b94();
                              FUN_00107370(uVar2,uVar8,uVar13,uVar15,uVar3,dVar9,uVar14,uVar16);
                              FUN_00105a78();
                              FUN_00107170();
                              uVar2 = FUN_0010616c();
                              dVar7 = (double)FUN_00106e70(uVar4,dVar6,dVar12,local_28,dVar7,dVar11)
                              ;
                              FUN_00105df4();
                              dVar6 = (double)FUN_00103078();
                              dVar7 = atan2(-dVar12,dVar7);
                              *unaff_x19 = 2;
                              FUN_001070f4(uVar2,uVar8,uVar13,uVar15);
                              FUN_00106230();
                              *(undefined8 *)(unaff_x19 + 8) = param_2[8];
                              *(undefined8 *)(unaff_x19 + 10) = param_2[9];
                              *(undefined8 *)(unaff_x19 + 0xc) = param_2[0x10];
                              *(undefined8 *)(unaff_x19 + 0xe) = param_2[0xf];
                              uVar2 = param_2[0xd];
                              *(double *)(unaff_x19 + 0x14) = dVar7 * dVar10 - dVar6;
                              *(double *)(unaff_x19 + 0x16) = dVar7 * dVar10;
                              *(undefined8 *)(unaff_x19 + 0x10) = uVar2;
                              *(double *)(unaff_x19 + 0x12) = dVar5;
                              memcpy(unaff_x19 + 0x18,__src,0x68);
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

