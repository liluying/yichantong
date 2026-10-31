/* Artifact: libexcavator.so | Address: 001037d4 | Ghidra static pseudocode; types require review. */

void FUN_001037d4(void)

{
  undefined1 in_ZR;
  long unaff_x19;
  
  FUN_001059b8();
  FUN_001060c8();
  FUN_001058cc();
  FUN_00105d4c();
  FUN_001058cc();
  FUN_00106e90();
  FUN_00105a20();
  FUN_00105f14(*(undefined8 *)(unaff_x19 + 0x28));
  if ((bool)in_ZR) {
    FUN_00105a8c();
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

