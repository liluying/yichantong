/* Artifact: libexcavator.so | Address: 00104a9c | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00105bf8 */
/* WARNING: Inlined function: FUN_0010612c */
/* WARNING: Inlined function: point_subtract */
/* WARNING: Inlined function: FUN_001061dc */
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

void FUN_00104a9c(int *param_1,undefined8 param_2,int param_3)

{
  undefined8 uVar1;
  long lVar2;
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
  
  lVar2 = tpidr_el0;
  local_b8 = *(long *)(lVar2 + 0x28);
  if (param_3 < 1) {
    uVar1 = 0xffffffff;
  }
  else {
    if (*param_1 == 2) {
      memcpy(auStack_1f0,param_1,0x138);
      uVar1 = DAT_00107850;
      local_250[1] = 0;
      local_250[0] = 0;
      local_250[3] = 0;
      local_250[2] = 0;
      local_250[5] = 0;
      local_250[4] = 0;
      local_250[7] = 0;
      local_250[6] = 0;
      local_250[9] = 0;
      local_250[8] = 0;
      local_250[0xb] = 0;
      local_250[10] = 0;
      memcpy(auStack_3c8,param_1,0x138);
      local_418 = auStack_1f0;
      local_3fc = 0;
      uStack_3f8 = 0;
      local_3e0 = uVar1;
      local_3d8 = &LAB_00104d78;
      local_3d0 = 0;
      for (lVar2 = 0; lVar2 != 0x60; lVar2 = lVar2 + 0x20) {
        *(undefined8 *)((long)local_250 + lVar2) = 0x800000008;
      }
      puStack_410 = auStack_3c8;
      local_408 = param_2;
      local_400 = param_3;
      local_3f0 = &local_418;
      puStack_3e8 = local_250;
                    /* WARNING: Could not recover jumptable at 0x00104be4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (*(code *)((ulong)switchD_00104be4::switchdataD_001078f0 * 4 + 0x104be8))();
      return;
    }
    uVar1 = 0xfffffffe;
  }
  if (*(long *)(lVar2 + 0x28) != local_b8) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}

