/* Artifact: libexcavator.so | Address: 001059b8 | Ghidra static pseudocode; types require review. */

void FUN_001059b8(long *param_1)

{
  long lVar1;
  undefined8 uStack0000000000000178;
  
  lVar1 = tpidr_el0;
  uStack0000000000000178 = *(undefined8 *)(lVar1 + 0x28);
  FUN_00103d54(*(undefined8 *)(*param_1 + 8),*(undefined8 *)(*param_1 + 0x10));
  return;
}

