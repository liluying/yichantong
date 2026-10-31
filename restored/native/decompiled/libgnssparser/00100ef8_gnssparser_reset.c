/* Artifact: libgnssparser.so | Address: 00100ef8 | Ghidra static pseudocode; types require review. */

void gnssparser_reset(long param_1)

{
  *(undefined8 *)(param_1 + 0xc0) = 0;
  *(undefined8 *)(param_1 + 200) = 0;
  *(undefined4 *)(param_1 + 0xd0) = 0;
  *(undefined8 *)(param_1 + 0xd8) = 0;
  *(undefined8 *)(param_1 + 0xe0) = 0;
  *(undefined8 *)(param_1 + 0x114) = 0;
  *(undefined8 *)(param_1 + 0x10c) = 0;
  return;
}

