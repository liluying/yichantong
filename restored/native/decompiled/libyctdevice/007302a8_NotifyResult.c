/* Artifact: libyctdevice.so | Address: 007302a8 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::NotifyResult() */

void __thiscall FmwUpdateGnssBoardBeiyun::NotifyResult(FmwUpdateGnssBoardBeiyun *this)

{
  undefined4 uVar1;
  long lVar2;
  int iVar3;
  FmwUpdateListener *pFVar4;
  ulong local_a0;
  undefined8 uStack_98;
  void *local_90;
  undefined4 local_7c;
  char *local_78;
  undefined4 local_70;
  char *local_68;
  char *local_60;
  undefined4 local_58;
  char *local_50;
  long local_48;
  
  lVar2 = tpidr_el0;
  local_48 = *(long *)(lVar2 + 0x28);
  if (*(int *)(this + 0x35c) == 0) {
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730470 to 0073047b has its CatchHandler @ 007304a8 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_78 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
    ;
    local_70 = 0x278;
    local_68 = "NotifyResult";
    spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_78,2,
                        "upgrade success",0xf);
    if (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0) {
      FmwUpdateListener::OnUpdateSuccessed(*(FmwUpdateListener **)(this + 0x60));
    }
  }
  else {
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730428 to 00730433 has its CatchHandler @ 007304ac */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_7c = *(undefined4 *)(this + 0x35c);
    local_60 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
    ;
    local_58 = 0x280;
    local_50 = "NotifyResult";
    spdlog::logger::
    log_<int,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
              (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_60,4,
               "upgrade failed: {} - {}",0x17,&local_7c,this + 0x360);
    pFVar4 = *(FmwUpdateListener **)(this + 0x60);
    if (pFVar4 != (FmwUpdateListener *)0x0) {
      uVar1 = *(undefined4 *)(this + 0x35c);
      if (((byte)this[0x360] & 1) == 0) {
        uStack_98 = *(undefined8 *)(this + 0x368);
        local_a0 = *(ulong *)(this + 0x360);
        local_90 = *(void **)(this + 0x370);
      }
      else {
        FUN_006a79e4(&local_a0,*(undefined8 *)(this + 0x370),*(undefined8 *)(this + 0x368));
      }
                    /* try { // try from 007303d0 to 007303df has its CatchHandler @ 007304c0 */
      FmwUpdateListener::OnUpdateFailed(pFVar4,uVar1,&local_a0);
      if ((local_a0 & 1) != 0) {
        operator_delete(local_90);
      }
    }
  }
  if (*(long *)(lVar2 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

