/* Artifact: libexcavator.so | Address: 001071e4 | Ghidra static pseudocode; types require review. */

undefined1  [16] FUN_001071e4(double param_1,double param_2,double param_3)

{
  double dVar1;
  undefined1 auVar2 [16];
  double local_70;
  double dStack_68;
  double local_60;
  double dStack_58;
  double local_50;
  double dStack_48;
  
  dVar1 = DAT_00108020;
  sincos(param_3 * DAT_00108020,&dStack_68,&local_70);
  sincos(param_2 * dVar1,&dStack_58,&local_60);
  sincos(param_1 * dVar1,&dStack_48,&local_50);
  dVar1 = local_70 * local_50 * local_60 + dStack_68 * dStack_48 * dStack_58;
  if (dVar1 < 0.0) {
    dVar1 = -dVar1;
  }
  auVar2._8_8_ = 0;
  auVar2._0_8_ = dVar1;
  return auVar2;
}

