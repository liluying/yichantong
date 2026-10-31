/* Artifact: libexcavator.so | Address: 00105adc | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Inlined function: FUN_00106fe8 */

undefined1  [16] FUN_00105adc(void)

{
  undefined8 *puVar1;
  long lVar2;
  long unaff_x19;
  long unaff_x20;
  long unaff_x21;
  long unaff_x23;
  undefined8 uVar3;
  undefined8 uVar5;
  undefined1 auVar4 [16];
  
  puVar1 = (undefined8 *)(unaff_x23 + unaff_x21);
  uVar5 = puVar1[1];
  uVar3 = *puVar1;
  lVar2 = unaff_x19 + unaff_x21;
  *(undefined8 *)(lVar2 + 200) = puVar1[2];
  *(undefined8 *)(lVar2 + 0xc0) = uVar5;
  *(undefined8 *)(lVar2 + 0xb8) = uVar3;
  auVar4._0_8_ = SQRT(*(double *)(unaff_x20 + 0x58) * *(double *)(unaff_x20 + 0x58) +
                      *(double *)(unaff_x20 + 0x60) * *(double *)(unaff_x20 + 0x60));
  auVar4._8_8_ = 0;
  return auVar4;
}

