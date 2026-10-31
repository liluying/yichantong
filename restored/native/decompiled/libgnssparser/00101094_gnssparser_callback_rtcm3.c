/* Artifact: libgnssparser.so | Address: 00101094 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_rtcm3(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x40) = param_2;
  return;
}

