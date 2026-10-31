/* Artifact: libexcavator.so | Address: 00104600 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: thunk_FUN_001063d4 */
/* WARNING: Inlined function: FUN_00105f00 */
/* WARNING: Inlined function: FUN_00106084 */
/* WARNING: Inlined function: FUN_00105be8 */
/* WARNING: Inlined function: FUN_00106090 */
/* WARNING: Inlined function: FUN_00105b04 */
/* WARNING: Inlined function: FUN_00105fdc */
/* WARNING: Inlined function: FUN_0010607c */

void FUN_00104600(undefined8 param_1,long param_2,int param_3,undefined8 *param_4)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined8 local_368;
  undefined8 uStack_360;
  undefined8 local_358;
  undefined8 uStack_350;
  undefined8 uStack_2b0;
  undefined8 uStack_2a8;
  undefined8 uStack_2a0;
  undefined8 local_298;
  undefined8 uStack_290;
  undefined8 local_288;
  undefined8 auStack_1f0 [7];
  undefined1 auStack_1b8 [48];
  undefined8 local_188;
  undefined1 auStack_180 [48];
  undefined8 local_150;
  undefined1 auStack_148 [48];
  undefined8 local_118;
  undefined1 auStack_110 [48];
  undefined8 local_e0;
  undefined1 auStack_d8 [48];
  undefined8 local_a8;
  long local_a0;
  
  lVar1 = tpidr_el0;
  local_a0 = *(long *)(lVar1 + 0x28);
  for (lVar4 = 0; lVar4 != 0x150; lVar4 = lVar4 + 0x38) {
    *(undefined8 *)(auStack_1b8 + lVar4 + -8) = 0;
    *(undefined8 *)((long)auStack_1f0 + lVar4 + 0x18) = 0;
    *(undefined8 *)((long)auStack_1f0 + lVar4 + 0x10) = 0;
    *(undefined8 *)((long)auStack_1f0 + lVar4 + 0x28) = 0;
    *(undefined8 *)((long)auStack_1f0 + lVar4 + 0x20) = 0;
    *(undefined8 *)((long)auStack_1f0 + lVar4 + 8) = 0;
    *(undefined8 *)((long)auStack_1f0 + lVar4) = 0;
  }
  lVar4 = 0;
  do {
    if (param_3 <= lVar4) {
      for (lVar4 = 0; lVar4 != 0x150; lVar4 = lVar4 + 0x38) {
        FUN_00106378(0,(long)auStack_1f0 + lVar4);
      }
      uVar3 = 0;
      *param_4 = auStack_1f0[6];
      param_4[1] = local_188;
      param_4[2] = local_150;
      param_4[3] = local_118;
      param_4[4] = local_e0;
      param_4[5] = local_a8;
LAB_001047dc:
      if (*(long *)(lVar1 + 0x28) == local_a0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar3);
    }
    iVar2 = FUN_00103d54(param_1,param_2,&local_368);
    if (iVar2 != 0) {
      uVar3 = 0xfffffffe;
      goto LAB_001047dc;
    }
    uVar3 = local_358;
    FUN_00107478(local_368,uStack_360,local_358,uStack_350,uStack_2b0,uStack_2a8,uStack_2a0);
    uVar7 = *(undefined8 *)(param_2 + 0x10);
    uVar5 = FUN_001059f4(*(undefined8 *)(param_2 + 8),uVar7);
    uVar9 = local_358;
    FUN_00107478(local_368,uStack_360,local_358,uStack_350,local_298,uStack_290,local_288);
    uVar8 = *(undefined8 *)(param_2 + 0x10);
    uVar6 = FUN_001059f4(*(undefined8 *)(param_2 + 8),uVar8);
    uVar5 = FUN_00106e70(uVar5,uVar7,uVar3,*(undefined8 *)(param_2 + 0xe0),
                         *(undefined8 *)(param_2 + 0xe8),*(undefined8 *)(param_2 + 0xf0));
    uVar6 = FUN_00106e70(uVar6,uVar8,uVar9,*(undefined8 *)(param_2 + 0xf8),
                         *(undefined8 *)(param_2 + 0x100),*(undefined8 *)(param_2 + 0x108));
    FUN_001062d0(uVar5,auStack_1f0);
    FUN_001062d0(uVar7,auStack_1b8);
    FUN_001062d0(uVar3,auStack_180);
    FUN_001062d0(uVar6,auStack_148);
    FUN_001062d0(uVar8,auStack_110);
    FUN_001062d0(uVar9,auStack_d8);
    lVar4 = lVar4 + 1;
    param_2 = param_2 + 0x110;
  } while( true );
}

