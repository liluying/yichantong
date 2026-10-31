/* Artifact: libgnssparser.so | Address: 00101114 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_rtklink(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0xb0) = param_2;
  return;
}

