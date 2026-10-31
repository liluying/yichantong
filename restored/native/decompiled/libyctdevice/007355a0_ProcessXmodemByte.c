/* Artifact: libyctdevice.so | Address: 007355a0 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::ProcessXmodemByte(unsigned char) */

void __thiscall
FmwUpdateGnssBoardUnicore::ProcessXmodemByte(FmwUpdateGnssBoardUnicore *this,uchar param_1)

{
  long lVar1;
  byte bVar2;
  FmwUpdateGnssBoardUnicore FVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined *puVar10;
  int iVar11;
  char *pcVar12;
  ulong uVar13;
  char *local_d8;
  undefined4 local_d0;
  char *local_c8;
  char *local_c0;
  undefined4 local_b8;
  char *local_b0;
  char *local_a8;
  undefined4 local_a0;
  char *local_98;
  long local_90;
  int local_84;
  char *local_80;
  undefined4 local_78;
  char *local_70;
  char *local_68;
  undefined4 local_60;
  char *local_58;
  char *local_50;
  undefined4 local_48;
  char *local_40;
  long local_38;
  
  puVar10 = PTR_s_instance_00d70cb0;
  lVar5 = tpidr_el0;
  local_38 = *(long *)(lVar5 + 0x28);
  iVar11 = *(int *)(this + 0x1d0);
  if (iVar11 == 2) {
    if (param_1 != '\x15') {
      if (param_1 == '\x06') {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)) {
                    /* try { // try from 00735c64 to 00735c6f has its CatchHandler @ 00735eb0 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_c0 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_b8 = 0x210;
        local_b0 = "ProcessXmodemByte";
        spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_c0,2,
                            "xmodem: EOT acknowledged, transfer complete",0x2b);
        GoState(this,6);
      }
      goto LAB_00735be8;
    }
    iVar11 = *(int *)(this + 0x1d8);
    *(undefined4 *)(this + 0x1b4) = 0;
    *(int *)(this + 0x1d8) = iVar11 + 1;
    bVar2 = *puVar10;
    if (iVar11 < 10) {
      if (((bVar2 & 1) == 0) && (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)
         ) {
                    /* try { // try from 00735d84 to 00735d8f has its CatchHandler @ 00735ea0 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_50 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      local_48 = 0x21e;
      local_40 = "ProcessXmodemByte";
      spdlog::logger::log_<int&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_50,3,
                 "xmodem: EOT NAK, retry {}",0x19,this + 0x1d8);
      local_50._2_6_ = (uint6)((ulong)local_50 >> 0x10) & 0xffffffffff00;
      local_50 = (char *)CONCAT62(local_50._2_6_,0x402);
                    /* try { // try from 00735ac8 to 00735ad3 has its CatchHandler @ 00735ecc */
      IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,(basic_string *)&local_50);
      *(undefined4 *)(this + 0x1d8) = 0;
      *(undefined4 *)(this + 0x1b4) = 0;
      pcVar12 = local_40;
      if (((ulong)local_50 & 1) == 0) goto LAB_00735be8;
    }
    else {
      if (((bVar2 & 1) == 0) && (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)
         ) {
                    /* try { // try from 00735d3c to 00735d47 has its CatchHandler @ 00735ea4 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_d8 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      local_d0 = 0x21a;
      local_c8 = "ProcessXmodemByte";
      spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_d8,4,
                          "xmodem: EOT max retry exceeded",0x1e);
      pcVar12 = (char *)operator_new(0x20);
      uVar9 = s_xmodem_EOT_max_retry_exceeded_004038dd._21_8_;
      uVar8 = s_xmodem_EOT_max_retry_exceeded_004038dd._0_8_;
      uVar6 = CONCAT35(s_xmodem_EOT_max_retry_exceeded_004038dd._13_3_,
                       s_xmodem_EOT_max_retry_exceeded_004038dd._8_5_);
      uVar7 = CONCAT53(s_xmodem_EOT_max_retry_exceeded_004038dd._16_5_,
                       s_xmodem_EOT_max_retry_exceeded_004038dd._13_3_);
      FVar3 = this[0x208];
      pcVar12[0x1d] = '\0';
      *(undefined8 *)(pcVar12 + 8) = uVar6;
      *(undefined8 *)pcVar12 = uVar8;
      *(undefined8 *)(pcVar12 + 0x15) = uVar9;
      *(undefined8 *)(pcVar12 + 0xd) = uVar7;
      *(undefined4 *)(this + 0x204) = 9;
      if (((byte)FVar3 & 1) == 0) {
                    /* try { // try from 00735890 to 0073589f has its CatchHandler @ 00735ee4 */
        FUN_006b73c8(this + 0x208,pcVar12,0x1d);
      }
      else {
                    /* try { // try from 00735ba4 to 00735bbf has its CatchHandler @ 00735ee4 */
        FUN_006b7474(this + 0x208,pcVar12,0x1d);
      }
      GoState(this,9);
    }
  }
  else {
    if (iVar11 != 1) {
      if (iVar11 == 0) {
        if (param_1 == '\x15') {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)) {
                    /* try { // try from 00735cac to 00735cb7 has its CatchHandler @ 00735eac */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_80 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_78 = 0x1c7;
          local_70 = "ProcessXmodemByte";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,2,
                              "xmodem: received NAK, using checksum mode",0x29);
          this[0x1d4] = (FmwUpdateGnssBoardUnicore)0x0;
          *(undefined4 *)(this + 0x1b4) = 0;
          XmodemSendBlock(this);
          *(undefined4 *)(this + 0x1d0) = 1;
        }
        else if (param_1 == 'C') {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)) {
                    /* try { // try from 00735c1c to 00735c27 has its CatchHandler @ 00735eb4 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_68 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_60 = 0x1bf;
          local_58 = "ProcessXmodemByte";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_68,2,
                              "xmodem: received \'C\', using CRC16 mode",0x26);
          *(undefined4 *)(this + 0x1b4) = 0;
          this[0x1d4] = (FmwUpdateGnssBoardUnicore)0x1;
          XmodemSendBlock(this);
          *(undefined4 *)(this + 0x1d0) = 1;
        }
      }
      goto LAB_00735be8;
    }
    if (param_1 != '\x18') {
      if (param_1 == '\x15') {
        iVar11 = *(int *)(this + 0x1d8);
        *(undefined4 *)(this + 0x1b4) = 0;
        *(int *)(this + 0x1d8) = iVar11 + 1;
        bVar2 = *puVar10;
        if (9 < iVar11) {
          if (((bVar2 & 1) == 0) &&
             (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)) {
                    /* try { // try from 00735e14 to 00735e1f has its CatchHandler @ 00735e98 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_50 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_48 = 0x1ff;
          local_40 = "ProcessXmodemByte";
          spdlog::logger::log_<unsigned_char&>
                    (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_50,4,
                     "xmodem: max retry exceeded for block {}",0x27,this + 0x1d5);
          pcVar12 = (char *)operator_new(0x20);
          uVar9 = s_xmodem_max_retry_exceeded_004093f2._17_8_;
          uVar8 = s_xmodem_max_retry_exceeded_004093f2._0_8_;
          uVar6 = CONCAT71(s_xmodem_max_retry_exceeded_004093f2._9_7_,
                           s_xmodem_max_retry_exceeded_004093f2[8]);
          uVar7 = CONCAT17(s_xmodem_max_retry_exceeded_004093f2[0x10],
                           s_xmodem_max_retry_exceeded_004093f2._9_7_);
          FVar3 = this[0x208];
          pcVar12[0x19] = '\0';
          *(undefined8 *)(pcVar12 + 8) = uVar6;
          *(undefined8 *)pcVar12 = uVar8;
          *(undefined8 *)(pcVar12 + 0x11) = uVar9;
          *(undefined8 *)(pcVar12 + 9) = uVar7;
          *(undefined4 *)(this + 0x204) = 9;
          if (((byte)FVar3 & 1) == 0) {
                    /* try { // try from 007359bc to 007359cb has its CatchHandler @ 00735ee0 */
            FUN_006b73c8(this + 0x208,pcVar12,0x19);
          }
          else {
                    /* try { // try from 00735bc4 to 00735bdf has its CatchHandler @ 00735ee0 */
            FUN_006b7474(this + 0x208,pcVar12,0x19);
          }
          GoState(this,9);
          goto LAB_00735be4;
        }
        if (((bVar2 & 1) == 0) &&
           (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)) {
                    /* try { // try from 00735e5c to 00735e67 has its CatchHandler @ 00735e94 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_50 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_48 = 0x203;
        local_40 = "ProcessXmodemByte";
        spdlog::logger::log_<unsigned_char&,int&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_50,3,
                   "xmodem: NAK for block {}, retry {}",0x22,this + 0x1d5,this + 0x1d8);
      }
      else {
        if (param_1 != '\x06') goto LAB_00735be8;
        *(undefined4 *)(this + 0x1b4) = 0;
        *(undefined4 *)(this + 0x1d8) = 0;
        uVar13 = (*(long *)(this + 0x1e8) - *(long *)(this + 0x1e0)) - *(long *)(this + 0x1f8);
        if (0x3ff < uVar13) {
          uVar13 = 0x400;
        }
        uVar4 = *(long *)(this + 0x1e8) - *(long *)(this + 0x1e0);
        lVar1 = uVar13 + *(long *)(this + 0x1f8);
        *(long *)(this + 0x1f8) = lVar1;
        puVar10 = PTR_s_instance_00d70cb0;
        uVar13 = uVar4;
        if (uVar4 != 0) {
          uVar13 = 0;
          if (uVar4 != 0) {
            uVar13 = (ulong)(lVar1 * 100) / uVar4;
          }
        }
        local_84 = (int)uVar13;
        if (local_84 != *(int *)(this + 0x1dc)) {
          *(int *)(this + 0x1dc) = local_84;
          if (((*puVar10 & 1) == 0) &&
             (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)) {
                    /* try { // try from 00735dcc to 00735dd7 has its CatchHandler @ 00735e9c */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_50 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_90 = *(long *)(this + 0x1e8) - *(long *)(this + 0x1e0);
          local_48 = 0x1e3;
          local_40 = "ProcessXmodemByte";
          spdlog::logger::log_<int&,unsigned_long&,unsigned_long>
                    (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_50,2,
                     "xmodem progress: {}%, {}/{} bytes",0x21,&local_84,this + 0x1f8,&local_90);
          if (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0) {
            FmwUpdateListener::OnUpdateProgress(*(FmwUpdateListener **)(this + 0x60),0,local_84);
          }
        }
        if ((ulong)(*(long *)(this + 0x1e8) - *(long *)(this + 0x1e0)) <= *(ulong *)(this + 0x1f8))
        {
          local_50._2_6_ = (uint6)((ulong)local_50 >> 0x10) & 0xffffffffff00;
          local_50 = (char *)CONCAT62(local_50._2_6_,0x402);
                    /* try { // try from 00735b74 to 00735b7f has its CatchHandler @ 00735ec8 */
          IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,(basic_string *)&local_50);
          *(undefined4 *)(this + 0x1d8) = 0;
          *(undefined4 *)(this + 0x1b4) = 0;
          if (((ulong)local_50 & 1) != 0) {
            operator_delete(local_40);
          }
          *(undefined4 *)(this + 0x1d0) = 2;
          goto LAB_00735be8;
        }
        this[0x1d5] = (FmwUpdateGnssBoardUnicore)((char)this[0x1d5] + '\x01');
      }
      XmodemSendBlock(this);
      goto LAB_00735be8;
    }
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar11 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar11 != 0)) {
                    /* try { // try from 00735cf4 to 00735cff has its CatchHandler @ 00735ea8 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_a8 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
    ;
    local_a0 = 0x208;
    local_98 = "ProcessXmodemByte";
    spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_a8,4,
                        "xmodem: CAN received, transfer cancelled by receiver",0x34);
    pcVar12 = (char *)operator_new(0x20);
    uVar9 = s_xmodem_cancelled_by_receiver_003adbc5._20_8_;
    uVar8 = s_xmodem_cancelled_by_receiver_003adbc5._0_8_;
    uVar6 = CONCAT44(s_xmodem_cancelled_by_receiver_003adbc5._12_4_,
                     s_xmodem_cancelled_by_receiver_003adbc5._8_4_);
    uVar7 = CONCAT44(s_xmodem_cancelled_by_receiver_003adbc5._16_4_,
                     s_xmodem_cancelled_by_receiver_003adbc5._12_4_);
    FVar3 = this[0x208];
    pcVar12[0x1c] = '\0';
    *(undefined8 *)(pcVar12 + 8) = uVar6;
    *(undefined8 *)pcVar12 = uVar8;
    *(undefined8 *)(pcVar12 + 0x14) = uVar9;
    *(undefined8 *)(pcVar12 + 0xc) = uVar7;
    *(undefined4 *)(this + 0x204) = 9;
    if (((byte)FVar3 & 1) == 0) {
                    /* try { // try from 00735a5c to 00735a6b has its CatchHandler @ 00735ee8 */
      FUN_006b73c8(this + 0x208,pcVar12,0x1c);
    }
    else {
                    /* try { // try from 00735b48 to 00735b63 has its CatchHandler @ 00735ee8 */
      FUN_006b7474(this + 0x208,pcVar12,0x1c);
    }
    GoState(this,9);
  }
LAB_00735be4:
  operator_delete(pcVar12);
LAB_00735be8:
  if (*(long *)(lVar5 + 0x28) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

