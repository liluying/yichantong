/* Artifact: libexcavator.so | Address: 0010147c | Ghidra static pseudocode; types require review. */

void libexcavator_adjust_rtk(undefined8 param_1,long param_2,int param_3)

{
  long lVar1;
  undefined8 uVar2;
  undefined1 *puVar3;
  long lVar4;
  undefined1 auStack_1158 [4352];
  long local_58;
  
  lVar1 = tpidr_el0;
  local_58 = *(long *)(lVar1 + 0x28);
  if (param_3 - 1U < 0x10) {
    puVar3 = auStack_1158;
    for (lVar4 = 0; lVar4 < param_3; lVar4 = lVar4 + 1) {
      FUN_0010120c(puVar3,param_2);
      puVar3 = puVar3 + 0x110;
      param_2 = param_2 + 0x100;
    }
    uVar2 = FUN_00104a9c(param_1,auStack_1158,param_3);
  }
  else {
    uVar2 = 0xffffffff;
  }
  if (*(long *)(lVar1 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

