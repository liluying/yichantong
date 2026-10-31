/* Artifact: libexcavator.so | Address: 00101318 | Ghidra static pseudocode; types require review. */

void libexcavator_adjust_height(void)

{
  undefined1 in_ZR;
  undefined1 in_CY;
  undefined8 uVar1;
  long unaff_x25;
  long unaff_x26;
  
  FUN_001015d8();
  if (!(bool)in_CY || (bool)in_ZR) {
    FUN_001015b4();
    for (; in_ZR = unaff_x25 == unaff_x26, unaff_x25 < unaff_x26; unaff_x25 = unaff_x25 + 1) {
      FUN_001015f8();
    }
    FUN_00101604();
    uVar1 = FUN_00104124();
  }
  else {
    uVar1 = 0xffffffff;
  }
  FUN_0010161c(uVar1);
  if ((bool)in_ZR) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

