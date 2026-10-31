/* Artifact: libexcavator.so | Address: 00101a14 | Ghidra static pseudocode; types require review. */

void FUN_00101a14(void)

{
  long lVar1;
  undefined1 uVar2;
  int iVar3;
  long *plVar4;
  long unaff_x19;
  long unaff_x22;
  long lVar5;
  long unaff_x24;
  long unaff_x25;
  undefined8 uVar6;
  undefined1 auStack_110 [48];
  undefined8 local_e0;
  undefined8 local_a8;
  undefined8 local_70;
  
  plVar4 = (long *)FUN_0010618c();
  lVar5 = *plVar4;
  for (; unaff_x19 != 0xa8; unaff_x19 = unaff_x19 + 0x38) {
    thunk_FUN_001063d4(auStack_110 + unaff_x19);
  }
  FUN_00106140(auStack_110);
  do {
    uVar2 = unaff_x25 == *(int *)(lVar5 + 0x18);
    if (*(int *)(lVar5 + 0x18) <= unaff_x25) {
      for (lVar5 = 0; uVar2 = lVar5 == 0xa8, !(bool)uVar2; lVar5 = lVar5 + 0x38) {
        FUN_00106328(auStack_110 + lVar5);
      }
      uVar6 = FUN_00105f84(local_e0,local_a8,local_70);
LAB_00101af8:
      FUN_00106110(*(undefined8 *)(unaff_x22 + 0x28),uVar6);
      if ((bool)uVar2) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    lVar1 = *(long *)(lVar5 + 0x10) + unaff_x24;
    iVar3 = FUN_00103d54(*(undefined8 *)(lVar5 + 8),lVar1,&stack0xffffffffffffffa8);
    if (iVar3 != 0) {
      uVar6 = 0xc000000000000000;
      goto LAB_00101af8;
    }
    FUN_00105f00();
    FUN_001059f4(*(undefined8 *)(lVar1 + 8),*(undefined8 *)(lVar1 + 0x10));
    FUN_00105ee0(auStack_110);
    FUN_00106138(0xa8);
    FUN_00105fdc(auStack_110);
    unaff_x25 = unaff_x25 + 1;
    unaff_x24 = unaff_x24 + 0x98;
  } while( true );
}

