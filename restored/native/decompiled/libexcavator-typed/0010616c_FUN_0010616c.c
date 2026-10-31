/* Artifact: libexcavator.so | Address: 0010616c | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

double FUN_0010616c(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  Quat *unaff_x20;
  Quat QVar1;
  
  QVar1.x = (double)param_2;
  QVar1.w = (double)param_1;
  QVar1.z = (double)param_4;
  QVar1.y = (double)param_3;
                    /* WARNING: Return address prevents inlining here */
  QVar1 = quat_multiply(QVar1,*unaff_x20);
  return QVar1.w;
}

