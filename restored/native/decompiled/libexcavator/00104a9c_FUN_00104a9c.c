/* Artifact: libexcavator.so | Address: 00104a9c | Ghidra static pseudocode; types require review. */

/* WARNING: Removing unreachable block (ram,0x00104cb0) */
/* WARNING: Removing unreachable block (ram,0x00104cc8) */
/* WARNING: Removing unreachable block (ram,0x00104cd0) */
/* WARNING: Removing unreachable block (ram,0x00104d2c) */
/* WARNING: Removing unreachable block (ram,0x00104ce4) */
/* WARNING: Removing unreachable block (ram,0x00104cfc) */
/* WARNING: Removing unreachable block (ram,0x00104d00) */
/* WARNING: Removing unreachable block (ram,0x00104d04) */
/* WARNING: Removing unreachable block (ram,0x00104d08) */
/* WARNING: Removing unreachable block (ram,0x00104d10) */
/* WARNING: Removing unreachable block (ram,0x00104d30) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00104a9c(undefined8 param_1,undefined8 param_2,size_t param_3)

{
  void *__dest;
  undefined8 uVar1;
  void *__src;
  int iVar2;
  long lVar3;
  undefined8 extraout_d0;
  undefined8 extraout_var;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 *local_418;
  undefined1 *puStack_410;
  undefined8 local_408;
  int local_400;
  undefined4 local_3fc;
  undefined4 uStack_3f8;
  undefined1 **local_3f0;
  undefined8 *puStack_3e8;
  undefined8 local_3e0;
  undefined1 *local_3d8;
  undefined8 local_3d0;
  undefined1 auStack_3c8 [376];
  undefined8 local_250 [12];
  undefined1 auStack_1f0 [312];
  long local_b8;
  
  auVar4 = FUN_00105bf8();
  lVar3 = tpidr_el0;
  local_b8 = *(long *)(lVar3 + 0x28);
  iVar2 = (int)param_3;
  if (iVar2 < 1) {
    uVar1 = 0xffffffff;
  }
  else {
    if (*auVar4._0_8_ == 2) {
      auVar5 = FUN_0010612c(auStack_1f0);
      memcpy(auVar5._0_8_,auVar5._8_8_,param_3);
      uVar1 = DAT_00107850;
      __dest = (void *)FUN_0010612c(0,auStack_3c8);
      local_250[0] = extraout_d0;
      local_250[1] = extraout_var;
      local_250[2] = extraout_d0;
      local_250[3] = extraout_var;
      local_250[4] = extraout_d0;
      local_250[5] = extraout_var;
      local_250[6] = extraout_d0;
      local_250[7] = extraout_var;
      local_250[8] = extraout_d0;
      local_250[9] = extraout_var;
      local_250[10] = extraout_d0;
      local_250[0xb] = extraout_var;
      memcpy(__dest,__src,param_3);
      local_418 = auStack_1f0;
      local_3fc = 0;
      uStack_3f8 = 0;
      local_3e0 = uVar1;
      local_3d8 = &LAB_00104d78;
      local_3d0 = 0;
      for (lVar3 = 0; lVar3 != 0x60; lVar3 = lVar3 + 0x20) {
        *(undefined8 *)((long)local_250 + lVar3) = 0x800000008;
      }
      puStack_410 = auStack_3c8;
      local_408 = auVar4._8_8_;
      local_400 = iVar2;
      local_3f0 = &local_418;
      puStack_3e8 = local_250;
                    /* WARNING: Could not recover jumptable at 0x00104be4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*(code *)((ulong)switchD_00104be4::switchdataD_001078f0 * 4 + 0x104be8))();
      return;
    }
    uVar1 = 0xfffffffe;
  }
  if (*(long *)(lVar3 + 0x28) != local_b8) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}

