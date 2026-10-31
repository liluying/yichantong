/* Artifact: libexcavator.so | Address: 001060f0 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */

double FUN_001060f0(undefined8 param_1,undefined8 param_2,double param_3)

{
  double unaff_d8;
  undefined8 unaff_d10;
  undefined8 unaff_d14;
  Quat QVar1;
  Point a;
  Point b;
  
  a.y = (double)param_2;
  a.x = (double)param_1;
  a.z = param_3;
  b.y = (double)unaff_d14;
  b.x = (double)unaff_d10;
  b.z = unaff_d8;
                    /* WARNING: Return address prevents inlining here */
  QVar1 = quat_from_vectors(a,b);
  return QVar1.w;
}

