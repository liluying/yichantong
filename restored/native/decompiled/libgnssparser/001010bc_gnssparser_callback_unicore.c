/* Artifact: libgnssparser.so | Address: 001010bc | Ghidra static pseudocode; types require review. */

void gnssparser_callback_unicore(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x60) = param_2;
  return;
}

