/* Artifact: libgnssparser.so | Address: 0010110c | Ghidra static pseudocode; types require review. */

void gnssparser_callback_fss(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0xa8) = param_2;
  return;
}

