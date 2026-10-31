/* Artifact: libgnssparser.so | Address: 00100f6c | Ghidra static pseudocode; types require review. */

void gnssparser_callback_crack(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x20) = param_2;
  return;
}

