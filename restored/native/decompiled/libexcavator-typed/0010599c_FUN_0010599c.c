/* Artifact: libexcavator.so | Address: 0010599c | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

double FUN_0010599c(undefined8 param_1,undefined8 param_2,double param_3)

{
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  double unaff_d11;
  Quat QVar1;
  Point a;
  Point b;
  
  a.y = (double)unaff_d10;
  a.x = (double)unaff_d9;
  a.z = unaff_d11;
  b.y = (double)param_2;
  b.x = (double)param_1;
  b.z = param_3;
                    /* WARNING: Return address prevents inlining here */
  QVar1 = quat_from_vectors(a,b);
  return QVar1.w;
}

