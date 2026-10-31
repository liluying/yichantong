/* Artifact: libexcavator.so | Address: 00105814 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106d7c */
/* WARNING: Inlined function: FUN_00106da8 */
/* WARNING: Inlined function: FUN_001061c0 */

undefined8
FUN_00105814(undefined8 param_1,double param_2,double param_3,double param_4,double param_5,
            undefined8 *param_6)

{
  bool bVar1;
  undefined8 uVar2;
  double dVar3;
  double dVar4;
  
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
  bVar1 = true;
  if ((param_4 <= param_2 + param_3) && (bVar1 = false, !NAN(param_3 + param_4) && !NAN(param_2))) {
    bVar1 = param_3 + param_4 < param_2;
  }
  if (bVar1 || param_2 + param_4 < param_3) {
    uVar2 = 0xffffffff;
  }
  else {
                    /* WARNING: Return address prevents inlining here */
    dVar3 = (double)FUN_00106dcc();
    uVar2 = 0;
    dVar4 = -((((param_2 * param_2 + param_3 * param_3) - param_4 * param_4) /
              ((param_2 + param_2) * param_3)) * param_2);
    *param_6 = param_1;
    param_6[1] = dVar4;
    param_6[2] = param_5 * -0.5;
    param_6[3] = dVar3 * param_2;
    param_6[4] = dVar4;
    param_6[5] = param_5 * 0.5;
    param_6[6] = dVar3 * param_2;
  }
  return uVar2;
}

