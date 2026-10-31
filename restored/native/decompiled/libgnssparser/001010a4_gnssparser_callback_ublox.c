/* Artifact: libgnssparser.so | Address: 001010a4 | Ghidra static pseudocode; types require review. */

void gnssparser_callback_ublox(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x48) = param_2;
  return;
}

