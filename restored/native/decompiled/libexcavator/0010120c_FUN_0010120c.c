/* Artifact: libexcavator.so | Address: 0010120c | Ghidra static pseudocode; types require review. */

void FUN_0010120c(undefined8 *param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 in_d3;
  
  *param_1 = *param_2;
  uVar2 = param_2[1];
  uVar1 = param_2[3];
  param_1[2] = param_2[2];
  param_1[1] = uVar2;
  param_1[3] = uVar1;
  uVar2 = param_2[4];
  uVar1 = param_2[6];
  param_1[5] = param_2[5];
  param_1[4] = uVar2;
  param_1[6] = uVar1;
  uVar2 = param_2[8];
  uVar3 = param_2[9];
  uVar1 = FUN_001070a4(param_2[7]);
  param_1[7] = uVar1;
  param_1[8] = uVar2;
  param_1[9] = uVar3;
  param_1[10] = in_d3;
  uVar2 = param_2[10];
  uVar1 = param_2[0xc];
  param_1[0xc] = param_2[0xb];
  param_1[0xb] = uVar2;
  param_1[0xd] = uVar1;
  uVar2 = param_2[0xe];
  uVar3 = param_2[0xf];
  uVar1 = FUN_001070a4(param_2[0xd]);
  param_1[0xe] = uVar1;
  param_1[0xf] = uVar2;
  param_1[0x10] = uVar3;
  param_1[0x11] = in_d3;
  *(undefined4 *)(param_1 + 0x12) = *(undefined4 *)(param_2 + 0x10);
  return;
}

