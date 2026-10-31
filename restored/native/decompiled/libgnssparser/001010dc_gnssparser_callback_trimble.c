/* Artifact: libgnssparser.so | Address: 001010dc | Ghidra static pseudocode; types require review. */

void gnssparser_callback_trimble(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x80) = param_2;
  return;
}

