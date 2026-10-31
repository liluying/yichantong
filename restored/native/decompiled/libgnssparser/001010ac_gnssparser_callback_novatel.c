/* Artifact: libgnssparser.so | Address: 001010ac | Ghidra static pseudocode; types require review. */

void gnssparser_callback_novatel(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x50) = param_2;
  return;
}

