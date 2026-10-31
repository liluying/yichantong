/* Artifact: libgnssparser.so | Address: 00102850 | Ghidra static pseudocode; types require review. */

void gnssparser_get_position(long param_1,undefined8 *param_2,undefined8 *param_3)

{
  if (param_2 != (undefined8 *)0x0) {
    *param_2 = *(undefined8 *)(param_1 + 0xe0);
  }
  if (param_3 != (undefined8 *)0x0) {
    *param_3 = *(undefined8 *)(param_1 + 0xd8);
  }
  return;
}

