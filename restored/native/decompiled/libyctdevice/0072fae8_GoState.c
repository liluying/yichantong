/* Artifact: libyctdevice.so | Address: 0072fae8 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::GoState(FmwUpdateGnssBoardBeiyun::UpdateState) */

void __thiscall FmwUpdateGnssBoardBeiyun::GoState(FmwUpdateGnssBoardBeiyun *this,int param_2)

{
  long lVar1;
  undefined *puVar2;
  int iVar3;
  undefined8 uVar4;
  char *pcVar5;
  undefined1 *puVar6;
  char *pcVar7;
  undefined8 uVar8;
  undefined2 uVar9;
  byte local_68;
  undefined8 local_67;
  undefined1 uStack_5f;
  undefined1 uStack_5e;
  undefined1 auStack_5d [5];
  undefined8 local_58;
  char *local_50;
  undefined4 local_48;
  char *local_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  if (*(int *)(this + 0x300) == param_2) goto LAB_0072fd60;
  *(int *)(this + 0x300) = param_2;
  puVar2 = PTR_s_instance_00d70cb0;
  *(undefined4 *)(this + 0x304) = 0;
  if (((*puVar2 & 1) == 0) && (iVar3 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar3 != 0)) {
                    /* try { // try from 0072fd94 to 0072fd9f has its CatchHandler @ 0072fdcc */
    spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
    __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
    __cxa_guard_release(PTR_s_instance_00d70cb0);
  }
  uVar8 = s_EnterBoot_003adb97._0_8_;
  uVar4 = *(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128);
  pcVar5 = (char *)((ulong)&local_68 | 1);
  if (param_2 < 4) {
    if (param_2 < 2) {
      if (param_2 == 0) {
        local_68 = 8;
        local_67 = CONCAT44(local_67._4_4_,0x656c6449);
        puVar6 = (undefined1 *)((ulong)&local_68 | 5);
      }
      else {
        if (param_2 != 1) goto LAB_0072fce0;
        pcVar7 = "EnterPassThrough";
LAB_0072fba0:
        uVar8 = *(undefined8 *)pcVar7;
        local_68 = 0x20;
        puVar6 = (undefined1 *)((long)&local_58 + 1);
        *(undefined8 *)(pcVar5 + 8) = *(undefined8 *)(pcVar7 + 8);
        *(undefined8 *)pcVar5 = uVar8;
      }
    }
    else if (param_2 == 2) {
      pcVar7 = "GetVersion";
      uVar9 = 0x6e6f;
LAB_0072fc4c:
      uVar8 = *(undefined8 *)pcVar7;
      local_68 = 0x14;
      *(undefined2 *)(pcVar5 + 8) = uVar9;
      puVar6 = auStack_5d;
      *(undefined8 *)pcVar5 = uVar8;
    }
    else {
      if (param_2 != 3) goto LAB_0072fce0;
      local_68 = 0x12;
      pcVar5[8] = 't';
      *(undefined8 *)pcVar5 = uVar8;
      puVar6 = &uStack_5e;
    }
  }
  else if (param_2 < 6) {
    if (param_2 == 4) {
      local_68 = 0x10;
      local_67 = 0x74696d736e617254;
      puVar6 = &uStack_5f;
    }
    else {
      if (param_2 == 5) {
        pcVar7 = "WaitFinish";
        uVar9 = 0x6873;
        goto LAB_0072fc4c;
      }
LAB_0072fce0:
      local_68 = 0xe;
      puVar6 = (undefined1 *)((long)&local_67 + 7);
      builtin_strncpy(pcVar5,"Unknown",7);
    }
  }
  else if (param_2 == 6) {
    local_68 = 0xc;
    builtin_strncpy(pcVar5,"Finish",6);
    puVar6 = (undefined1 *)((ulong)&local_68 | 7);
  }
  else {
    if (param_2 != 7) {
      if (param_2 == 8) {
        pcVar7 = "LeavePassThrough";
        goto LAB_0072fba0;
      }
      goto LAB_0072fce0;
    }
    local_68 = 10;
    builtin_strncpy(pcVar5,"Error",5);
    puVar6 = (undefined1 *)((ulong)&local_68 | 6);
  }
  *puVar6 = 0;
  local_50 = 
  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
  ;
  local_48 = 0x129;
  local_40 = "GoState";
                    /* try { // try from 0072fd2c to 0072fd47 has its CatchHandler @ 0072fde0 */
  spdlog::logger::
  log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>
            (uVar4,&local_50,2,"state -> {}",0xb,&local_68);
  if ((local_68 & 1) != 0) {
    operator_delete(local_58);
  }
  StateEnter(this);
LAB_0072fd60:
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

