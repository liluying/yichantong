/* Artifact: libexcavator.so | Address: 001037d4 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001059b8 */
/* WARNING: Inlined function: FUN_001060c8 */
/* WARNING: Inlined function: FUN_00105d4c */
/* WARNING: Inlined function: FUN_00106e90 */
/* WARNING: Inlined function: FUN_00105a20 */
/* WARNING: Inlined function: FUN_00105f14 */
/* WARNING: Inlined function: FUN_00105a8c */
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined1  [16] FUN_001037d4(long *param_1)

{
  long lVar1;
  double dVar2;
  double dVar3;
  undefined1 auVar4 [16];
  double dVar5;
  double dVar6;
  double dVar7;
  double dVar8;
  double dVar9;
  undefined1 auStack_1c0 [88];
  double dStack_168;
  double dStack_160;
  double dStack_158;
  double dStack_150;
  double dStack_148;
  double dStack_140;
  long lStack_48;
  
  lVar1 = tpidr_el0;
  lStack_48 = *(long *)(lVar1 + 0x28);
  FUN_00103d54(*(undefined8 *)(*param_1 + 8),*(undefined8 *)(*param_1 + 0x10),auStack_1c0);
  dVar5 = dStack_148 - dStack_160;
  dVar7 = dStack_140 - dStack_158;
  dVar2 = (double)FUN_001058cc(dStack_150 - dStack_168);
  dVar6 = 0.0;
  dVar8 = 0.0;
  dVar3 = (double)FUN_001058cc(0x3ff0000000000000);
  dVar9 = SQRT(dVar8 * dVar8 + dVar3 * dVar3 + dVar6 * dVar6);
  if (9.5367431640625e-07 <= dVar9) {
    dVar9 = 1.0 / dVar9;
    dVar3 = dVar3 * dVar9;
    dVar6 = dVar6 * dVar9;
    dVar8 = dVar8 * dVar9;
  }
  else {
    dVar6 = 0.0;
    dVar3 = 1.0;
    dVar8 = 0.0;
  }
  if (*(long *)(lVar1 + 0x28) == lStack_48) {
    auVar4._0_8_ = ABS(dVar7 * dVar8 + dVar2 * dVar3 + dVar5 * dVar6);
    auVar4._8_8_ = 0;
    return auVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

