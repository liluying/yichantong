/* Artifact: libexcavator.so | Address: 00104820 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_0010612c */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00104820(int *param_1,long param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  int iVar5;
  int **local_218;
  undefined8 *puStack_210;
  undefined8 local_208;
  code *local_200;
  code *pcStack_1f8;
  undefined8 local_1f0;
  undefined8 local_1e8;
  undefined8 uStack_1e0;
  undefined8 local_1d8;
  int *local_1d0;
  undefined1 *puStack_1c8;
  long local_1c0;
  undefined1 auStack_1b8 [312];
  long local_80;
  
  uVar3 = _UNK_001078c8;
  uVar2 = _DAT_001078c0;
  uVar4 = DAT_00107848;
  lVar1 = tpidr_el0;
  local_80 = *(long *)(lVar1 + 0x28);
  if (*param_1 == 2) {
    if (*(int *)(param_2 + 0x90) == 0) {
      uVar4 = 0xfffffffe;
    }
    else {
      iVar5 = 2;
      do {
        memcpy(auStack_1b8,param_1,0x138);
        puStack_1c8 = auStack_1b8;
        pcStack_1f8 = (code *)&LAB_001049c4;
        local_200 = (code *)&DAT_0010496c;
        if (iVar5 != 2) {
          pcStack_1f8 = FUN_00104a74;
          local_200 = FUN_00104a2c;
        }
        local_1d8 = 0;
        local_208 = uVar4;
        local_1f0 = 0x800000008;
        uStack_1e0 = uVar3;
        local_1e8 = uVar2;
        local_218 = &local_1d0;
        puStack_210 = &local_1f0;
        local_1d0 = param_1;
        local_1c0 = param_2;
        FUN_001063e8(&local_218);
        memcpy(param_1,auStack_1b8,0x138);
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
      uVar4 = 0;
    }
  }
  else {
    uVar4 = 0xffffffff;
  }
  if (*(long *)(lVar1 + 0x28) != local_80) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}

