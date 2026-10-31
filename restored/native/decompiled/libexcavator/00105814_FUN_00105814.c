/* Artifact: libexcavator.so | Address: 00105814 | Ghidra static pseudocode; types require review. */

undefined8
FUN_00105814(undefined8 param_1,double param_2,double param_3,undefined8 param_4,double param_5,
            undefined8 *param_6)

{
  int iVar1;
  undefined8 uVar2;
  double dVar3;
  
  param_6[9] = 0;
  param_6[8] = 0;
  param_6[0xb] = 0;
  param_6[10] = 0;
  param_6[5] = 0;
  param_6[4] = 0;
  param_6[7] = 0;
  param_6[6] = 0;
  param_6[1] = 0;
  *param_6 = 0;
  param_6[3] = 0;
  param_6[2] = 0;
  param_6[0xc] = 0;
  iVar1 = FUN_00106d7c(param_2,param_3,param_4);
  if (iVar1 == 0) {
    uVar2 = 0xffffffff;
  }
  else {
    FUN_00106da8(param_4,param_2,param_3);
    dVar3 = (double)FUN_001061c0();
    uVar2 = 0;
    *param_6 = param_1;
    param_6[1] = -(param_3 * param_2);
    param_6[2] = param_5 * -0.5;
    param_6[3] = dVar3 * param_2;
    param_6[4] = -(param_3 * param_2);
    param_6[5] = param_5 * 0.5;
    param_6[6] = dVar3 * param_2;
  }
  return uVar2;
}

