/* Artifact: libyctdevice.so | Address: 00734788 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::GoState(FmwUpdateGnssBoardUnicore::UpdateState) */

void __thiscall FmwUpdateGnssBoardUnicore::GoState(FmwUpdateGnssBoardUnicore *this,int param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  int iVar6;
  undefined8 uVar7;
  char *pcVar8;
  undefined1 *puVar9;
  char *pcVar10;
  undefined8 uVar11;
  byte local_68 [8];
  undefined1 auStack_60 [2];
  undefined1 local_5e;
  undefined1 auStack_5d [2];
  undefined1 auStack_5b [2];
  undefined1 uStack_59;
  undefined8 local_58;
  char *local_50;
  undefined4 local_48;
  char *local_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  if (*(int *)(this + 0x1b0) == param_2) goto LAB_00734a88;
  *(int *)(this + 0x1b0) = param_2;
  *(undefined4 *)(this + 0x1b4) = 0;
  if (((byte)this[0x1b8] & 1) == 0) {
    *(undefined2 *)(this + 0x1b8) = 0;
  }
  else {
    **(undefined1 **)(this + 0x1c8) = 0;
    *(undefined8 *)(this + 0x1c0) = 0;
  }
  if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
     (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 00734abc to 00734ac7 has its CatchHandler @ 00734af4 */
    spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
    __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
    __cxa_guard_release(PTR_s_instance_00d70cb0);
  }
  uVar5 = s_MenuReset_00426bb3._0_8_;
  uVar4 = s_ResetBoard_00400614._0_8_;
  uVar3 = s_GoBootloader_003a7e17._0_8_;
  uVar2 = s_WaitFlashComplete_003988a9._8_8_;
  uVar11 = s_WaitFlashComplete_003988a9._0_8_;
  uVar7 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
  pcVar8 = (char *)((ulong)local_68 | 1);
  if (param_2 < 5) {
    if (param_2 < 2) {
      if (param_2 == 0) {
        local_68[0] = 8;
        local_68[1] = 0x49;
        local_68[2] = 100;
        local_68[3] = 0x6c;
        local_68[4] = 0x65;
        puVar9 = (undefined1 *)((ulong)local_68 | 5);
      }
      else {
        if (param_2 != 1) goto LAB_00734a08;
        pcVar10 = "EnterPassThrough";
LAB_007348c8:
        uVar11 = *(undefined8 *)pcVar10;
        local_68[0] = 0x20;
        puVar9 = (undefined1 *)((long)&local_58 + 1);
        *(undefined8 *)(pcVar8 + 8) = *(undefined8 *)(pcVar10 + 8);
        *(undefined8 *)pcVar8 = uVar11;
      }
    }
    else if (param_2 == 2) {
      local_68[0] = 0x14;
      pcVar8[8] = 'r';
      pcVar8[9] = 'd';
      *(undefined8 *)pcVar8 = uVar4;
      puVar9 = auStack_5d;
    }
    else if (param_2 == 3) {
      local_68[0] = 0x18;
      pcVar8[8] = 'a';
      pcVar8[9] = 'd';
      pcVar8[10] = 'e';
      pcVar8[0xb] = 'r';
      puVar9 = auStack_5b;
      *(undefined8 *)pcVar8 = uVar3;
    }
    else {
      if (param_2 == 4) {
        pcVar10 = "MenuSendFirmware";
        goto LAB_007348c8;
      }
LAB_00734a08:
      local_68[0] = 0xe;
      puVar9 = auStack_60;
      builtin_strncpy(pcVar8,"Unknown",7);
    }
  }
  else if (param_2 < 8) {
    if (param_2 == 5) {
      uVar11 = CONCAT62(s_XmodemTransfer_003fd780._8_6_,s_XmodemTransfer_003fd780._6_2_);
      local_68[0] = 0x1c;
      *(ulong *)pcVar8 = CONCAT26(s_XmodemTransfer_003fd780._6_2_,s_XmodemTransfer_003fd780._0_6_);
      puVar9 = &uStack_59;
      *(undefined8 *)(pcVar8 + 6) = uVar11;
    }
    else if (param_2 == 6) {
      local_68[0] = 0x22;
      pcVar8[0x10] = 'e';
      *(undefined8 *)(pcVar8 + 8) = uVar2;
      *(undefined8 *)pcVar8 = uVar11;
      puVar9 = (undefined1 *)((long)&local_58 + 2);
    }
    else {
      if (param_2 != 7) goto LAB_00734a08;
      local_68[0] = 0x12;
      pcVar8[8] = 't';
      *(undefined8 *)pcVar8 = uVar5;
      puVar9 = &local_5e;
    }
  }
  else if (param_2 == 8) {
    local_68[0] = 0xc;
    builtin_strncpy(pcVar8,"Finish",6);
    puVar9 = (undefined1 *)((ulong)local_68 | 7);
  }
  else {
    if (param_2 != 9) {
      if (param_2 == 10) {
        pcVar10 = "LeavePassThrough";
        goto LAB_007348c8;
      }
      goto LAB_00734a08;
    }
    local_68[0] = 10;
    builtin_strncpy(pcVar8,"Error",5);
    puVar9 = (undefined1 *)((ulong)local_68 | 6);
  }
  *puVar9 = 0;
  local_50 = 
  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
  ;
  local_48 = 0x315;
  local_40 = "GoState";
                    /* try { // try from 00734a54 to 00734a6f has its CatchHandler @ 00734b08 */
  spdlog::logger::
  log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>
            (uVar7,&local_50,2,"state -> {}",0xb,local_68);
  if ((local_68[0] & 1) != 0) {
    operator_delete(local_58);
  }
  StateEnter(this);
LAB_00734a88:
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

