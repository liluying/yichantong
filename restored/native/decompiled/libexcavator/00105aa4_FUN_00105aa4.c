/* Artifact: libexcavator.so | Address: 00105aa4 | Ghidra static pseudocode; types require review. */

void FUN_00105aa4(undefined8 param_1)

{
  long unaff_x19;
  undefined8 in_stack_00000018;
  undefined8 in_stack_00000020;
  undefined8 in_stack_00000028;
  
  *(double *)(unaff_x19 + 0x28) = (double)(float)((ulong)param_1 >> 0x20);
  *(double *)(unaff_x19 + 0x20) = (double)(float)param_1;
  *(double *)(unaff_x19 + 0x38) = (double)(float)((ulong)in_stack_00000018 >> 0x20);
  *(double *)(unaff_x19 + 0x30) = (double)(float)in_stack_00000018;
  *(double *)(unaff_x19 + 0x48) = (double)(float)((ulong)in_stack_00000020 >> 0x20);
  *(double *)(unaff_x19 + 0x40) = (double)(float)in_stack_00000020;
  *(double *)(unaff_x19 + 0x58) = (double)(float)((ulong)in_stack_00000028 >> 0x20);
  *(double *)(unaff_x19 + 0x50) = (double)(float)in_stack_00000028;
  return;
}

