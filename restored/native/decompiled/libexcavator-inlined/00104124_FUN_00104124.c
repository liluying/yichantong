/* Artifact: libexcavator.so | Address: 00104124 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_001061b4 */
/* WARNING: Inlined function: FUN_00106110 */
/* WARNING: Inlined function: FUN_0010612c */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00104124(undefined8 param_1,int *param_2,uint param_3,undefined8 param_4,int param_5)

{
  long lVar1;
  undefined8 uVar2;
  int iVar3;
  long lVar4;
  int iVar5;
  long lVar6;
  int *piVar7;
  int **local_298;
  undefined4 *puStack_290;
  undefined8 local_288;
  undefined1 *local_280;
  code *local_278;
  int *local_270;
  undefined1 *puStack_268;
  uint local_260;
  int iStack_25c;
  undefined8 local_258;
  undefined8 local_250;
  int local_248;
  undefined4 local_240 [2];
  undefined8 local_238;
  undefined8 uStack_230;
  undefined4 local_21c;
  undefined8 local_218;
  undefined8 uStack_210;
  undefined4 local_1fc;
  undefined8 local_1f8;
  undefined8 uStack_1f0;
  undefined4 local_1dc;
  undefined8 local_1d8;
  undefined8 uStack_1d0;
  undefined4 local_1bc;
  undefined8 local_1b8;
  undefined8 uStack_1b0;
  undefined1 auStack_1a0 [312];
  long local_68;
  
  lVar1 = tpidr_el0;
  local_68 = *(long *)(lVar1 + 0x28);
  if (0xd < param_5 - 3U) {
    uVar2 = 0xffffffff;
LAB_00104370:
    if (*(long *)(lVar1 + 0x28) != local_68) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar2);
    }
    return;
  }
  memcpy(auStack_1a0,param_2,0x138);
  local_270 = param_2;
  puStack_268 = auStack_1a0;
  local_260 = param_3;
  local_258 = param_1;
  local_250 = param_4;
  local_248 = param_5;
  memset(local_240,0,0xa0);
  local_298 = &local_270;
  local_280 = &LAB_001043a0;
  local_278 = (code *)0x0;
  local_288 = DAT_00107840;
  for (lVar4 = 0; lVar4 != 0xa0; lVar4 = lVar4 + 0x20) {
    *(undefined4 *)((long)local_240 + lVar4) = 8;
  }
  iVar3 = *param_2;
  if (iVar3 == 1) {
    local_278 = FUN_001043bc;
    if ((param_3 >> 1 & 1) != 0) {
      local_240[1] = 8;
      uStack_230 = _UNK_001078c8;
      local_238 = _DAT_001078c0;
      uStack_210 = _UNK_001078a8;
      local_218 = _DAT_001078a0;
      local_21c = 8;
    }
  }
  else {
    if (iVar3 == 2) {
      local_278 = (code *)&LAB_00104484;
      if ((param_3 >> 1 & 1) != 0) {
        local_240[1] = 8;
        uStack_230 = _UNK_001078c8;
        local_238 = _DAT_001078c0;
      }
      if ((param_3 >> 2 & 1) != 0) {
        uStack_210 = _UNK_001078c8;
        local_218 = _DAT_001078c0;
        local_21c = 8;
      }
    }
    else {
      if (iVar3 != 3) goto LAB_00104308;
      local_278 = (code *)&LAB_00104548;
      if ((param_3 >> 1 & 1) != 0) {
        local_240[1] = 8;
        uStack_230 = _UNK_001078c8;
        local_238 = _DAT_001078c0;
      }
    }
    if ((param_3 >> 3 & 1) == 0) {
      if ((param_3 >> 4 & 1) == 0) {
        if ((param_3 >> 5 & 1) != 0) {
          uStack_1b0 = _UNK_00107898;
          local_1b8 = _DAT_00107890;
          local_1bc = 8;
        }
      }
      else {
        uStack_1f0 = _UNK_001078c8;
        local_1f8 = _DAT_001078c0;
        local_1fc = 8;
      }
    }
    else {
      uStack_1f0 = _UNK_00107898;
      local_1f8 = _DAT_00107890;
      local_1fc = 8;
      uStack_1d0 = _UNK_00107898;
      local_1d8 = _DAT_00107890;
      local_1dc = 8;
    }
  }
LAB_00104308:
  iVar3 = 0;
  iVar5 = 5;
  lVar4 = 5;
  do {
    lVar6 = -lVar4;
    piVar7 = &iStack_25c + lVar4 * 8;
    do {
      lVar6 = lVar6 + 1;
      if (lVar6 == 1) {
        puStack_290 = local_240;
        if (iVar3 == 0) {
          uVar2 = 0xfffffffe;
        }
        else {
          FUN_001063e8(&local_298);
          memcpy(param_2,auStack_1a0,0x138);
          uVar2 = 0;
        }
        goto LAB_00104370;
      }
      if (*piVar7 != 0) {
        iVar3 = iVar3 + 1;
      }
      piVar7 = piVar7 + -8;
    } while (iVar3 != 0);
    iVar5 = iVar5 + -1;
    local_288 = CONCAT44(local_288._4_4_,iVar5);
    lVar4 = -lVar6;
  } while( true );
}

