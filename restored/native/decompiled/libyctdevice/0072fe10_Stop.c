/* Artifact: libyctdevice.so | Address: 0072fe10 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* FmwUpdateGnssBoardBeiyun::Stop(bool) */

void __thiscall FmwUpdateGnssBoardBeiyun::Stop(FmwUpdateGnssBoardBeiyun *this,bool param_1)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  int iVar4;
  long lVar5;
  __shared_weak_count *this_00;
  byte local_68;
  char local_67 [8];
  undefined7 uStack_5f;
  char cStack_58;
  undefined2 uStack_57;
  undefined5 uStack_55;
  char *local_50;
  undefined4 local_48;
  undefined *local_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  if (this[0x358] != (FmwUpdateGnssBoardBeiyun)0x0) {
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 0072ff90 to 0072ff9b has its CatchHandler @ 0072ffc8 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_50 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
    ;
    local_48 = 0x59;
    local_40 = &DAT_003a7db7;
    spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_50,2,
                        "GnssBoardUpdate stop",0x14);
    Timer::Stop((Timer *)(this + 0x1c0));
    if ((param_1) && (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0)) {
      local_68 = 0x22;
      uStack_57 = 100;
      uStack_5f = (undefined7)s_upgrade_cancelled_00398870._8_8_;
      cStack_58 = SUB81(s_upgrade_cancelled_00398870._8_8_,7);
      local_67[0] = s_upgrade_cancelled_00398870[0];
      local_67[1] = s_upgrade_cancelled_00398870[1];
      local_67[2] = s_upgrade_cancelled_00398870[2];
      local_67[3] = s_upgrade_cancelled_00398870[3];
      local_67[4] = s_upgrade_cancelled_00398870[4];
      local_67[5] = s_upgrade_cancelled_00398870[5];
      local_67[6] = s_upgrade_cancelled_00398870[6];
      local_67[7] = s_upgrade_cancelled_00398870[7];
                    /* try { // try from 0072fec8 to 0072fed3 has its CatchHandler @ 0072ffdc */
      FmwUpdateListener::OnUpdateFailed(*(FmwUpdateListener **)(this + 0x60),0x10,&local_68);
      if ((local_68 & 1) != 0) {
        operator_delete((void *)CONCAT53(uStack_55,CONCAT21(uStack_57,cStack_58)));
      }
    }
    this[0x358] = (FmwUpdateGnssBoardBeiyun)0x0;
    uVar3 = _UNK_003973f8;
    uVar2 = _DAT_003973f0;
    *(undefined4 *)(this + 0x310) = 0xffffffff;
    *(undefined8 *)(this + 0x318) = 0;
    *(undefined8 *)(this + 0x308) = uVar3;
    *(undefined8 *)(this + 0x300) = uVar2;
    *(undefined8 *)(this + 0x340) = *(undefined8 *)(this + 0x338);
    *(undefined8 *)(this + 0x350) = 0;
    if (((byte)this[800] & 1) == 0) {
      *(undefined2 *)(this + 800) = 0;
    }
    else {
      **(undefined1 **)(this + 0x330) = 0;
      *(undefined8 *)(this + 0x328) = 0;
    }
    this_00 = *(__shared_weak_count **)(this + 0x68);
    *(undefined8 *)(this + 0x60) = 0;
    *(undefined8 *)(this + 0x68) = 0;
    if ((this_00 != (__shared_weak_count *)0x0) &&
       (lVar5 = FUN_00cc2c10(0xffffffffffffffff,this_00 + 8), lVar5 == 0)) {
      (**(code **)(*(long *)this_00 + 0x10))(this_00);
      std::__ndk1::__shared_weak_count::__release_weak(this_00);
    }
  }
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

