/* Artifact: libexcavator.so | Address: 00101154 | Ghidra static pseudocode; types require review. */

void libexcavator_cali_mode_1_1(undefined8 param_1,undefined8 *param_2)

{
  long lVar1;
  undefined1 *puVar2;
  long lVar3;
  long lVar4;
  undefined8 local_a00;
  undefined8 uStack_9f8;
  undefined1 *local_9f0;
  int local_9e8;
  undefined1 auStack_9d8 [2432];
  long local_58;
  
  lVar1 = tpidr_el0;
  local_58 = *(long *)(lVar1 + 0x28);
  lVar3 = 0;
  lVar4 = 0;
  puVar2 = auStack_9d8;
  while( true ) {
    local_9e8 = *(int *)(param_2 + 3);
    if (local_9e8 <= lVar4) break;
    FUN_0010120c(puVar2,param_2[2] + lVar3);
    lVar4 = lVar4 + 1;
    lVar3 = lVar3 + 0x88;
    puVar2 = puVar2 + 0x98;
  }
  uStack_9f8 = param_2[1];
  local_a00 = *param_2;
  local_9f0 = auStack_9d8;
  FUN_001018b4(param_1,&local_a00);
  if (*(long *)(lVar1 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

