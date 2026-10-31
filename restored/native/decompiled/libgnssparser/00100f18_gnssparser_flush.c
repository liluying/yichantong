/* Artifact: libgnssparser.so | Address: 00100f18 | Ghidra static pseudocode; types require review. */

void gnssparser_flush(long param_1)

{
  long extraout_x8;
  undefined8 *unaff_x19;
  
  FUN_00102938(*(undefined8 *)(param_1 + 0x20));
  if ((extraout_x8 != 0) && (*(int *)((long)unaff_x19 + 0xc4) != 0)) {
    FUN_0010291c(*unaff_x19);
  }
  unaff_x19[0x18] = 0;
  unaff_x19[0x19] = 0;
  *(undefined4 *)(unaff_x19 + 0x1a) = 0;
  unaff_x19[0x1b] = 0;
  unaff_x19[0x1c] = 0;
  *(undefined8 *)((long)unaff_x19 + 0x114) = 0;
  *(undefined8 *)((long)unaff_x19 + 0x10c) = 0;
  return;
}

