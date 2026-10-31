/* Artifact: libyctdevice.so | Address: 00733c4c | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::LoadFirmwareFile() */

undefined4 __thiscall FmwUpdateGnssBoardUnicore::LoadFirmwareFile(FmwUpdateGnssBoardUnicore *this)

{
  long lVar1;
  int iVar2;
  ulong extraout_x1;
  char *pcVar3;
  ulong uVar4;
  undefined4 uVar5;
  ulong local_1b8;
  char *local_1b0;
  undefined4 local_1a8;
  char *local_1a0;
  long local_198 [2];
  basic_filebuf<char,std::__ndk1::char_traits<char>> abStack_188 [16];
  int aiStack_178 [26];
  long local_110;
  basic_ios<char,std::__ndk1::char_traits<char>> abStack_e0 [152];
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
                    /* try { // try from 00733c74 to 00733c83 has its CatchHandler @ 00733fa4 */
  FUN_0072a1e0(local_198,this + 0x48,6);
  if (local_110 == 0) {
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 00733eb4 to 00733ebf has its CatchHandler @ 00733f84 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_1b0 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
    ;
    local_1a8 = 0x7e;
    local_1a0 = "LoadFirmwareFile";
                    /* try { // try from 00733d48 to 00733d63 has its CatchHandler @ 00733fa0 */
    spdlog::logger::
    log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
              (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_1b0,4,
               "failed to open firmware file: {}",0x20,this + 0x48);
  }
  else {
                    /* try { // try from 00733c8c to 00733c93 has its CatchHandler @ 00733fb0 */
    std::__ndk1::basic_istream<char,std::__ndk1::char_traits<char>>::tellg
              ((basic_istream<char,std::__ndk1::char_traits<char>> *)local_198);
    if (0xfffffffffe0003fe < extraout_x1 - 0x2000001) {
                    /* try { // try from 00733d6c to 00733e27 has its CatchHandler @ 00733fb0 */
      std::__ndk1::basic_istream<char,std::__ndk1::char_traits<char>>::seekg
                ((basic_istream<char,std::__ndk1::char_traits<char>> *)local_198,0,0);
      pcVar3 = *(char **)(this + 0x1e0);
      uVar4 = *(long *)(this + 0x1e8) - (long)pcVar3;
      if (extraout_x1 < uVar4 || extraout_x1 - uVar4 == 0) {
        if (extraout_x1 < uVar4) {
          *(char **)(this + 0x1e8) = pcVar3 + extraout_x1;
        }
      }
      else {
        FUN_0072c62c(this + 0x1e0,extraout_x1 - uVar4);
        pcVar3 = *(char **)(this + 0x1e0);
      }
      std::__ndk1::basic_istream<char,std::__ndk1::char_traits<char>>::read
                ((basic_istream<char,std::__ndk1::char_traits<char>> *)local_198,pcVar3,extraout_x1)
      ;
      if (*(int *)((long)aiStack_178 + *(long *)(local_198[0] + -0x18)) == 0) {
        uVar5 = 1;
      }
      else {
        if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
           (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 00733f44 to 00733f4f has its CatchHandler @ 00733f7c */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_1b0 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_1a8 = 0x8f;
        local_1a0 = "LoadFirmwareFile";
        spdlog::logger::
        log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_1b0,4,
                   "failed to read firmware file: {}",0x20,this + 0x48);
        uVar5 = 0;
        *(undefined8 *)(this + 0x1e8) = *(undefined8 *)(this + 0x1e0);
      }
      goto LAB_00733e3c;
    }
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar2 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar2 != 0)) {
                    /* try { // try from 00733efc to 00733f07 has its CatchHandler @ 00733f80 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_1b0 = 
    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
    ;
    local_1a8 = 0x85;
    local_1a0 = "LoadFirmwareFile";
                    /* try { // try from 00733cec to 00733d07 has its CatchHandler @ 00733f9c */
    local_1b8 = extraout_x1;
    spdlog::logger::log_<long>
              (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_1b0,4,
               "firmware file size invalid: {} bytes",0x24,&local_1b8);
  }
  uVar5 = 0;
LAB_00733e3c:
  local_198[0] = *(long *)PTR_VTT_00d71390;
  *(undefined8 *)((long)local_198 + *(long *)(local_198[0] + -0x18)) =
       *(undefined8 *)(PTR_VTT_00d71390 + 0x18);
  std::__ndk1::basic_filebuf<char,std::__ndk1::char_traits<char>>::~basic_filebuf(abStack_188);
  std::__ndk1::basic_istream<char,std::__ndk1::char_traits<char>>::~basic_istream
            ((basic_istream<char,std::__ndk1::char_traits<char>> *)local_198);
  std::__ndk1::basic_ios<char,std::__ndk1::char_traits<char>>::~basic_ios(abStack_e0);
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return uVar5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

