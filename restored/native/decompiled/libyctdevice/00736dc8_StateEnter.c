/* Artifact: libyctdevice.so | Address: 00736dc8 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::StateEnter() */

void __thiscall FmwUpdateGnssBoardUnicore::StateEnter(FmwUpdateGnssBoardUnicore *this)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char **ppcVar4;
  char *pcVar5;
  undefined8 uVar6;
  undefined *puVar7;
  char *local_78;
  undefined4 local_70;
  char *local_68;
  char *local_60;
  undefined4 local_58;
  char *local_50;
  long local_48;
  char *local_40;
  undefined4 local_38;
  char *local_30;
  long local_28;
  
  lVar1 = tpidr_el0;
  local_28 = *(long *)(lVar1 + 0x28);
  iVar2 = *(int *)(this + 0x1b0);
  if (iVar2 < 5) {
    if (iVar2 < 2) {
      if (iVar2 == 0) {
        if (*(long *)(lVar1 + 0x28) == local_28) {
          Timer::Stop((Timer *)(this + 0x70));
          return;
        }
        goto LAB_007375c0;
      }
      if (iVar2 != 1) goto LAB_00737284;
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 007372b4 to 007372bf has its CatchHandler @ 00737598 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_38 = 0x323;
LAB_00736f94:
      uVar3 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
      pcVar5 = "timer start {}ms";
      uVar6 = 0x10;
      puVar7 = PTR_ENTER_PASS_THROUGH_WAIT_MS_00d71d70;
    }
    else {
      if (iVar2 != 2) {
        if (iVar2 == 3) {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 007372fc to 00737307 has its CatchHandler @ 00737594 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_40 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_38 = 0x330;
          local_30 = "StateEnter";
          spdlog::logger::log_<int_const&>
                    (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,
                     "timer start {}ms (T@T@ flood)",0x1d,PTR_GO_BOOTLOADER_INTERVAL_MS_00d71d78);
          iVar2 = 10;
        }
        else {
          if (iVar2 != 4) goto LAB_00737284;
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 00737344 to 0073734f has its CatchHandler @ 00737590 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_40 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_38 = 0x336;
          local_30 = "StateEnter";
          spdlog::logger::log_<int_const&>
                    (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,"timer start {}ms"
                     ,0x10,PTR_MENU_INTERVAL_MS_00d71d68);
          iVar2 = 500;
        }
        goto LAB_00737280;
      }
      IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,PTR_CMD_RESET_00d71d80);
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 007374ac to 007374b7 has its CatchHandler @ 0073757c */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_38 = 0x32a;
      pcVar5 = "sent reset command, timer start {}ms";
      uVar3 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
      uVar6 = 0x24;
      puVar7 = PTR_RESET_WAIT_MS_00d71d88;
    }
    local_30 = "StateEnter";
    local_40 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
    ;
    spdlog::logger::log_<int_const&>(uVar3,&local_40,2,pcVar5,uVar6,puVar7);
    iVar2 = 200;
LAB_00737280:
    Timer::Start((Timer *)(this + 0x70),iVar2);
  }
  else {
    if (iVar2 < 8) {
      if (iVar2 == 5) {
        *(undefined4 *)(this + 0x1d0) = 0;
        this[0x1d5] = (FmwUpdateGnssBoardUnicore)0x1;
        puVar7 = PTR_s_instance_00d70cb0;
        *(undefined8 *)(this + 0x1f8) = 0;
        *(undefined8 *)(this + 0x1d8) = 0xffffffff00000000;
        if (((*puVar7 & 1) == 0) &&
           (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 007374f4 to 007374ff has its CatchHandler @ 00737578 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_40 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_48 = *(long *)(this + 0x1e8) - *(long *)(this + 0x1e0);
        local_38 = 0x342;
        local_30 = "StateEnter";
        spdlog::logger::log_<unsigned_long,int_const&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,
                   "xmodem transfer start, firmware size: {}, timer start {}ms",0x3a,&local_48,
                   PTR_CHECK_INTERVAL_MS_00d71d60);
      }
      else if (iVar2 == 6) {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 0073738c to 00737397 has its CatchHandler @ 0073758c */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_40 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_38 = 0x348;
        local_30 = "StateEnter";
        spdlog::logger::log_<int_const&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,
                   "waiting for flash write + verify + backup (10~30s), timer start {}ms",0x44,
                   PTR_CHECK_INTERVAL_MS_00d71d60);
        if (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0) {
          FmwUpdateListener::OnUpdateProgress(*(FmwUpdateListener **)(this + 0x60),2,-1);
        }
      }
      else {
        if (iVar2 != 7) goto LAB_00737284;
        IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,PTR_CMD_MENU_RESET_00d71d58);
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 0073741c to 00737427 has its CatchHandler @ 00737584 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_40 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_38 = 0x353;
        local_30 = "StateEnter";
        spdlog::logger::log_<int_const&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_40,2,
                   "sent menu reset command (6), timer start {}ms",0x2d,
                   PTR_CHECK_INTERVAL_MS_00d71d60);
      }
      iVar2 = 1000;
      goto LAB_00737280;
    }
    if (iVar2 == 8) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 0073753c to 00737547 has its CatchHandler @ 00737574 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_60 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      pcVar5 = "upgrade complete, timer start 100ms";
      ppcVar4 = &local_60;
      uVar3 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
      uVar6 = 0x23;
      local_58 = 0x358;
      local_50 = "StateEnter";
LAB_00737274:
      spdlog::logger::log(uVar3,ppcVar4,2,pcVar5,uVar6);
      iVar2 = 100;
      goto LAB_00737280;
    }
    if (iVar2 == 9) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 007373d4 to 007373df has its CatchHandler @ 00737588 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_78 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      local_70 = 0x35d;
      pcVar5 = "upgrade error, timer start 100ms";
      uVar3 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
      local_68 = "StateEnter";
      ppcVar4 = &local_78;
      uVar6 = 0x20;
      goto LAB_00737274;
    }
    if (iVar2 == 10) {
      IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,PTR_CMD_LEAVE_PASS_THROUGH_1_00d71c28);
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 00737464 to 0073746f has its CatchHandler @ 00737580 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_38 = 0x364;
      goto LAB_00736f94;
    }
  }
LAB_00737284:
  if (*(long *)(lVar1 + 0x28) == local_28) {
    return;
  }
LAB_007375c0:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

