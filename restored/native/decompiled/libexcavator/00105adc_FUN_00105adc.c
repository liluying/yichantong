/* Artifact: libexcavator.so | Address: 00105adc | Ghidra static pseudocode; types require review. */

void FUN_00105adc(void)

{
  undefined8 *puVar1;
  long lVar2;
  long unaff_x19;
  long unaff_x20;
  long unaff_x21;
  long unaff_x23;
  undefined8 uVar3;
  undefined8 uVar4;
  
  puVar1 = (undefined8 *)(unaff_x23 + unaff_x21);
  uVar4 = puVar1[1];
  uVar3 = *puVar1;
  lVar2 = unaff_x19 + unaff_x21;
  *(undefined8 *)(lVar2 + 200) = puVar1[2];
  *(undefined8 *)(lVar2 + 0xc0) = uVar4;
  *(undefined8 *)(lVar2 + 0xb8) = uVar3;
  FUN_00106fe8(*(undefined8 *)(unaff_x20 + 0x58),*(undefined8 *)(unaff_x20 + 0x60),
               *(undefined8 *)(unaff_x20 + 0x68));
  return;
}

