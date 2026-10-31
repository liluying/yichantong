/* Artifact: libgnssparser.so | Address: 00100f64 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_line(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x18) = param_2;
  return;
}

