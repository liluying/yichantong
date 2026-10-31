/* Artifact: libexcavator.so | Address: 00106d7c | Ghidra static pseudocode; types require review. */

bool FUN_00106d7c(double param_1,double param_2,double param_3)

{
  bool bVar1;
  
  bVar1 = true;
  if ((param_3 <= param_1 + param_2) && (bVar1 = false, !NAN(param_2 + param_3) && !NAN(param_1))) {
    bVar1 = param_2 + param_3 < param_1;
  }
  if (bVar1) {
    return false;
  }
  return param_2 <= param_1 + param_3;
}

