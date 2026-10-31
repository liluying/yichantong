/* Artifact: libgnssparser.so | Address: 001010cc | Ghidra static pseudocode; types require review. */

void gnssparser_callback_hemisphere(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x70) = param_2;
  return;
}

