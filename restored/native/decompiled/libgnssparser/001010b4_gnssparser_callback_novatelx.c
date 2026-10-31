/* Artifact: libgnssparser.so | Address: 001010b4 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_novatelx(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x58) = param_2;
  return;
}

