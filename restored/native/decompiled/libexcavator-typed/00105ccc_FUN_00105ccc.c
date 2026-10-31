/* Artifact: libexcavator.so | Address: 00105ccc | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

double FUN_00105ccc(undefined8 param_1,undefined8 param_2,double param_3)

{
  undefined8 unaff_d8;
  undefined8 unaff_d12;
  double unaff_d13;
  Quat QVar1;
  Point a;
  Point b;
  
  a.y = (double)unaff_d12;
  a.x = (double)unaff_d8;
  a.z = unaff_d13;
  b.y = (double)param_2;
  b.x = (double)param_1;
  b.z = param_3;
                    /* WARNING: Return address prevents inlining here */
  QVar1 = quat_from_vectors(a,b);
  return QVar1.w;
}

