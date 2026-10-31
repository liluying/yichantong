/* Artifact: libgnssparser.so | Address: 00102dd0 | Ghidra static pseudocode; types require review. */

undefined8 FUN_00102dd0(ushort *param_1,uint param_2)

{
  *param_1 = (ushort)(param_2 >> 8) & 0xff | (ushort)((param_2 & 0xff00ff) << 8);
  return 2;
}

