/* Artifact: libexcavator.so | Address: 00105b94 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

double FUN_00105b94(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  undefined8 unaff_d11;
  undefined8 unaff_d15;
  Quat QVar1;
  Quat b;
  
  QVar1.x = (double)unaff_d10;
  QVar1.w = (double)unaff_d9;
  QVar1.z = (double)unaff_d15;
  QVar1.y = (double)unaff_d11;
  b.x = (double)param_2;
  b.w = (double)param_1;
  b.z = (double)param_4;
  b.y = (double)param_3;
                    /* WARNING: Return address prevents inlining here */
  QVar1 = quat_multiply(QVar1,b);
  return QVar1.w;
}

