/* Artifact: libgnssparser.so | Address: 00100eb8 | Ghidra static pseudocode; types require review. */

void gnssparser_init(undefined8 *param_1,undefined8 param_2,undefined4 param_3,undefined8 param_4)

{
  memset(param_1,0,0x130);
  *param_1 = param_2;
  *(undefined4 *)(param_1 + 1) = param_3;
  param_1[2] = param_4;
  FUN_001029dc();
  return;
}

