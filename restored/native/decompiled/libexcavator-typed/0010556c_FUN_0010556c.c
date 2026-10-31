/* Artifact: libexcavator.so | Address: 0010556c | Ghidra static pseudocode; types require review. */

undefined8 FUN_0010556c(int *param_1,void *param_2)

{
  if (*param_1 == 3) {
    param_1 = param_1 + 0x16;
  }
  else {
    if (*param_1 != 2) {
      return 0xffffffff;
    }
    param_1 = param_1 + 0x18;
  }
  memcpy(param_2,param_1,0x68);
  return 0;
}

