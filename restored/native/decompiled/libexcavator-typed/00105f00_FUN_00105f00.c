/* Artifact: libexcavator.so | Address: 00105f00 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: quat_rotate */

undefined1  [16] FUN_00105f00(void)

{
  undefined1 auVar1 [16];
  double dVar2;
  double in_stack_00000008;
  double in_stack_00000010;
  double in_stack_00000018;
  double in_stack_00000020;
  double in_stack_000000c0;
  double in_stack_000000c8;
  double in_stack_000000d0;
  
  dVar2 = in_stack_00000018 + in_stack_00000018;
  auVar1._0_8_ = in_stack_000000d0 *
                 (in_stack_00000020 * (in_stack_00000010 + in_stack_00000010) +
                 in_stack_00000008 * dVar2) +
                 in_stack_000000c8 *
                 (in_stack_00000010 * dVar2 -
                 in_stack_00000008 * (in_stack_00000020 + in_stack_00000020)) +
                 in_stack_000000c0 *
                 ((1.0 - in_stack_00000018 * dVar2) -
                 in_stack_00000020 * (in_stack_00000020 + in_stack_00000020));
  auVar1._8_8_ = 0;
  return auVar1;
}

