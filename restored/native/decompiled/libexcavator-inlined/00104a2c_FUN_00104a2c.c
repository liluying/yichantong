/* Artifact: libexcavator.so | Address: 00104a2c | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001060c8 */
/* WARNING: Inlined function: FUN_00105d4c */
/* WARNING: Inlined function: FUN_00105a20 */
/* WARNING: Inlined function: FUN_00105f14 */
/* WARNING: Inlined function: FUN_00105a8c */

undefined1  [16] FUN_00104a2c(void)

{
  long unaff_x19;
  long unaff_x29;
  undefined8 uVar1;
  undefined8 uVar2;
  double dVar3;
  undefined1 auVar4 [16];
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uStack_168;
  undefined8 uStack_160;
  undefined8 uStack_158;
  undefined8 uStack_150;
  undefined8 uStack_148;
  undefined8 uStack_140;
  
  FUN_001059b8();
  FUN_00106e70(uStack_150,uStack_148,uStack_140,uStack_168,uStack_160,uStack_158);
  uVar1 = FUN_001058cc();
  uVar5 = uStack_148;
  uVar6 = uStack_140;
  FUN_00106e10();
  FUN_001058cc();
  uVar2 = FUN_00106e90();
  dVar3 = (double)FUN_00106f90(uVar1,uStack_148,uStack_140,uVar2,uVar5,uVar6);
  if (*(long *)(unaff_x19 + 0x28) == *(long *)(unaff_x29 + -0x38)) {
    auVar4._0_8_ = ABS(dVar3);
    auVar4._8_8_ = 0;
    return auVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

