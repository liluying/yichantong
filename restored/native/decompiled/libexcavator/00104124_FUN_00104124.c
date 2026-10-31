/* Artifact: libexcavator.so | Address: 00104124 | Ghidra static pseudocode; types require review. */

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00104124(undefined8 param_1,undefined8 param_2,size_t param_3,int param_4)

{
  undefined1 uVar1;
  undefined8 uVar2;
  void *__dest;
  uint uVar3;
  void *__src;
  size_t __n;
  int iVar4;
  long lVar5;
  int iVar6;
  long lVar7;
  int *piVar8;
  long unaff_x23;
  undefined8 extraout_d0;
  undefined1 auVar9 [12];
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
  size_t local_250;
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
  undefined1 auStack_1a0 [320];
  
  auVar9 = FUN_001061b4();
  uVar3 = auVar9._8_4_;
  uVar1 = param_4 - 3U == 0xd;
  if (0xd < param_4 - 3U) {
    uVar2 = 0xffffffff;
LAB_00104370:
    FUN_00106110(*(undefined8 *)(unaff_x23 + 0x28),uVar2);
    if (!(bool)uVar1) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return;
  }
  __n = param_3;
  __dest = (void *)FUN_0010612c(auStack_1a0);
  memcpy(__dest,__src,__n);
  local_270 = auVar9._0_8_;
  puStack_268 = auStack_1a0;
  local_260 = uVar3;
  local_258 = extraout_d0;
  local_250 = param_3;
  local_248 = param_4;
  memset(local_240,0,0xa0);
  local_298 = &local_270;
  local_280 = &LAB_001043a0;
  local_278 = (code *)0x0;
  local_288 = DAT_00107840;
  for (lVar5 = 0; lVar5 != 0xa0; lVar5 = lVar5 + 0x20) {
    *(undefined4 *)((long)local_240 + lVar5) = 8;
  }
  iVar4 = *auVar9._0_8_;
  if (iVar4 == 1) {
    local_278 = FUN_001043bc;
    if ((uVar3 >> 1 & 1) != 0) {
      local_240[1] = 8;
      uStack_230 = _UNK_001078c8;
      local_238 = _DAT_001078c0;
      uStack_210 = _UNK_001078a8;
      local_218 = _DAT_001078a0;
      local_21c = 8;
    }
  }
  else {
    if (iVar4 == 2) {
      local_278 = (code *)&LAB_00104484;
      if ((uVar3 >> 1 & 1) != 0) {
        local_240[1] = 8;
        uStack_230 = _UNK_001078c8;
        local_238 = _DAT_001078c0;
      }
      if ((uVar3 >> 2 & 1) != 0) {
        uStack_210 = _UNK_001078c8;
        local_218 = _DAT_001078c0;
        local_21c = 8;
      }
    }
    else {
      if (iVar4 != 3) goto LAB_00104308;
      local_278 = (code *)&LAB_00104548;
      if ((uVar3 >> 1 & 1) != 0) {
        local_240[1] = 8;
        uStack_230 = _UNK_001078c8;
        local_238 = _DAT_001078c0;
      }
    }
    if ((uVar3 >> 3 & 1) == 0) {
      if ((uVar3 >> 4 & 1) == 0) {
        if ((uVar3 >> 5 & 1) != 0) {
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
  iVar4 = 0;
  iVar6 = 5;
  lVar5 = 5;
  do {
    lVar7 = -lVar5;
    piVar8 = &iStack_25c + lVar5 * 8;
    do {
      lVar7 = lVar7 + 1;
      uVar1 = lVar7 == 1;
      if ((bool)uVar1) {
        puStack_290 = local_240;
        if (iVar4 == 0) {
          uVar2 = 0xfffffffe;
        }
        else {
          uVar2 = FUN_001063e8(&local_298);
          FUN_00105de8(uVar2,auStack_1a0);
          uVar2 = 0;
        }
        goto LAB_00104370;
      }
      if (*piVar8 != 0) {
        iVar4 = iVar4 + 1;
      }
      piVar8 = piVar8 + -8;
    } while (iVar4 != 0);
    iVar6 = iVar6 + -1;
    local_288 = CONCAT44(local_288._4_4_,iVar6);
    lVar5 = -lVar7;
  } while( true );
}

