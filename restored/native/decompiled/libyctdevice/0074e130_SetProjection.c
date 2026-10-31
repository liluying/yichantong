/* Artifact: libyctdevice.so | Address: 0074e130 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::SetProjection(std::__ndk1::variant<gnss::GaussKrugerParams,
   gnss::UTMParams, gnss::TransverseMercatorParams> const&) */

void __thiscall gnss::GnssCoordConvert::SetProjection(GnssCoordConvert *this,variant *param_1)

{
  long lVar1;
  long *plVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined1 auVar9 [12];
  undefined8 local_a8;
  GnssCoordConvert **local_a0;
  GnssCoordConvert *local_98;
  undefined4 local_90;
  char *local_88;
  undefined8 local_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 local_60;
  undefined1 uStack_58;
  undefined7 uStack_57;
  undefined1 uStack_50;
  undefined7 uStack_4f;
  undefined1 uStack_48;
  undefined7 uStack_47;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  uStack_78 = *(undefined8 *)(this + 0x20);
  local_80 = *(undefined8 *)(this + 0x18);
  uStack_68 = *(undefined8 *)(this + 0x30);
  uStack_70 = *(undefined8 *)(this + 0x28);
  local_60 = *(undefined8 *)(this + 0x38);
  uStack_58 = (undefined1)*(undefined8 *)(this + 0x40);
  uStack_57 = (undefined7)((ulong)*(undefined8 *)(this + 0x40) >> 8);
  uStack_48 = (undefined1)*(undefined8 *)(this + 0x50);
  uStack_47 = (undefined7)((ulong)*(undefined8 *)(this + 0x50) >> 8);
  uStack_50 = (undefined1)*(undefined8 *)(this + 0x48);
  uStack_4f = (undefined7)((ulong)*(undefined8 *)(this + 0x48) >> 8);
  uVar6 = *(undefined8 *)(param_1 + 8);
  uVar5 = *(undefined8 *)param_1;
  uVar4 = *(undefined8 *)(param_1 + 0x18);
  uVar3 = *(undefined8 *)(param_1 + 0x10);
  uVar8 = *(undefined8 *)(param_1 + 0x28);
  uVar7 = *(undefined8 *)(param_1 + 0x20);
  *(undefined8 *)(this + 0x48) = *(undefined8 *)(param_1 + 0x30);
  *(undefined8 *)(this + 0x20) = uVar6;
  *(undefined8 *)(this + 0x18) = uVar5;
  *(undefined8 *)(this + 0x40) = uVar8;
  *(undefined8 *)(this + 0x38) = uVar7;
  *(undefined8 *)(this + 0x30) = uVar4;
  *(undefined8 *)(this + 0x28) = uVar3;
  if (this[0x50] == (GnssCoordConvert)0x0) {
    this[0x50] = (GnssCoordConvert)0x1;
  }
  local_98 = this;
  if (*(uint *)(param_1 + 0x30) == 0xffffffff) {
    if (*(long *)(lVar1 + 0x28) != local_38) goto LAB_0074e2b8;
    auVar9 = FUN_0074e7dc();
                    /* catch(type#1 @ 00d6cfa0) { ... } // from try @ 0074e1bc with catch @ 0074e1fc
                        */
    if (auVar9._8_4_ != 1) {
      if (*(long *)(lVar1 + 0x28) == local_38) {
                    /* WARNING: Subroutine does not return */
        FUN_00cc2efc(auVar9._0_8_);
      }
      goto LAB_0074e2b8;
    }
    plVar2 = (long *)__cxa_begin_catch(auVar9._0_8_);
    *(undefined8 *)(this + 0x20) = uStack_78;
    *(undefined8 *)(this + 0x18) = local_80;
    *(undefined8 *)(this + 0x30) = uStack_68;
    *(undefined8 *)(this + 0x28) = uStack_70;
    *(ulong *)(this + 0x40) = CONCAT71(uStack_57,uStack_58);
    *(undefined8 *)(this + 0x38) = local_60;
    *(ulong *)(this + 0x49) = CONCAT17(uStack_48,uStack_4f);
    *(ulong *)(this + 0x41) = CONCAT17(uStack_50,uStack_57);
                    /* try { // try from 0074e230 to 0074e233 has its CatchHandler @ 0074e298 */
    uVar3 = spdlog::default_logger_raw();
    local_a8 = (**(code **)(*plVar2 + 0x10))(plVar2);
    local_98 = (GnssCoordConvert *)0x398918;
    local_90 = 0x72;
    local_88 = "SetProjection";
                    /* try { // try from 0074e26c to 0074e28b has its CatchHandler @ 0074e294 */
    spdlog::logger::log_<char_const*>(uVar3,&local_98,3,"SetProjection failed: {}",0x18,&local_a8);
    __cxa_end_catch();
  }
  else {
    local_a0 = &local_98;
                    /* try { // try from 0074e1bc to 0074e1fb has its CatchHandler @ 0074e1fc */
    (*(code *)(&PTR_FUN_00ceb500)[*(uint *)(param_1 + 0x30)])(&local_a0);
  }
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
LAB_0074e2b8:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

