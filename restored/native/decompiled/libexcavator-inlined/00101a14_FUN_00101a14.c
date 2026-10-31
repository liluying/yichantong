/* Artifact: libexcavator.so | Address: 00101a14 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_0010618c */
/* WARNING: Inlined function: thunk_FUN_001063d4 */
/* WARNING: Inlined function: FUN_00106140 */
/* WARNING: Inlined function: FUN_00105f00 */
/* WARNING: Inlined function: FUN_00105ee0 */
/* WARNING: Inlined function: FUN_00106138 */
/* WARNING: Inlined function: FUN_00105fdc */
/* WARNING: Inlined function: FUN_00106110 */
/* WARNING: Inlined function: FUN_00105f84 */

void FUN_00101a14(long *param_1)

{
  long lVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  double dVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined8 uStack_288;
  undefined8 uStack_280;
  undefined8 uStack_278;
  undefined8 uStack_270;
  undefined8 uStack_1d0;
  undefined8 uStack_1c8;
  undefined8 uStack_1c0;
  double adStack_110 [7];
  undefined1 auStack_d8 [48];
  double local_a8;
  undefined1 auStack_a0 [48];
  double local_70;
  long local_68;
  
  lVar2 = tpidr_el0;
  local_68 = *(long *)(lVar2 + 0x28);
  lVar5 = *param_1;
  for (lVar4 = 0; lVar4 != 0xa8; lVar4 = lVar4 + 0x38) {
    *(undefined8 *)(auStack_d8 + lVar4 + -8) = 0;
    *(undefined8 *)((long)adStack_110 + lVar4 + 0x18) = 0;
    *(undefined8 *)((long)adStack_110 + lVar4 + 0x10) = 0;
    *(undefined8 *)((long)adStack_110 + lVar4 + 0x28) = 0;
    *(undefined8 *)((long)adStack_110 + lVar4 + 0x20) = 0;
    *(undefined8 *)((long)adStack_110 + lVar4 + 8) = 0;
    *(undefined8 *)((long)adStack_110 + lVar4) = 0;
  }
  lVar6 = 0;
  lVar4 = 0;
  do {
    if (*(int *)(lVar5 + 0x18) <= lVar4) {
      for (lVar4 = 0; lVar4 != 0xa8; lVar4 = lVar4 + 0x38) {
        FUN_00106328((long)adStack_110 + lVar4);
      }
      dVar7 = SQRT(adStack_110[6] * adStack_110[6] + local_a8 * local_a8 + local_70 * local_70);
LAB_00101af8:
      if (*(long *)(lVar2 + 0x28) == local_68) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(dVar7);
    }
    lVar1 = *(long *)(lVar5 + 0x10) + lVar6;
    iVar3 = FUN_00103d54(*(undefined8 *)(lVar5 + 8),lVar1,&uStack_288);
    if (iVar3 != 0) {
      dVar7 = -2.0;
      goto LAB_00101af8;
    }
    uVar9 = uStack_278;
    FUN_00107478(uStack_288,uStack_280,uStack_278,uStack_270,uStack_1d0,uStack_1c8,uStack_1c0);
    uVar8 = *(undefined8 *)(lVar1 + 0x10);
    FUN_001059f4(*(undefined8 *)(lVar1 + 8),uVar8);
    FUN_001062d0(adStack_110);
    FUN_001062d0(uVar8,auStack_d8);
    FUN_001062d0(uVar9,auStack_a0);
    lVar4 = lVar4 + 1;
    lVar6 = lVar6 + 0x98;
  } while( true );
}

