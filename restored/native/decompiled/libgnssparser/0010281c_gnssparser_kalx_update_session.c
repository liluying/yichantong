/* Artifact: libgnssparser.so | Address: 0010281c | Ghidra static pseudocode; types require review. */

void gnssparser_kalx_update_session(long param_1,short param_2)

{
  undefined2 uVar1;
  
  if (param_2 == 0) {
    *(undefined4 *)(param_1 + 0xea) = 0;
    return;
  }
  if (*(short *)(param_1 + 0xec) != 0) {
    uVar1 = *(undefined2 *)(param_1 + 0xea);
    *(short *)(param_1 + 0xea) = param_2;
    *(undefined2 *)(param_1 + 0xec) = uVar1;
    return;
  }
  *(short *)(param_1 + 0xec) = param_2;
  *(short *)(param_1 + 0xea) = param_2;
  return;
}

