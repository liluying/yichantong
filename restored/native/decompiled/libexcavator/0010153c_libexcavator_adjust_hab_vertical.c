/* Artifact: libexcavator.so | Address: 0010153c | Ghidra static pseudocode; types require review. */

void libexcavator_adjust_hab_vertical(undefined8 param_1)

{
  long lVar1;
  undefined1 auStack_c0 [152];
  long local_28;
  
  lVar1 = tpidr_el0;
  local_28 = *(long *)(lVar1 + 0x28);
  FUN_0010120c(auStack_c0);
  FUN_00104820(param_1,auStack_c0);
  if (*(long *)(lVar1 + 0x28) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

