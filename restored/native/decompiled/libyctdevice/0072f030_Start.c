/* Artifact: libyctdevice.so | Address: 0072f030 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* FmwUpdateGnssBoardBeiyun::Start(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>,
   std::__ndk1::allocator<char> >, std::__ndk1::shared_ptr<FmwUpdateListener>) */

void __thiscall
FmwUpdateGnssBoardBeiyun::Start(FmwUpdateGnssBoardBeiyun *this,undefined8 *param_2,long *param_3)

{
  long lVar1;
  FmwUpdateGnssBoardBeiyun *pFVar2;
  undefined8 uVar3;
  int iVar4;
  char *pcVar5;
  long lVar6;
  undefined8 uVar7;
  ulong uVar8;
  FmwUpdateListener *pFVar9;
  FmwUpdateGnssBoardBeiyun *pFVar10;
  __shared_weak_count *this_00;
  undefined8 uVar11;
  long lVar12;
  ulong local_f0;
  undefined8 uStack_e8;
  char *local_e0;
  ulong local_d0;
  undefined8 uStack_c8;
  char *local_c0;
  char *local_b8;
  undefined4 local_b0;
  char *local_a8;
  ulong local_a0;
  undefined8 uStack_98;
  char *local_90;
  char *local_80;
  undefined4 local_78;
  char *local_70;
  ulong local_68;
  char *local_60;
  undefined8 local_58;
  char *local_50;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  if (this[0x358] == (FmwUpdateGnssBoardBeiyun)0x0) {
    pFVar10 = this + 0x48;
    if (((byte)*pFVar10 & 1) != 0) {
      operator_delete(*(void **)(this + 0x58));
    }
    uVar11 = param_2[1];
    uVar7 = *param_2;
    *(undefined8 *)(this + 0x58) = param_2[2];
    *(undefined8 *)(this + 0x50) = uVar11;
    *(undefined8 *)pFVar10 = uVar7;
    *(undefined2 *)param_2 = 0;
    lVar12 = param_3[1];
    lVar6 = *param_3;
    *param_3 = 0;
    param_3[1] = 0;
    this_00 = *(__shared_weak_count **)(this + 0x68);
    *(long *)(this + 0x68) = lVar12;
    *(long *)(this + 0x60) = lVar6;
    if (this_00 != (__shared_weak_count *)0x0) {
      lVar6 = FUN_00cc2c10(0xffffffffffffffff,this_00 + 8);
      if (lVar6 == 0) {
        (**(code **)(*(long *)this_00 + 0x10))(this_00);
        std::__ndk1::__shared_weak_count::__release_weak(this_00);
        lVar6 = *(long *)(this + 0x60);
      }
      else {
        lVar6 = *(long *)(this + 0x60);
      }
    }
    if ((lVar6 == 0) || (*(char *)(lVar6 + 8) == '\0')) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 0072f520 to 0072f52b has its CatchHandler @ 0072f63c */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_b8 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
      ;
      local_b0 = 0x2d;
      local_a8 = "Start";
      spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_b8,4,
                          "invalid update listener",0x17);
    }
    else {
      local_60 = (char *)0x0;
      local_58 = 0;
      local_50 = (char *)0x0;
      uVar8 = (ulong)((byte)this[0x48] >> 1);
      pFVar2 = this + 0x49;
      if (((byte)this[0x48] & 1) != 0) {
        uVar8 = *(ulong *)(this + 0x50);
        pFVar2 = *(FmwUpdateGnssBoardBeiyun **)(this + 0x58);
      }
                    /* try { // try from 0072f1d0 to 0072f1db has its CatchHandler @ 0072f680 */
      FUN_0072c9bc(&local_60,pFVar2,pFVar2 + uVar8);
                    /* try { // try from 0072f1dc to 0072f1eb has its CatchHandler @ 0072f67c */
      std::__ndk1::__fs::filesystem::__status((path *)&local_60,(error_code *)0x0);
      uVar8 = local_68;
      if (((ulong)local_60 & 1) != 0) {
        operator_delete(local_50);
      }
      if ((((uint)uVar8 & 0xff) == 0xff) || ((uVar8 & 0xff) == 0)) {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 0072f568 to 0072f573 has its CatchHandler @ 0072f638 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_60 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
        ;
        local_58 = CONCAT44(local_58._4_4_,0x34);
        local_50 = "Start";
        spdlog::logger::
        log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_60,4,
                   "firmware file not found: {}",0x1b,pFVar10);
        pFVar9 = *(FmwUpdateListener **)(this + 0x60);
        local_c0 = (char *)operator_new(0x20);
        uVar11 = s_firmware_file_not_found_0040c18d._0_8_;
        uStack_c8 = _UNK_00397dc8;
        local_d0 = _DAT_00397dc0;
        uVar7 = CONCAT71(s_firmware_file_not_found_0040c18d._16_7_,
                         s_firmware_file_not_found_0040c18d[0xf]);
        *(ulong *)(local_c0 + 8) =
             CONCAT17(s_firmware_file_not_found_0040c18d[0xf],
                      s_firmware_file_not_found_0040c18d._8_7_);
        *(undefined8 *)local_c0 = uVar11;
        *(undefined8 *)(local_c0 + 0xf) = uVar7;
        local_c0[0x17] = '\0';
                    /* try { // try from 0072f2a0 to 0072f2af has its CatchHandler @ 0072f668 */
        FmwUpdateListener::OnUpdateFailed(pFVar9,1,&local_d0);
        pcVar5 = local_c0;
        uVar8 = local_d0;
        goto joined_r0x0072f104;
      }
      uVar8 = LoadFirmwareFile(this);
      if ((uVar8 & 1) != 0) {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 0072f5b0 to 0072f5bb has its CatchHandler @ 0072f634 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_60 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
        ;
        local_68 = *(long *)(this + 0x340) - *(long *)(this + 0x338);
        local_58 = CONCAT44(local_58._4_4_,0x41);
        local_50 = "Start";
        spdlog::logger::
        log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&,unsigned_long>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_60,2,
                   "GnssBoardUpdate start, file: {}, size: {}",0x29,pFVar10,&local_68);
        *(undefined8 *)(this + 0x350) = 0;
        this[0x358] = (FmwUpdateGnssBoardBeiyun)0x1;
        *(undefined8 *)(this + 0x30c) = 0xffffffffffffffff;
        *(undefined8 *)(this + 0x318) = 0;
        if (((byte)this[800] & 1) == 0) {
          *(undefined2 *)(this + 800) = 0;
        }
        else {
          **(undefined1 **)(this + 0x330) = 0;
          *(undefined8 *)(this + 0x328) = 0;
        }
        *(undefined4 *)(this + 0x35c) = 0;
        if (((byte)this[0x360] & 1) == 0) {
          *(undefined2 *)(this + 0x360) = 0;
        }
        else {
          **(undefined1 **)(this + 0x370) = 0;
          *(undefined8 *)(this + 0x368) = 0;
        }
        GoState(this,1);
        uVar7 = 1;
        goto LAB_0072f318;
      }
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 0072f5f8 to 0072f603 has its CatchHandler @ 0072f630 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_60 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
      ;
      local_58 = CONCAT44(local_58._4_4_,0x3c);
      local_50 = "Start";
      spdlog::logger::
      log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_60,4,
                 "failed to load firmware file: {}",0x20,pFVar10);
      pFVar9 = *(FmwUpdateListener **)(this + 0x60);
      local_e0 = (char *)operator_new(0x20);
      uVar3 = s_failed_to_load_firmware_file_00398853._20_8_;
      uVar11 = s_failed_to_load_firmware_file_00398853._0_8_;
      uStack_e8 = _UNK_00397fa8;
      local_f0 = _DAT_00397fa0;
      uVar7 = CONCAT44(s_failed_to_load_firmware_file_00398853._16_4_,
                       s_failed_to_load_firmware_file_00398853._12_4_);
      *(ulong *)(local_e0 + 8) =
           CONCAT44(s_failed_to_load_firmware_file_00398853._12_4_,
                    s_failed_to_load_firmware_file_00398853._8_4_);
      *(undefined8 *)local_e0 = uVar11;
      *(undefined8 *)(local_e0 + 0x14) = uVar3;
      *(undefined8 *)(local_e0 + 0xc) = uVar7;
      local_e0[0x1c] = '\0';
                    /* try { // try from 0072f468 to 0072f477 has its CatchHandler @ 0072f654 */
      FmwUpdateListener::OnUpdateFailed(pFVar9,2,&local_f0);
      pcVar5 = local_e0;
      if ((local_f0 & 1) == 0) goto LAB_0072f314;
LAB_0072f10c:
      operator_delete(pcVar5);
    }
  }
  else {
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 0072f4d8 to 0072f4e3 has its CatchHandler @ 0072f640 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_80 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
    ;
    local_78 = 0x1e;
    local_70 = "Start";
    spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,3,
                        "GnssBoardUpdate already running",0x1f);
    pFVar9 = (FmwUpdateListener *)*param_3;
    if (pFVar9 != (FmwUpdateListener *)0x0) {
      local_90 = (char *)operator_new(0x20);
      uVar11 = s_upgrade_already_running_0041deda._0_8_;
      uStack_98 = _UNK_00397dc8;
      local_a0 = _DAT_00397dc0;
      uVar7 = CONCAT71(s_upgrade_already_running_0041deda._16_7_,
                       s_upgrade_already_running_0041deda[0xf]);
      *(ulong *)(local_90 + 8) =
           CONCAT17(s_upgrade_already_running_0041deda[0xf],s_upgrade_already_running_0041deda._8_7_
                   );
      *(undefined8 *)local_90 = uVar11;
      *(undefined8 *)(local_90 + 0xf) = uVar7;
      local_90[0x17] = '\0';
                    /* try { // try from 0072f0f0 to 0072f0ff has its CatchHandler @ 0072f694 */
      FmwUpdateListener::OnUpdateFailed(pFVar9,99,&local_a0);
      pcVar5 = local_90;
      uVar8 = local_a0;
joined_r0x0072f104:
      if ((uVar8 & 1) != 0) goto LAB_0072f10c;
    }
  }
LAB_0072f314:
  uVar7 = 0;
LAB_0072f318:
  if (*(long *)(lVar1 + 0x28) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar7);
  }
  return;
}

