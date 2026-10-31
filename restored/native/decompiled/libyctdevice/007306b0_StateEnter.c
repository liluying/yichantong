/* Artifact: libyctdevice.so | Address: 007306b0 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::StateEnter() */

void __thiscall FmwUpdateGnssBoardBeiyun::StateEnter(FmwUpdateGnssBoardBeiyun *this)

{
  long lVar1;
  undefined *puVar2;
  int iVar3;
  undefined8 uVar4;
  char **ppcVar5;
  char *pcVar6;
  undefined8 uVar7;
  char *local_88;
  undefined4 local_80;
  char *local_78;
  char *local_70;
  undefined4 local_68;
  char *local_60;
  char *local_58;
  undefined4 local_50;
  char *local_48;
  char *local_40;
  undefined4 local_38;
  char *local_30;
  long local_28;
  
  puVar2 = PTR_s_instance_00d70cb0;
  lVar1 = tpidr_el0;
  local_28 = *(long *)(lVar1 + 0x28);
  iVar3 = *(int *)(this + 0x300);
  if (iVar3 < 4) {
    if (iVar3 < 2) {
      if (iVar3 == 0) {
        Timer::Stop((Timer *)(this + 0x1c0));
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730b30 to 00730b3b has its CatchHandler @ 00730ce4 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_58 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
        ;
        local_50 = 0x134;
        local_48 = "StateEnter";
        spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_58,2,
                            "timer stopped",0xd);
        goto LAB_00730a28;
      }
      if (iVar3 != 1) goto LAB_00730a28;
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730a58 to 00730a63 has its CatchHandler @ 00730cf0 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_38 = 0x138;
LAB_00730774:
      local_40 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
      ;
      local_30 = "StateEnter";
      spdlog::logger::log_<int_const&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,"timer start {}ms",
                 0x10,PTR_ENTER_PASS_THROUGH_WAIT_MS_00d71ce8);
      iVar3 = 200;
    }
    else {
      if (iVar3 == 2) {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730b78 to 00730b83 has its CatchHandler @ 00730ce0 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_38 = 0x13e;
      }
      else {
        if (iVar3 != 3) goto LAB_00730a28;
        IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,PTR_CMD_ENTER_BOOT_00d71cf0);
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730aa0 to 00730aab has its CatchHandler @ 00730cec */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_38 = 0x145;
      }
LAB_007308c4:
      local_40 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
      ;
      local_30 = "StateEnter";
      spdlog::logger::log_<int_const&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,"timer start {}ms",
                 0x10,PTR_CHECK_INTERVAL_MS_00d71cf8);
      iVar3 = 1000;
    }
  }
  else if (iVar3 < 6) {
    if (iVar3 != 4) {
      if (iVar3 != 5) goto LAB_00730a28;
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730ae8 to 00730af3 has its CatchHandler @ 00730ce8 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_38 = 0x151;
      goto LAB_007308c4;
    }
    *(undefined8 *)(this + 0x308) = 0xffffffff00000000;
    if (((*puVar2 & 1) == 0) && (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0))
    {
                    /* try { // try from 00730c50 to 00730c5b has its CatchHandler @ 00730cd4 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_40 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
    ;
    local_38 = 0x14c;
    local_30 = "StateEnter";
    spdlog::logger::log_<int_const&>
              (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,"timer start {}ms",0x10,
               PTR_TRANSMIT_INTERVAL_MS_00d71d00);
    iVar3 = 0x1e;
  }
  else {
    if (iVar3 == 6) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730bc0 to 00730bcb has its CatchHandler @ 00730cdc */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_70 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
      ;
      pcVar6 = "upgrade complete, timer start 100ms";
      ppcVar5 = &local_70;
      uVar4 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
      uVar7 = 0x23;
      local_68 = 0x156;
      local_60 = "StateEnter";
    }
    else {
      if (iVar3 != 7) {
        if (iVar3 != 8) goto LAB_00730a28;
        IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,PTR_CMD_LEAVE_PASS_THROUGH_1_00d71be8);
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730c08 to 00730c13 has its CatchHandler @ 00730cd8 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_38 = 0x162;
        goto LAB_00730774;
      }
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 00730c98 to 00730ca3 has its CatchHandler @ 00730cd0 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_88 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
      ;
      local_80 = 0x15b;
      pcVar6 = "timer start 100ms";
      uVar4 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
      local_78 = "StateEnter";
      ppcVar5 = &local_88;
      uVar7 = 0x11;
    }
    spdlog::logger::log(uVar4,ppcVar5,2,pcVar6,uVar7);
    iVar3 = 100;
  }
  Timer::Start((Timer *)(this + 0x1c0),iVar3);
LAB_00730a28:
  if (*(long *)(lVar1 + 0x28) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

