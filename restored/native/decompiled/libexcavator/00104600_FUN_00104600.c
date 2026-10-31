/* Artifact: libexcavator.so | Address: 00104600 | Ghidra static pseudocode; types require review. */

void FUN_00104600(undefined1 param_1 [16],undefined1 param_2 [16],undefined8 param_3,
                 undefined8 param_4,long param_5,int param_6,undefined8 *param_7)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 local_368;
  undefined8 uStack_360;
  undefined8 local_358;
  undefined1 auStack_1f0 [48];
  undefined8 local_1c0;
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
    thunk_FUN_001063d4(auStack_1f0 + lVar4);
  }
  lVar4 = 0;
  do {
    if (param_6 <= lVar4) {
      for (lVar4 = 0; lVar4 != 0x150; lVar4 = lVar4 + 0x38) {
        FUN_0010607c(auStack_1f0 + lVar4);
      }
      uVar3 = 0;
      *param_7 = local_1c0;
      param_7[1] = local_188;
      param_7[2] = local_150;
      param_7[3] = local_118;
      param_7[4] = local_e0;
      param_7[5] = local_a8;
LAB_001047dc:
      if (*(long *)(lVar1 + 0x28) == local_a0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar3);
    }
    iVar2 = FUN_00103d54(param_4,param_5,&local_368);
    if (iVar2 != 0) {
      uVar3 = 0xfffffffe;
      goto LAB_001047dc;
    }
    FUN_00105f00();
    FUN_001059f4(*(undefined8 *)(param_5 + 8),*(undefined8 *)(param_5 + 0x10));
    uVar7 = local_358;
    FUN_00106084();
    FUN_00107478(local_368,uStack_360,uVar7);
    uVar6 = *(undefined8 *)(param_5 + 0x10);
    FUN_001059f4(*(undefined8 *)(param_5 + 8));
    FUN_00105be8();
    FUN_00106e70();
    FUN_00106090();
    FUN_00105b04();
    uVar5 = FUN_00106e70();
    uVar3 = uVar7;
    FUN_001062d0(auStack_1f0);
    FUN_00105fdc(auStack_1b8);
    FUN_001062d0(param_3,auStack_180);
    FUN_001062d0(uVar5,auStack_148);
    FUN_001062d0(uVar6,auStack_110);
    FUN_001062d0(uVar7,auStack_d8);
    lVar4 = lVar4 + 1;
    param_5 = param_5 + 0x110;
    param_3 = uVar3;
  } while( true );
}

