/* Artifact: libgnssparser.so | Address: 0010109c | Ghidra static pseudocode; types require review. */

void gnssparser_callback_rtcm2(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x38) = param_2;
  return;
}

