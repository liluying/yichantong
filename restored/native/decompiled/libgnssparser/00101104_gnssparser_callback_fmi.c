/* Artifact: libgnssparser.so | Address: 00101104 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_fmi(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0xa0) = param_2;
  return;
}

