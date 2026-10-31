/* Artifact: libyctdevice.so | Address: 00734b38 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::Stop(bool) */

void __thiscall FmwUpdateGnssBoardUnicore::Stop(FmwUpdateGnssBoardUnicore *this,bool param_1)

{
  long lVar1;
  int iVar2;
  long lVar3;
  __shared_weak_count *this_00;
  byte local_80;
  char local_7f [8];
  undefined7 uStack_77;
  char cStack_70;
  undefined2 uStack_6f;
  undefined5 uStack_6d;
  byte local_68 [16];
  void *local_58;
  char *local_50;
  undefined4 local_48;
  undefined *local_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  if (this[0x200] != (FmwUpdateGnssBoardUnicore)0x0) {
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 00734cf4 to 00734cff has its CatchHandler @ 00734d2c */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_50 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
    ;
    local_48 = 0x61;
    local_40 = &DAT_003a7db7;
    spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_50,2,
                        "GnssBoardUnicoreUpdate stop",0x1b);
    Timer::Stop((Timer *)(this + 0x70));
    if (*(int *)(this + 0x1b0) == 5) {
      local_68[0] = 6;
      local_68[1] = 0x18;
      local_68[2] = 0x18;
      local_68[3] = 0x18;
      local_68[4] = 0;
                    /* try { // try from 00734be4 to 00734bef has its CatchHandler @ 00734d54 */
      IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,local_68);
      if ((local_68[0] & 1) != 0) {
        operator_delete(local_58);
      }
    }
    if ((param_1) && (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0)) {
      local_80 = 0x22;
      uStack_6f = 100;
      uStack_77 = (undefined7)s_upgrade_cancelled_00398870._8_8_;
      cStack_70 = SUB81(s_upgrade_cancelled_00398870._8_8_,7);
      local_7f[0] = s_upgrade_cancelled_00398870[0];
      local_7f[1] = s_upgrade_cancelled_00398870[1];
      local_7f[2] = s_upgrade_cancelled_00398870[2];
      local_7f[3] = s_upgrade_cancelled_00398870[3];
      local_7f[4] = s_upgrade_cancelled_00398870[4];
      local_7f[5] = s_upgrade_cancelled_00398870[5];
      local_7f[6] = s_upgrade_cancelled_00398870[6];
      local_7f[7] = s_upgrade_cancelled_00398870[7];
                    /* try { // try from 00734c2c to 00734c37 has its CatchHandler @ 00734d40 */
      FmwUpdateListener::OnUpdateFailed(*(FmwUpdateListener **)(this + 0x60),0x10,&local_80);
      if ((local_80 & 1) != 0) {
        operator_delete((void *)CONCAT53(uStack_6d,CONCAT21(uStack_6f,cStack_70)));
      }
    }
    this[0x200] = (FmwUpdateGnssBoardUnicore)0x0;
    *(undefined8 *)(this + 0x1b0) = 0;
    *(undefined4 *)(this + 0x1d0) = 0;
    *(undefined8 *)(this + 0x1d8) = 0xffffffff00000000;
    *(undefined2 *)(this + 0x1d4) = 0x101;
    if (((byte)this[0x1b8] & 1) == 0) {
      *(undefined2 *)(this + 0x1b8) = 0;
    }
    else {
      **(undefined1 **)(this + 0x1c8) = 0;
      *(undefined8 *)(this + 0x1c0) = 0;
    }
    this_00 = *(__shared_weak_count **)(this + 0x68);
    *(undefined8 *)(this + 0x1f8) = 0;
    *(undefined8 *)(this + 0x60) = 0;
    *(undefined8 *)(this + 0x68) = 0;
    *(undefined8 *)(this + 0x1e8) = *(undefined8 *)(this + 0x1e0);
    if ((this_00 != (__shared_weak_count *)0x0) &&
       (lVar3 = FUN_00cc2c10(0xffffffffffffffff,this_00 + 8), lVar3 == 0)) {
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

