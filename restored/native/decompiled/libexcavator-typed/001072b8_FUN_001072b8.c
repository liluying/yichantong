/* Artifact: libexcavator.so | Address: 001072b8 | Ghidra static pseudocode; types require review. */

undefined1  [16] FUN_001072b8(double param_1,double param_2,double param_3,double param_4)

{
  double dVar1;
  undefined1 auVar2 [16];
  undefined8 uVar3;
  
  dVar1 = atan2(param_1 * param_2 + param_3 * param_4,(0.5 - param_2 * param_2) - param_3 * param_3)
  ;
  dVar1 = dVar1 * DAT_00107820;
  uVar3 = 0;
  asin(param_3 * (param_1 + param_1) - param_4 * (param_2 + param_2));
  atan2(param_1 * param_4 + param_2 * param_3,(0.5 - param_3 * param_3) - param_4 * param_4);
  auVar2._8_8_ = uVar3;
  auVar2._0_8_ = dVar1;
  return auVar2;
}

