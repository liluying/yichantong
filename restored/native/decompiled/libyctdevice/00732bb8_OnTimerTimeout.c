/* Artifact: libyctdevice.so | Address: 00732bb8 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::OnTimerTimeout() */

void __thiscall FmwUpdateGnssBoardUnicore::OnTimerTimeout(FmwUpdateGnssBoardUnicore *this)

{
  FmwUpdateGnssBoardUnicore *pFVar1;
  int iVar2;
  int iVar3;
  FmwUpdateGnssBoardUnicore FVar4;
  undefined8 uVar5;
  basic_string *pbVar6;
  undefined5 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  int iVar10;
  undefined8 uVar11;
  char *pcVar12;
  long lVar13;
  char *local_100;
  undefined4 local_f8;
  char *local_f0;
  char *local_e8;
  undefined4 local_e0;
  char *local_d8;
  char *local_d0;
  undefined4 local_c8;
  char *local_c0;
  char *local_b8;
  undefined4 local_b0;
  char *local_a8;
  char *local_a0;
  undefined4 local_98;
  char *local_90;
  char *local_88;
  undefined4 local_80;
  char *local_78;
  int local_6c;
  char *local_68;
  undefined4 local_60;
  char *local_58;
  FmwUpdateGnssBoardUnicore local_50;
  undefined7 uStack_4f;
  undefined4 uStack_48;
  undefined2 uStack_44;
  undefined2 uStack_42;
  char cStack_40;
  char acStack_3f [7];
  long local_38;
  
  lVar13 = tpidr_el0;
  local_38 = *(long *)(lVar13 + 0x28);
  if (this[0x200] != (FmwUpdateGnssBoardUnicore)0x0) {
    iVar2 = *(int *)(this + 0x1b4);
    iVar3 = *(int *)(this + 0x1b0);
    iVar10 = iVar2 + 1;
    *(int *)(this + 0x1b4) = iVar10;
    if (iVar3 < 6) {
      if (iVar3 < 3) {
        if (iVar3 == 1) {
          if (iVar2 < 2) {
            if (iVar2 == 0) {
              lVar13 = *(long *)(lVar13 + 0x28);
              pbVar6 = PTR_CMD_UNLOG_ALL_00d71d50;
            }
            else {
              if (iVar2 != 1) goto LAB_0073333c;
              lVar13 = *(long *)(lVar13 + 0x28);
              pbVar6 = PTR_CMD_ENTER_PASS_THROUGH_1_00d71c08;
            }
          }
          else if (iVar2 == 2) {
            lVar13 = *(long *)(lVar13 + 0x28);
            pbVar6 = PTR_CMD_ENTER_PASS_THROUGH_2_00d71c18;
          }
          else {
            if (iVar2 != 3) {
              if (iVar2 == 4) {
                if (*(long *)(lVar13 + 0x28) == local_38) {
                  uVar11 = 2;
                  goto LAB_00732dd0;
                }
                goto LAB_007334e4;
              }
              goto LAB_0073333c;
            }
            lVar13 = *(long *)(lVar13 + 0x28);
            pbVar6 = PTR_CMD_UNLOG_ALL_UM982_00d71d48;
          }
joined_r0x00733220:
          if (lVar13 == local_38) {
            IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,pbVar6);
            return;
          }
          goto LAB_007334e4;
        }
        if ((iVar3 == 2) && (iVar2 == 0)) {
          if (*(long *)(lVar13 + 0x28) == local_38) {
            uVar11 = 3;
            goto LAB_00732dd0;
          }
          goto LAB_007334e4;
        }
      }
      else if (iVar3 == 3) {
        if (5999 < iVar2) {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar10 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar10 != 0)) {
                    /* try { // try from 00733400 to 0073340b has its CatchHandler @ 00733484 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_68 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_60 = 0x297;
          local_58 = "OnTimerTimeout";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_68,4,
                              "go bootloader timeout",0x15);
          uVar7 = s_go_bootloader_timeout_003adbe2._16_5_;
          local_50 = (FmwUpdateGnssBoardUnicore)0x2a;
          pFVar1 = this + 0x208;
          uStack_48._1_3_ = (undefined3)s_go_bootloader_timeout_003adbe2._8_5_;
          uStack_44 = SUB52(s_go_bootloader_timeout_003adbe2._8_5_,3);
          uStack_4f = (undefined7)s_go_bootloader_timeout_003adbe2._0_8_;
          uStack_48._0_1_ = SUB81(s_go_bootloader_timeout_003adbe2._0_8_,7);
          uStack_42 = (undefined2)s_go_bootloader_timeout_003adbe2._13_3_;
          cStack_40 = SUB31(s_go_bootloader_timeout_003adbe2._13_3_,2);
          acStack_3f[0] = s_go_bootloader_timeout_003adbe2[0x10];
          acStack_3f[1] = s_go_bootloader_timeout_003adbe2[0x11];
          acStack_3f[2] = s_go_bootloader_timeout_003adbe2[0x12];
          acStack_3f[3] = s_go_bootloader_timeout_003adbe2[0x13];
          acStack_3f[4] = s_go_bootloader_timeout_003adbe2[0x14];
          acStack_3f[5] = 0;
          *(undefined4 *)(this + 0x204) = 8;
          if (pFVar1 != &local_50) {
            if (((byte)*pFVar1 & 1) == 0) {
              *(ulong *)(this + 0x210) = CONCAT26(uStack_42,CONCAT24(uStack_44,uStack_48));
              *(ulong *)pFVar1 = CONCAT71(uStack_4f,0x2a);
              *(ulong *)(this + 0x218) = CONCAT17(acStack_3f[6],(uint7)CONCAT51(uVar7,cStack_40));
            }
            else {
                    /* try { // try from 00733314 to 0073332b has its CatchHandler @ 007334a8 */
              FUN_006b7474(pFVar1,(ulong)&local_50 | 1,0x15);
            }
          }
          GoState(this,9);
          goto LAB_0073332c;
        }
        if ((iVar10 * 0x26e978d5 + 0x10624d8U >> 3 | iVar10 * -0x60000000) < 0x418937) {
          uVar11 = spdlog::default_logger_raw();
          local_50 = (FmwUpdateGnssBoardUnicore)0x6c;
          uStack_4f = 0x3b38;
          uStack_48 = 0x29f;
          local_6c = *(int *)(this + 0x1b4) / 100;
          cStack_40 = -0x1b;
          acStack_3f[0] = '\a';
          acStack_3f[1] = ';';
          acStack_3f[2] = '\0';
          acStack_3f[3] = '\0';
          acStack_3f[4] = '\0';
          acStack_3f[5] = 0;
          acStack_3f[6] = 0;
          spdlog::logger::log_<int>
                    (uVar11,&local_50,2,"waiting for bootloader... ({}s)",0x1f,&local_6c);
        }
        IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,PTR_CMD_TAT_00d71d30);
      }
      else if (iVar3 == 4) {
        if (0x3b < iVar2) {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar10 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar10 != 0)) {
                    /* try { // try from 00733448 to 00733453 has its CatchHandler @ 00733480 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_88 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_80 = 0x2a9;
          local_78 = "OnTimerTimeout";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_88,4,
                              "menu send firmware timeout",0x1a);
          pcVar12 = (char *)operator_new(0x20);
          uVar9 = s_menu_send_firmware_timeout_0042991c._18_8_;
          uVar8 = s_menu_send_firmware_timeout_0042991c._0_8_;
          uVar11 = CONCAT62(s_menu_send_firmware_timeout_0042991c._10_6_,
                            s_menu_send_firmware_timeout_0042991c._8_2_);
          uVar5 = CONCAT26(s_menu_send_firmware_timeout_0042991c._16_2_,
                           s_menu_send_firmware_timeout_0042991c._10_6_);
          FVar4 = this[0x208];
          pcVar12[0x1a] = '\0';
          *(undefined8 *)(pcVar12 + 8) = uVar11;
          *(undefined8 *)pcVar12 = uVar8;
          *(undefined8 *)(pcVar12 + 0x12) = uVar9;
          *(undefined8 *)(pcVar12 + 10) = uVar5;
          *(undefined4 *)(this + 0x204) = 8;
          if (((byte)FVar4 & 1) == 0) {
                    /* try { // try from 0073300c to 0073301b has its CatchHandler @ 007334bc */
            FUN_006b73c8(this + 0x208,pcVar12,0x1a);
          }
          else {
                    /* try { // try from 0073326c to 00733287 has its CatchHandler @ 007334bc */
            FUN_006b7474(this + 0x208,pcVar12,0x1a);
          }
          GoState(this,9);
          goto LAB_00733338;
        }
        if (iVar2 == 0) {
          lVar13 = *(long *)(lVar13 + 0x28);
          pbVar6 = PTR_CMD_CLEAR_LINE_00d71d40;
          goto joined_r0x00733220;
        }
        if (iVar10 == 2) {
          IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,PTR_CMD_MENU_DOWNLOAD_00d71d38);
          uVar11 = spdlog::default_logger_raw();
          local_a0 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_98 = 0x2b6;
          local_90 = "OnTimerTimeout";
          spdlog::logger::log(uVar11,&local_a0,2,"sent menu download command (2)",0x1e);
        }
      }
      else if (iVar3 == 5) {
        if (*(int *)(this + 0x1d0) - 1U < 2) {
          if (0x1d < iVar2) {
            uVar11 = spdlog::default_logger_raw();
            local_d0 = 
            "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
            ;
            local_c8 = 0x2c9;
            local_c0 = "OnTimerTimeout";
            spdlog::logger::log(uVar11,&local_d0,4,"xmodem ack timeout",0x12);
            FUN_006a0d70(&local_50,"xmodem ack timeout");
                    /* try { // try from 00732c84 to 00732c97 has its CatchHandler @ 007334a4 */
            FinishUpdate(this,0,9,&local_50);
LAB_0073332c:
            if (((byte)local_50 & 1) != 0) {
              pcVar12 = (char *)CONCAT17(acStack_3f[6],
                                         CONCAT16(acStack_3f[5],CONCAT51(acStack_3f._0_5_,cStack_40)
                                                 ));
              goto LAB_00733338;
            }
          }
        }
        else if ((*(int *)(this + 0x1d0) == 0) && (0x1d < iVar2)) {
          uVar11 = spdlog::default_logger_raw();
          local_b8 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_b0 = 0x2c0;
          local_a8 = "OnTimerTimeout";
          spdlog::logger::log(uVar11,&local_b8,4,"xmodem start timeout",0x14);
          FUN_006a0d70(&local_50,"xmodem start timeout");
                    /* try { // try from 00733178 to 0073318b has its CatchHandler @ 007334a0 */
          FinishUpdate(this,0,8,&local_50);
          goto LAB_0073332c;
        }
      }
    }
    else if (iVar3 < 8) {
      if (iVar3 == 6) {
        if (iVar2 < 0x78) {
          if ((iVar10 * -0x33333333 + 0x19999998U >> 1 | iVar10 * -0x80000000) < 0x19999999) {
            uVar11 = spdlog::default_logger_raw();
            local_50 = (FmwUpdateGnssBoardUnicore)0x6c;
            uStack_4f = 0x3b38;
            uStack_48 = 0x2d9;
            cStack_40 = -0x1b;
            acStack_3f[0] = '\a';
            acStack_3f[1] = ';';
            acStack_3f[2] = '\0';
            acStack_3f[3] = '\0';
            acStack_3f[4] = '\0';
            acStack_3f[5] = 0;
            acStack_3f[6] = 0;
            spdlog::logger::log_<int&>
                      (uVar11,&local_50,2,"waiting for flash complete... ({}s)",0x23,this + 0x1b4);
          }
        }
        else {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar10 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar10 != 0)) {
                    /* try { // try from 007333b8 to 007333c3 has its CatchHandler @ 00733488 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_e8 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_e0 = 0x2d2;
          local_d8 = "OnTimerTimeout";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_e8,4,
                              "wait flash complete timeout",0x1b);
          pcVar12 = (char *)operator_new(0x20);
          uVar9 = s_wait_flash_complete_timeout_00420c13._19_8_;
          uVar8 = s_wait_flash_complete_timeout_00420c13._0_8_;
          uVar11 = CONCAT53(s_wait_flash_complete_timeout_00420c13._11_5_,
                            s_wait_flash_complete_timeout_00420c13._8_3_);
          uVar5 = CONCAT35(s_wait_flash_complete_timeout_00420c13._16_3_,
                           s_wait_flash_complete_timeout_00420c13._11_5_);
          FVar4 = this[0x208];
          pcVar12[0x1b] = '\0';
          *(undefined8 *)(pcVar12 + 8) = uVar11;
          *(undefined8 *)pcVar12 = uVar8;
          *(undefined8 *)(pcVar12 + 0x13) = uVar9;
          *(undefined8 *)(pcVar12 + 0xb) = uVar5;
          *(undefined4 *)(this + 0x204) = 10;
          if (((byte)FVar4 & 1) == 0) {
                    /* try { // try from 00732eb0 to 00732ebf has its CatchHandler @ 007334c0 */
            FUN_006b73c8(this + 0x208,pcVar12,0x1b);
          }
          else {
                    /* try { // try from 0073324c to 00733267 has its CatchHandler @ 007334c0 */
            FUN_006b7474(this + 0x208,pcVar12,0x1b);
          }
          GoState(this,9);
LAB_00733338:
          operator_delete(pcVar12);
        }
      }
      else if ((iVar3 == 7) && (9 < iVar2)) {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar10 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar10 != 0)) {
                    /* try { // try from 00733370 to 0073337b has its CatchHandler @ 0073348c */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_100 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_f8 = 0x2e1;
        local_f0 = "OnTimerTimeout";
        spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_100,3,
                            "menu reset timeout, assuming success",0x24);
        *(undefined4 *)(this + 0x204) = 0;
        if (((byte)this[0x208] & 1) == 0) {
          *(undefined2 *)(this + 0x208) = 0;
        }
        else {
          **(undefined1 **)(this + 0x218) = 0;
          *(undefined8 *)(this + 0x210) = 0;
        }
        GoState(this,8);
      }
    }
    else {
      if ((iVar3 == 8) || (iVar3 == 9)) {
        Timer::Stop((Timer *)(this + 0x70));
        if (*(long *)(lVar13 + 0x28) == local_38) {
          uVar11 = 10;
LAB_00732dd0:
          GoState(this,uVar11);
          return;
        }
        goto LAB_007334e4;
      }
      if (iVar3 == 10) {
        if (iVar2 == 0) {
          lVar13 = *(long *)(lVar13 + 0x28);
          pbVar6 = PTR_CMD_LEAVE_PASS_THROUGH_2_00d71c38;
          goto joined_r0x00733220;
        }
        if (iVar10 == 2) {
          Timer::Stop((Timer *)(this + 0x70));
          NotifyResult(this);
          if (*(long *)(lVar13 + 0x28) == local_38) {
            Cleanup(this);
            return;
          }
          goto LAB_007334e4;
        }
      }
    }
  }
LAB_0073333c:
  if (*(long *)(lVar13 + 0x28) == local_38) {
    return;
  }
LAB_007334e4:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

