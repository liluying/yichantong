/* Artifact: libyctdevice.so | Address: 00733580 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* FmwUpdateGnssBoardUnicore::Start(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>,
   std::__ndk1::allocator<char> >, std::__ndk1::shared_ptr<FmwUpdateListener>) */

void __thiscall
FmwUpdateGnssBoardUnicore::Start(FmwUpdateGnssBoardUnicore *this,undefined8 *param_2,long *param_3)

{
  long lVar1;
  FmwUpdateGnssBoardUnicore *pFVar2;
  undefined8 uVar3;
  int iVar4;
  long lVar5;
  undefined8 uVar6;
  ulong uVar7;
  FmwUpdateListener *pFVar8;
  FmwUpdateGnssBoardUnicore *pFVar9;
  __shared_weak_count *this_00;
  undefined8 uVar10;
  long lVar11;
  byte local_108 [16];
  char *local_f8;
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
  if (this[0x200] == (FmwUpdateGnssBoardUnicore)0x0) {
    pFVar9 = this + 0x48;
    if (((byte)*pFVar9 & 1) != 0) {
      operator_delete(*(void **)(this + 0x58));
    }
    uVar10 = param_2[1];
    uVar6 = *param_2;
    *(undefined8 *)(this + 0x58) = param_2[2];
    *(undefined8 *)(this + 0x50) = uVar10;
    *(undefined8 *)pFVar9 = uVar6;
    *(undefined2 *)param_2 = 0;
    lVar11 = param_3[1];
    lVar5 = *param_3;
    *param_3 = 0;
    param_3[1] = 0;
    this_00 = *(__shared_weak_count **)(this + 0x68);
    *(long *)(this + 0x68) = lVar11;
    *(long *)(this + 0x60) = lVar5;
    if (this_00 != (__shared_weak_count *)0x0) {
      lVar5 = FUN_00cc2c10(0xffffffffffffffff,this_00 + 8);
      if (lVar5 == 0) {
        (**(code **)(*(long *)this_00 + 0x10))(this_00);
        std::__ndk1::__shared_weak_count::__release_weak(this_00);
        lVar5 = *(long *)(this + 0x60);
      }
      else {
        lVar5 = *(long *)(this + 0x60);
      }
    }
    if ((lVar5 == 0) || (*(char *)(lVar5 + 8) == '\0')) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 00733ae0 to 00733aeb has its CatchHandler @ 00733bb0 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_b8 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      local_b0 = 0x2b;
      local_a8 = "Start";
      spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_b8,4,
                          "invalid update listener",0x17);
    }
    else {
      local_60 = (char *)0x0;
      local_58 = 0;
      local_50 = (char *)0x0;
      uVar7 = (ulong)((byte)this[0x48] >> 1);
      pFVar2 = this + 0x49;
      if (((byte)this[0x48] & 1) != 0) {
        uVar7 = *(ulong *)(this + 0x50);
        pFVar2 = *(FmwUpdateGnssBoardUnicore **)(this + 0x58);
      }
                    /* try { // try from 00733720 to 0073372b has its CatchHandler @ 00733c08 */
      FUN_0072c9bc(&local_60,pFVar2,pFVar2 + uVar7);
                    /* try { // try from 0073372c to 0073373b has its CatchHandler @ 00733c04 */
      std::__ndk1::__fs::filesystem::__status((path *)&local_60,(error_code *)0x0);
      uVar7 = local_68;
      if (((ulong)local_60 & 1) != 0) {
        operator_delete(local_50);
      }
      if ((((uint)uVar7 & 0xff) == 0xff) || ((uVar7 & 0xff) == 0)) {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 00733b28 to 00733b33 has its CatchHandler @ 00733bac */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_60 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_58 = CONCAT44(local_58._4_4_,0x32);
        local_50 = "Start";
        spdlog::logger::
        log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_60,4,
                   "firmware file not found: {}",0x1b,pFVar9);
        pFVar8 = *(FmwUpdateListener **)(this + 0x60);
        local_c0 = (char *)operator_new(0x20);
        uVar10 = s_firmware_file_not_found_0040c18d._0_8_;
        uStack_c8 = _UNK_00397dc8;
        local_d0 = _DAT_00397dc0;
        uVar6 = CONCAT71(s_firmware_file_not_found_0040c18d._16_7_,
                         s_firmware_file_not_found_0040c18d[0xf]);
        *(ulong *)(local_c0 + 8) =
             CONCAT17(s_firmware_file_not_found_0040c18d[0xf],
                      s_firmware_file_not_found_0040c18d._8_7_);
        *(undefined8 *)local_c0 = uVar10;
        *(undefined8 *)(local_c0 + 0xf) = uVar6;
        local_c0[0x17] = '\0';
                    /* try { // try from 007337f0 to 007337ff has its CatchHandler @ 00733bf0 */
        FmwUpdateListener::OnUpdateFailed(pFVar8,1,&local_d0);
        local_f8 = local_c0;
        uVar7 = local_d0;
joined_r0x00733654:
        if ((uVar7 & 1) == 0) goto LAB_00733864;
      }
      else {
        uVar7 = LoadFirmwareFile(this);
        if ((uVar7 & 1) == 0) {
          if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
             (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 00733b70 to 00733b7b has its CatchHandler @ 00733ba8 */
            spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
            __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
            __cxa_guard_release(PTR_s_instance_00d70cb0);
          }
          local_60 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_58 = CONCAT44(local_58._4_4_,0x3a);
          local_50 = "Start";
          spdlog::logger::
          log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                    (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_60,4,
                     "failed to load firmware file: {}",0x20,pFVar9);
          pFVar8 = *(FmwUpdateListener **)(this + 0x60);
          local_e0 = (char *)operator_new(0x20);
          uVar3 = s_failed_to_load_firmware_file_00398853._20_8_;
          uVar10 = s_failed_to_load_firmware_file_00398853._0_8_;
          uStack_e8 = _UNK_00397fa8;
          local_f0 = _DAT_00397fa0;
          uVar6 = CONCAT44(s_failed_to_load_firmware_file_00398853._16_4_,
                           s_failed_to_load_firmware_file_00398853._12_4_);
          *(ulong *)(local_e0 + 8) =
               CONCAT44(s_failed_to_load_firmware_file_00398853._12_4_,
                        s_failed_to_load_firmware_file_00398853._8_4_);
          *(undefined8 *)local_e0 = uVar10;
          *(undefined8 *)(local_e0 + 0x14) = uVar3;
          *(undefined8 *)(local_e0 + 0xc) = uVar6;
          local_e0[0x1c] = '\0';
                    /* try { // try from 007339b8 to 007339c7 has its CatchHandler @ 00733bdc */
          FmwUpdateListener::OnUpdateFailed(pFVar8,2,&local_f0);
          local_f8 = local_e0;
          uVar7 = local_f0;
          goto joined_r0x00733654;
        }
        uVar7 = ValidateFirmwareFile(this);
        uVar6 = spdlog::default_logger_raw();
        if ((uVar7 & 1) != 0) {
          local_68 = *(long *)(this + 0x1e8) - *(long *)(this + 0x1e0);
          local_60 = 
          "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
          ;
          local_58 = CONCAT44(local_58._4_4_,0x47);
          local_50 = "Start";
          spdlog::logger::
          log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&,unsigned_long>
                    (uVar6,&local_60,2,"GnssBoardUnicoreUpdate start, file: {}, size: {}",0x30,
                     pFVar9,&local_68);
          this[0x200] = (FmwUpdateGnssBoardUnicore)0x1;
          *(undefined8 *)(this + 0x1f8) = 0;
          *(undefined2 *)(this + 0x1d4) = 0x101;
          *(undefined8 *)(this + 0x1d8) = 0xffffffff00000000;
          *(undefined4 *)(this + 0x1d0) = 0;
          if (((byte)this[0x1b8] & 1) == 0) {
            *(undefined2 *)(this + 0x1b8) = 0;
          }
          else {
            **(undefined1 **)(this + 0x1c8) = 0;
            *(undefined8 *)(this + 0x1c0) = 0;
          }
          *(undefined4 *)(this + 0x204) = 0;
          if (((byte)this[0x208] & 1) == 0) {
            *(undefined2 *)(this + 0x208) = 0;
          }
          else {
            **(undefined1 **)(this + 0x218) = 0;
            *(undefined8 *)(this + 0x210) = 0;
          }
          GoState(this,1);
          uVar6 = 1;
          goto LAB_00733868;
        }
        local_60 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_58 = CONCAT44(local_58._4_4_,0x42);
        local_50 = "Start";
        spdlog::logger::
        log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                  (uVar6,&local_60,4,"firmware file validation failed: {}",0x23,pFVar9);
        pFVar8 = *(FmwUpdateListener **)(this + 0x60);
        FUN_006a0d70(local_108,"firmware file validation failed");
                    /* try { // try from 00733a28 to 00733a37 has its CatchHandler @ 00733bc8 */
        FmwUpdateListener::OnUpdateFailed(pFVar8,2,local_108);
        if ((local_108[0] & 1) == 0) goto LAB_00733864;
      }
      operator_delete(local_f8);
    }
  }
  else {
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 00733a98 to 00733aa3 has its CatchHandler @ 00733bb4 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_80 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
    ;
    local_78 = 0x1c;
    local_70 = "Start";
    spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,3,
                        "GnssBoardUnicoreUpdate already running",0x26);
    pFVar8 = (FmwUpdateListener *)*param_3;
    if (pFVar8 != (FmwUpdateListener *)0x0) {
      local_90 = (char *)operator_new(0x20);
      uVar10 = s_upgrade_already_running_0041deda._0_8_;
      uStack_98 = _UNK_00397dc8;
      local_a0 = _DAT_00397dc0;
      uVar6 = CONCAT71(s_upgrade_already_running_0041deda._16_7_,
                       s_upgrade_already_running_0041deda[0xf]);
      *(ulong *)(local_90 + 8) =
           CONCAT17(s_upgrade_already_running_0041deda[0xf],s_upgrade_already_running_0041deda._8_7_
                   );
      *(undefined8 *)local_90 = uVar10;
      *(undefined8 *)(local_90 + 0xf) = uVar6;
      local_90[0x17] = '\0';
                    /* try { // try from 00733640 to 0073364f has its CatchHandler @ 00733c1c */
      FmwUpdateListener::OnUpdateFailed(pFVar8,99,&local_a0);
      local_f8 = local_90;
      uVar7 = local_a0;
      goto joined_r0x00733654;
    }
  }
LAB_00733864:
  uVar6 = 0;
LAB_00733868:
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}

