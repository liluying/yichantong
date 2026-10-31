/* Artifact: libexcavator.so | Address: 00106c98 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00106c98(undefined8 param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 *unaff_x19;
  long unaff_x29;
  double dVar3;
  undefined8 local_28;
  
  FUN_00106d44(param_1,DAT_00107ff8);
  uVar2 = _UNK_00108008;
  uVar1 = _DAT_00108000;
  dVar3 = *(double *)(unaff_x29 + -8);
  unaff_x19[6] = dVar3;
  unaff_x19[1] = 0;
  unaff_x19[7] = 0;
  unaff_x19[5] = 0;
  *unaff_x19 = local_28;
  unaff_x19[4] = uVar2;
  unaff_x19[3] = uVar1;
  unaff_x19[2] = -dVar3;
  unaff_x19[8] = local_28;
  FUN_00106d60();
  return;
}

