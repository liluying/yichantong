/* Artifact: libexcavator.so | Address: 001058cc | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_rotate */

undefined1  [16] FUN_001058cc(double param_1,double param_2,double param_3)

{
  undefined1 auVar1 [16];
  double dVar2;
  double in_stack_00000000;
  double in_stack_00000008;
  double in_stack_00000010;
  double in_stack_00000018;
  
  dVar2 = in_stack_00000010 + in_stack_00000010;
  auVar1._0_8_ = param_3 * (in_stack_00000018 * (in_stack_00000008 + in_stack_00000008) +
                           in_stack_00000000 * dVar2) +
                 param_2 * (in_stack_00000008 * dVar2 -
                           in_stack_00000000 * (in_stack_00000018 + in_stack_00000018)) +
                 param_1 * ((1.0 - in_stack_00000010 * dVar2) -
                           in_stack_00000018 * (in_stack_00000018 + in_stack_00000018));
  auVar1._8_8_ = 0;
  return auVar1;
}

