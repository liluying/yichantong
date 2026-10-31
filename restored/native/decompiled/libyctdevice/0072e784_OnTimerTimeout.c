/* Artifact: libyctdevice.so | Address: 0072e784 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* FmwUpdateGnssBoardBeiyun::OnTimerTimeout() */

void __thiscall FmwUpdateGnssBoardBeiyun::OnTimerTimeout(FmwUpdateGnssBoardBeiyun *this)

{
  FmwUpdateGnssBoardBeiyun *pFVar1;
  int iVar2;
  int iVar3;
  FmwUpdateGnssBoardBeiyun FVar4;
  basic_string *pbVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  uint uVar8;
  int iVar9;
  char *pcVar10;
  long lVar11;
  undefined8 uVar12;
  long lVar13;
  __shared_weak_count *this_00;
  char *local_b8;
  undefined4 local_b0;
  char *local_a8;
  long local_a0;
  char *local_98;
  undefined4 local_90;
  char *local_88;
  char *local_80;
  undefined4 local_78;
  char *local_70;
  char *local_68;
  undefined4 local_60;
  char *local_58;
  FmwUpdateGnssBoardBeiyun local_50;
  undefined7 uStack_4f;
  undefined4 uStack_48;
  undefined4 uStack_44;
  char cStack_40;
  undefined2 uStack_3f;
  undefined1 uStack_3d;
  uint uStack_3c;
  long local_38;
  
  lVar13 = tpidr_el0;
  local_38 = *(long *)(lVar13 + 0x28);
  if (this[0x358] != (FmwUpdateGnssBoardBeiyun)0x0) {
    iVar2 = *(int *)(this + 0x304);
    iVar3 = *(int *)(this + 0x300);
    iVar9 = iVar2 + 1;
    *(int *)(this + 0x304) = iVar9;
    if (iVar3 < 5) {
      if (iVar3 < 3) {
        if (iVar3 == 1) {
          if (iVar2 < 2) {
            if (iVar2 == 0) {
              lVar13 = *(long *)(lVar13 + 0x28);
              pbVar5 = PTR_CMD_UNLOG_ALL_00d71ce0;
            }
            else {
              if (iVar2 != 1) goto LAB_0072ede0;
              lVar13 = *(long *)(lVar13 + 0x28);
              pbVar5 = PTR_CMD_ENTER_PASS_THROUGH_1_00d71bc8;
            }
          }
          else if (iVar2 == 2) {
            lVar13 = *(long *)(lVar13 + 0x28);
            pbVar5 = PTR_CMD_ENTER_PASS_THROUGH_2_00d71bd8;
          }
          else {
            if (iVar2 != 3) {
              if (iVar2 == 4) {
                if (*(long *)(lVar13 + 0x28) != local_38) goto LAB_0072ef84;
                uVar12 = 2;
                goto LAB_0072e9e8;
              }
              goto LAB_0072ede0;
            }
            lVar13 = *(long *)(lVar13 + 0x28);
            pbVar5 = PTR_CMD_UNLOG_ALL_M10_00d71cd8;
          }
        }
        else {
          if (iVar3 != 2) goto LAB_0072ede0;
          if (0x3b < iVar2) {
            if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
               (iVar9 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar9 != 0)) {
                    /* try { // try from 0072eea4 to 0072eeaf has its CatchHandler @ 0072ef28 */
              spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
              __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
              __cxa_guard_release(PTR_s_instance_00d70cb0);
            }
            local_68 = 
            "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
            ;
            local_60 = 0xc4;
            local_58 = "OnTimerTimeout";
            spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_68,4,
                                "get version timeout",0x13);
            uVar8 = uStack_3c;
            local_50 = (FmwUpdateGnssBoardBeiyun)0x26;
            pFVar1 = this + 0x360;
            uStack_3f = 0x756f;
            uStack_3d = 0x74;
            uStack_48._1_3_ = (undefined3)s_get_version_timeout_003b3843._8_8_;
            uStack_44 = SUB84(s_get_version_timeout_003b3843._8_8_,3);
            cStack_40 = SUB81(s_get_version_timeout_003b3843._8_8_,7);
            uStack_4f = (undefined7)s_get_version_timeout_003b3843._0_8_;
            uStack_48._0_1_ = SUB81(s_get_version_timeout_003b3843._0_8_,7);
            uStack_3c = uStack_3c & 0xffffff00;
            *(undefined4 *)(this + 0x35c) = 7;
            if (pFVar1 != &local_50) {
              if (((byte)*pFVar1 & 1) == 0) {
                *(ulong *)(this + 0x368) = CONCAT44(uStack_44,uStack_48);
                *(ulong *)pFVar1 = CONCAT71(uStack_4f,0x26);
                *(ulong *)(this + 0x370) =
                     CONCAT44(uVar8,CONCAT13(0x74,CONCAT21(0x756f,cStack_40))) & 0xffffff00ffffffff;
              }
              else {
                    /* try { // try from 0072edb8 to 0072edcf has its CatchHandler @ 0072ef44 */
                FUN_006b7474(pFVar1,(ulong)&local_50 | 1,0x13);
              }
            }
            GoState(this,7);
            goto LAB_0072edd0;
          }
          lVar13 = *(long *)(lVar13 + 0x28);
          pbVar5 = PTR_CMD_GET_VERSION_00d71cd0;
        }
joined_r0x0072ec78:
        if (lVar13 == local_38) {
          IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,pbVar5);
          return;
        }
        goto LAB_0072ef84;
      }
      if (iVar3 == 3) {
        if (2 < iVar2) {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar9 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar9 != 0)) {
                    /* try { // try from 0072ee5c to 0072ee67 has its CatchHandler @ 0072ef2c */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_80 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
          ;
          local_78 = 0xd0;
          local_70 = "OnTimerTimeout";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,4,
                              "enter boot timeout",0x12);
          local_50 = (FmwUpdateGnssBoardBeiyun)0x24;
          pFVar1 = this + 0x360;
          uStack_3f = 0x7475;
          uStack_48._1_3_ = (undefined3)s_enter_boot_timeout_003fa8a8._8_8_;
          uStack_44 = SUB84(s_enter_boot_timeout_003fa8a8._8_8_,3);
          cStack_40 = SUB81(s_enter_boot_timeout_003fa8a8._8_8_,7);
          uStack_4f = (undefined7)s_enter_boot_timeout_003fa8a8._0_8_;
          uStack_48._0_1_ = SUB81(s_enter_boot_timeout_003fa8a8._0_8_,7);
          uStack_3d = 0;
          *(undefined4 *)(this + 0x35c) = 8;
          if (pFVar1 != &local_50) {
            if (((byte)*pFVar1 & 1) == 0) {
              *(ulong *)(this + 0x368) = CONCAT44(uStack_44,uStack_48);
              *(ulong *)pFVar1 = CONCAT71(uStack_4f,0x24);
              *(ulong *)(this + 0x370) = CONCAT44(uStack_3c,(uint)CONCAT21(0x7475,cStack_40));
            }
            else {
                    /* try { // try from 0072ed3c to 0072ed53 has its CatchHandler @ 0072ef48 */
              FUN_006b7474(pFVar1,(ulong)&local_50 | 1,0x12);
            }
          }
          GoState(this,7);
LAB_0072edd0:
          if (((byte)local_50 & 1) != 0) {
            pcVar10 = (char *)CONCAT44(uStack_3c,CONCAT13(uStack_3d,CONCAT21(uStack_3f,cStack_40)));
LAB_0072eddc:
            operator_delete(pcVar10);
          }
        }
      }
      else if (iVar3 == 4) {
        if (0xa5 < iVar2) {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar9 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar9 != 0)) {
                    /* try { // try from 0072eeec to 0072eef7 has its CatchHandler @ 0072ef24 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_98 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
          ;
          local_90 = 0xda;
          local_88 = "OnTimerTimeout";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_98,4,
                              "transmit respond timeout",0x18);
          pcVar10 = (char *)operator_new(0x20);
          uVar7 = s_transmit_respond_timeout_0042c62e._16_8_;
          uVar6 = s_transmit_respond_timeout_0042c62e._8_8_;
          uVar12 = s_transmit_respond_timeout_0042c62e._0_8_;
          FVar4 = this[0x360];
          pcVar10[0x18] = '\0';
          *(undefined8 *)(pcVar10 + 8) = uVar6;
          *(undefined8 *)pcVar10 = uVar12;
          *(undefined8 *)(pcVar10 + 0x10) = uVar7;
          *(undefined4 *)(this + 0x35c) = 9;
          if (((byte)FVar4 & 1) == 0) {
                    /* try { // try from 0072e950 to 0072e95f has its CatchHandler @ 0072ef60 */
            FUN_006b73c8(this + 0x360,pcVar10,0x18);
          }
          else {
                    /* try { // try from 0072ec94 to 0072ecaf has its CatchHandler @ 0072ef60 */
            FUN_006b7474(this + 0x360,pcVar10,0x18);
          }
          GoState(this,7);
          goto LAB_0072eddc;
        }
        if (0xa5 < iVar9 - *(int *)(this + 0x308)) {
          *(int *)(this + 0x308) = iVar9;
          uVar12 = spdlog::default_logger_raw();
          local_a0 = *(long *)(this + 0x340) - *(long *)(this + 0x338);
          local_50 = (FmwUpdateGnssBoardBeiyun)0x40;
          uStack_4f = 0x3fa8;
          uStack_48 = 0xe3;
          cStack_40 = -0x1b;
          uStack_3f = 0x3b07;
          uStack_3d = 0;
          uStack_3c = 0;
          spdlog::logger::log_<unsigned_long&,unsigned_long>
                    (uVar12,&local_50,2,"transmit offset: {}/{} bytes",0x1c,this + 0x350,&local_a0);
        }
        if (*(ulong *)(this + 0x350) < (ulong)(*(long *)(this + 0x340) - *(long *)(this + 0x338))) {
          TransmitNextBlock(this);
        }
        else {
          GoState(this,5);
        }
      }
    }
    else if (iVar3 < 7) {
      if (iVar3 == 5) {
        if (0x77 < iVar2) {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar9 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar9 != 0)) {
                    /* try { // try from 0072ee14 to 0072ee1f has its CatchHandler @ 0072ef30 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_b8 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
          ;
          local_b0 = 0xf6;
          local_a8 = "OnTimerTimeout";
          spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_b8,4,
                              "wait finish timeout",0x13);
          uVar8 = uStack_3c;
          local_50 = (FmwUpdateGnssBoardBeiyun)0x26;
          pFVar1 = this + 0x360;
          uStack_3f = 0x756f;
          uStack_3d = 0x74;
          uStack_48._1_3_ = (undefined3)s_wait_finish_timeout_0040c223._8_8_;
          uStack_44 = SUB84(s_wait_finish_timeout_0040c223._8_8_,3);
          cStack_40 = SUB81(s_wait_finish_timeout_0040c223._8_8_,7);
          uStack_4f = (undefined7)s_wait_finish_timeout_0040c223._0_8_;
          uStack_48._0_1_ = SUB81(s_wait_finish_timeout_0040c223._0_8_,7);
          uStack_3c = uStack_3c & 0xffffff00;
          *(undefined4 *)(this + 0x35c) = 10;
          if (pFVar1 != &local_50) {
            if (((byte)*pFVar1 & 1) == 0) {
              *(ulong *)(this + 0x368) = CONCAT44(uStack_44,uStack_48);
              *(ulong *)pFVar1 = CONCAT71(uStack_4f,0x26);
              *(ulong *)(this + 0x370) =
                   CONCAT44(uVar8,CONCAT13(0x74,CONCAT21(0x756f,cStack_40))) & 0xffffff00ffffffff;
            }
            else {
                    /* try { // try from 0072ed20 to 0072ed37 has its CatchHandler @ 0072ef4c */
              FUN_006b7474(pFVar1,(ulong)&local_50 | 1,0x13);
            }
          }
          GoState(this,7);
          goto LAB_0072edd0;
        }
      }
      else if (iVar3 == 6) goto LAB_0072e9c8;
    }
    else {
      if (iVar3 == 7) {
LAB_0072e9c8:
        Timer::Stop((Timer *)(this + 0x1c0));
        if (*(long *)(lVar13 + 0x28) == local_38) {
          uVar12 = 8;
LAB_0072e9e8:
          GoState(this,uVar12);
          return;
        }
        goto LAB_0072ef84;
      }
      if (iVar3 == 8) {
        if (iVar2 == 0) {
          lVar13 = *(long *)(lVar13 + 0x28);
          pbVar5 = PTR_CMD_LEAVE_PASS_THROUGH_2_00d71bf8;
          goto joined_r0x0072ec78;
        }
        if (iVar9 == 2) {
          Timer::Stop((Timer *)(this + 0x1c0));
          NotifyResult(this);
          this[0x358] = (FmwUpdateGnssBoardBeiyun)0x0;
          uVar6 = _UNK_003973f8;
          uVar12 = _DAT_003973f0;
          *(undefined4 *)(this + 0x310) = 0xffffffff;
          *(undefined8 *)(this + 0x318) = 0;
          *(undefined8 *)(this + 0x308) = uVar6;
          *(undefined8 *)(this + 0x300) = uVar12;
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
             (lVar11 = FUN_00cc2c10(0xffffffffffffffff,this_00 + 8), lVar11 == 0)) {
            (**(code **)(*(long *)this_00 + 0x10))(this_00);
            if (*(long *)(lVar13 + 0x28) == local_38) {
              std::__ndk1::__shared_weak_count::__release_weak(this_00);
              return;
            }
            goto LAB_0072ef84;
          }
        }
      }
    }
  }
LAB_0072ede0:
  if (*(long *)(lVar13 + 0x28) == local_38) {
    return;
  }
LAB_0072ef84:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

