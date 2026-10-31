/* Artifact: libexcavator.so | Address: 00106c98 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_00106d44 */
/* WARNING: Inlined function: FUN_00106d60 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00106c98(double param_1,double *param_2)

{
  double dVar1;
  double dVar2;
  double local_28;
  double dStack_18;
  
  sincos(param_1 * DAT_00107ff8,&dStack_18,&local_28);
  dVar2 = _UNK_00108008;
  dVar1 = _DAT_00108000;
  param_2[6] = dStack_18;
  param_2[1] = 0.0;
  param_2[7] = 0.0;
  param_2[5] = 0.0;
  *param_2 = local_28;
  param_2[4] = dVar2;
  param_2[3] = dVar1;
  param_2[2] = -dStack_18;
  param_2[8] = local_28;
  return;
}

