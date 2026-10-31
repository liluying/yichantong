/* Artifact: libgnssparser.so | Address: 001010c4 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_asensing(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x68) = param_2;
  return;
}

