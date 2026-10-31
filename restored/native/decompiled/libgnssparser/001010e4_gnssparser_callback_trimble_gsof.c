/* Artifact: libgnssparser.so | Address: 001010e4 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_trimble_gsof
               (long param_1,undefined8 param_2,undefined8 param_3,undefined4 param_4)

{
  *(undefined8 *)(param_1 + 0x88) = param_2;
  *(undefined8 *)(param_1 + 0x100) = param_3;
  *(undefined4 *)(param_1 + 0x108) = param_4;
  return;
}

