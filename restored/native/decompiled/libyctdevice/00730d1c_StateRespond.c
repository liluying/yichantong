/* Artifact: libyctdevice.so | Address: 00730d1c | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::StateRespond(std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&) */

void __thiscall
FmwUpdateGnssBoardBeiyun::StateRespond(FmwUpdateGnssBoardBeiyun *this,basic_string *param_1)

{
  FmwUpdateGnssBoardBeiyun *pFVar1;
  size_t __n;
  byte bVar2;
  long lVar3;
  ulong *puVar4;
  ulong *puVar5;
  char *pcVar6;
  bool bVar7;
  int iVar8;
  void *pvVar9;
  undefined8 uVar10;
  basic_string *__s;
  long *plVar11;
  basic_string *pbVar12;
  ulong uVar13;
  byte *pbVar14;
  ulong uVar15;
  ulong *puVar16;
  long *plVar17;
  long *__dest;
  int local_298 [2];
  char *local_290;
  undefined4 local_288;
  char *local_280;
  char *local_278;
  undefined4 local_270;
  char *local_268;
  char *local_260;
  undefined4 local_258;
  char *local_250;
  char *local_248;
  undefined4 local_240;
  char *local_238;
  int local_230;
  int local_22c;
  char *local_228;
  undefined4 local_220;
  char *local_218;
  ulong local_210;
  ulong uStack_208;
  void *local_200;
  ulong *local_1f8;
  ulong *local_1f0;
  ulong *local_1e8;
  char *local_1e0;
  ulong uStack_1d8;
  long *local_1d0;
  char *local_1c0;
  undefined4 local_1b8;
  char *local_1b0;
  char *local_1a8;
  undefined4 local_1a0;
  char *local_198;
  char *local_190;
  ulong uStack_188;
  long *local_180;
  undefined *apuStack_178 [8];
  byte local_138;
  void *local_128;
  basic_ios<char,std::__ndk1::char_traits<char>> abStack_110 [152];
  long local_78;
  
  lVar3 = tpidr_el0;
  local_78 = *(long *)(lVar3 + 0x28);
  bVar2 = *param_1;
  __n = (ulong)(bVar2 >> 1);
  if ((bVar2 & 1) != 0) {
    __n = *(size_t *)(param_1 + 8);
  }
  if (__n != 0) {
    pbVar12 = *(basic_string **)(param_1 + 0x10);
    if ((bVar2 & 1) == 0) {
      pbVar12 = param_1 + 1;
    }
    pvVar9 = memchr(pbVar12,0x24,__n);
    if ((pvVar9 != (void *)0x0) &&
       (uVar15 = (long)pvVar9 - (long)pbVar12, uVar15 != 0xffffffffffffffff)) {
      uVar13 = __n - uVar15;
      if (__n < uVar15) {
        if (*(long *)(lVar3 + 0x28) == local_78) {
                    /* WARNING: Subroutine does not return */
          FUN_006b7574(&local_1e0);
        }
        goto LAB_00731c74;
      }
      if (0xffffffffffffffef < uVar13) {
        if (*(long *)(lVar3 + 0x28) == local_78) {
                    /* WARNING: Subroutine does not return */
          FUN_006a3c28(&local_1e0);
        }
        goto LAB_00731c74;
      }
      if (uVar13 < 0x17) {
        plVar17 = (long *)((ulong)&local_1e0 | 1);
        local_1e0 = (char *)CONCAT71(local_1e0._1_7_,(char)((int)uVar13 << 1));
        if (__n != uVar15) goto LAB_00730de4;
      }
      else {
        plVar17 = (long *)operator_new((uVar13 | 0xf) + 1);
        local_1e0 = (char *)((uVar13 | 0xf) + 2);
        uStack_1d8 = uVar13;
        local_1d0 = plVar17;
LAB_00730de4:
        memmove(plVar17,pbVar12 + uVar15,uVar13);
      }
      *(undefined1 *)((long)plVar17 + uVar13) = 0;
      bVar7 = ((ulong)local_1e0 & 1) == 0;
      uVar15 = (ulong)local_1e0 >> 1 & 0x7f;
      if (!bVar7) {
        uVar15 = uStack_1d8;
      }
      if (uVar15 != 0) {
        do {
          plVar17 = (long *)((ulong)&local_1e0 | 1);
          if (!bVar7) {
            plVar17 = local_1d0;
          }
          bVar2 = *(byte *)((long)plVar17 + (uVar15 - 1));
          if (0x20 < bVar2 || (1L << ((ulong)bVar2 & 0x3f) & 0x100002400U) == 0) break;
          uVar15 = uVar15 - 1;
          plVar17 = local_1d0;
          uVar13 = uVar15;
          if (bVar7) {
            local_1e0 = (char *)CONCAT71(local_1e0._1_7_,(char)((int)uVar15 << 1));
            plVar17 = (long *)((ulong)&local_1e0 | 1);
            uVar13 = uStack_1d8;
          }
          uStack_1d8 = uVar13;
          *(undefined1 *)((long)plVar17 + uVar15) = 0;
          bVar7 = ((ulong)local_1e0 & 1) == 0;
          uVar15 = (ulong)local_1e0 >> 1 & 0x7f;
          if (!bVar7) {
            uVar15 = uStack_1d8;
          }
        } while (uVar15 != 0);
      }
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar8 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar8 != 0)) {
                    /* try { // try from 007319e8 to 007319f3 has its CatchHandler @ 00731a94 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_190 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
      ;
      uStack_188 = CONCAT44(uStack_188._4_4_,0x183);
      local_180 = (long *)0x42c647;
                    /* try { // try from 00730ecc to 00730ee7 has its CatchHandler @ 00731c14 */
      spdlog::logger::
      log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_190,2,"recv line: {}",0xd,
                 &local_1e0);
      plVar17 = local_1d0;
      pcVar6 = local_1e0;
      uVar15 = (ulong)local_1e0 >> 1 & 0x7f;
      if (((ulong)local_1e0 & 1) != 0) {
        uVar15 = uStack_1d8;
      }
      if (3 < uVar15) {
        uVar13 = uVar15 - 3;
        plVar11 = (long *)((ulong)&local_1e0 | 1);
        if (((ulong)local_1e0 & 1) != 0) {
          plVar11 = local_1d0;
        }
        if (*(char *)((long)plVar11 + uVar13) == '*') {
          if (uVar13 <= uVar15) {
            uVar15 = uVar13;
          }
          if (0xffffffffffffffef < uVar15) {
            if (*(long *)(lVar3 + 0x28) == local_78) {
                    /* try { // try from 00731a30 to 00731a37 has its CatchHandler @ 00731c04 */
                    /* WARNING: Subroutine does not return */
              FUN_006a3c28(&local_190);
            }
            goto LAB_00731c74;
          }
          if (uVar15 < 0x17) {
            __dest = (long *)((ulong)&local_190 | 1);
            local_190 = (char *)CONCAT71(local_190._1_7_,(char)((int)uVar15 << 1));
          }
          else {
            uVar13 = (uVar15 | 0xf) + 1;
                    /* try { // try from 00730f64 to 00730f6b has its CatchHandler @ 00731c04 */
            __dest = (long *)operator_new(uVar13);
            local_190 = (char *)(uVar13 | 1);
            uStack_188 = uVar15;
            local_180 = __dest;
          }
          memmove(__dest,plVar11,uVar15);
          *(undefined1 *)((long)__dest + uVar15) = 0;
          if (((ulong)pcVar6 & 1) != 0) {
            operator_delete(plVar17);
          }
          uStack_1d8 = uStack_188;
          local_1e0 = local_190;
          local_1d0 = local_180;
        }
      }
      local_1f8 = (ulong *)0x0;
      local_1f0 = (ulong *)0x0;
      local_1e8 = (ulong *)0x0;
                    /* try { // try from 00730fc8 to 00730fd7 has its CatchHandler @ 00731c0c */
      FUN_0072c498(&local_190,&local_1e0,0x18);
      local_210 = 0;
      uStack_208 = 0;
      local_200 = (void *)0x0;
                    /* try { // try from 00731004 to 00731013 has its CatchHandler @ 00731c28 */
      while (plVar17 = (long *)FUN_006dbf58(&local_190,&local_210,0x2c), puVar5 = local_1f0,
            (*(byte *)((long)plVar17 + *(long *)(*plVar17 + -0x18) + 0x20) & 5) == 0) {
        if (local_1f0 < local_1e8) {
          if ((local_210 & 1) == 0) {
            local_1f0[2] = (ulong)local_200;
            local_1f0[1] = uStack_208;
            *local_1f0 = local_210;
            local_1f0 = local_1f0 + 3;
          }
          else {
                    /* try { // try from 00731048 to 0073104f has its CatchHandler @ 00731c1c */
            FUN_006a79e4(local_1f0,local_200,uStack_208);
            local_1f0 = puVar5 + 3;
          }
        }
        else {
                    /* try { // try from 0073105c to 00731067 has its CatchHandler @ 00731c28 */
          local_1f0 = (ulong *)FUN_006fe6a0(&local_1f8,&local_210);
        }
      }
      uVar15 = ((long)local_1f0 - (long)local_1f8 >> 3) * -0x5555555555555555;
      if (1 < uVar15) {
        iVar8 = *(int *)(this + 0x300);
        if (iVar8 - 4U < 2) {
          *(undefined4 *)(this + 0x304) = 0;
          bVar2 = (byte)*local_1f8;
          uVar13 = (ulong)(bVar2 >> 1);
          if ((bVar2 & 1) != 0) {
            uVar13 = local_1f8[1];
          }
          if (uVar13 == 6) {
            pbVar14 = (byte *)local_1f8[2];
            if ((bVar2 & 1) == 0) {
              pbVar14 = (byte *)((long)local_1f8 + 1);
            }
            if ((4 < uVar15) && (*(int *)pbVar14 == 0x41444224 && *(short *)(pbVar14 + 4) == 0x5357)
               ) {
                    /* try { // try from 0073128c to 0073129b has its CatchHandler @ 00731b24 */
              iVar8 = std::__ndk1::stoi((basic_string *)(local_1f8 + 3),(ulong *)0x0,10);
              if (iVar8 == 10) {
                    /* try { // try from 0073144c to 0073145b has its CatchHandler @ 00731b18 */
                local_298[0] = std::__ndk1::stoi((basic_string *)(local_1f8 + 6),(ulong *)0x0,10);
                    /* try { // try from 00731464 to 00731473 has its CatchHandler @ 00731b10 */
                local_22c = std::__ndk1::stoi((basic_string *)(local_1f8 + 9),(ulong *)0x0,10);
                    /* try { // try from 0073147c to 00731507 has its CatchHandler @ 00731b28 */
                local_230 = std::__ndk1::stoi((basic_string *)(local_1f8 + 0xc),(ulong *)0x0,10);
                uVar10 = spdlog::default_logger_raw();
                local_1c0 = 
                "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                ;
                local_1b8 = 0x214;
                local_1b0 = "StateRespond";
                spdlog::logger::log_<int&,int&,int&>
                          (uVar10,&local_1c0,2,"upgrade result: pack_size={}, param2={}, param3={}",
                           0x32,local_298,&local_22c,&local_230);
                if ((local_22c == 1) && (local_230 == 1)) {
                  uVar10 = spdlog::default_logger_raw();
                  local_248 = 
                  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                  ;
                  local_240 = 0x219;
                  local_238 = "StateRespond";
                  spdlog::logger::log(uVar10,&local_248,2,"device reported upgrade success",0x1f);
                    /* try { // try from 00731508 to 00731517 has its CatchHandler @ 00731b0c */
                  FUN_006a0d70(&local_1a8,&DAT_003ad9d7);
                  *(undefined4 *)(this + 0x35c) = 0;
                  if (((byte)this[0x360] & 1) == 0) {
                    *(undefined2 *)(this + 0x360) = 0;
                  }
                  else {
                    **(undefined1 **)(this + 0x370) = 0;
                    *(undefined8 *)(this + 0x368) = 0;
                  }
                    /* try { // try from 0073171c to 00731727 has its CatchHandler @ 00731af0 */
                  GoState(this,6);
                }
                else if ((local_22c == 1) && (local_230 == 0)) {
                    /* try { // try from 007315a0 to 007315cb has its CatchHandler @ 00731b28 */
                  uVar10 = spdlog::default_logger_raw();
                  local_260 = 
                  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                  ;
                  local_258 = 0x220;
                  local_250 = "StateRespond";
                  spdlog::logger::log(uVar10,&local_260,4,"device reported flash error",0x1b);
                    /* try { // try from 007315cc to 007315db has its CatchHandler @ 00731aec */
                  FUN_006a0d70(&local_1a8,"flash error");
                    /* try { // try from 007315dc to 007315ef has its CatchHandler @ 00731ae8 */
                  FinishUpdate(this,0,0xe,&local_1a8);
                }
                else if ((local_22c == 1) && (local_230 == 2)) {
                    /* try { // try from 007316bc to 007316e7 has its CatchHandler @ 00731b28 */
                  uVar10 = spdlog::default_logger_raw();
                  local_278 = 
                  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                  ;
                  local_270 = 0x227;
                  local_268 = "StateRespond";
                  spdlog::logger::log(uVar10,&local_278,4,"device reported firmware mismatch",0x21);
                    /* try { // try from 007316e8 to 007316f7 has its CatchHandler @ 00731acc */
                  FUN_006a0d70(&local_1a8,"firmware mismatch");
                    /* try { // try from 007316f8 to 0073170b has its CatchHandler @ 00731ac8 */
                  FinishUpdate(this,0,0xf,&local_1a8);
                }
                else if ((local_298[0] == 0 && local_22c == 0) && local_230 == 0) {
                    /* try { // try from 0073174c to 00731777 has its CatchHandler @ 00731b28 */
                  uVar10 = spdlog::default_logger_raw();
                  local_290 = 
                  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                  ;
                  local_288 = 0x22e;
                  local_280 = "StateRespond";
                  spdlog::logger::log(uVar10,&local_290,4,
                                      "device reported data error (init failed or invalid firmware data)"
                                      ,0x41);
                    /* try { // try from 00731778 to 00731787 has its CatchHandler @ 00731abc */
                  FUN_006a0d70(&local_1a8,"data error or init failed");
                    /* try { // try from 00731788 to 0073179b has its CatchHandler @ 00731ab8 */
                  FinishUpdate(this,0,0xc,&local_1a8);
                }
                else if (local_22c == 0 && local_230 == 0) {
                    /* try { // try from 007318f0 to 0073191f has its CatchHandler @ 00731b28 */
                  uVar10 = spdlog::default_logger_raw();
                  local_1c0 = 
                  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                  ;
                  local_1b8 = 0x235;
                  local_1b0 = "StateRespond";
                  spdlog::logger::log_<int&>
                            (uVar10,&local_1c0,4,
                             "device reported CRC error or timeout, received {} bytes",0x37,
                             local_298);
                    /* try { // try from 00731920 to 0073192f has its CatchHandler @ 00731ab4 */
                  FUN_006a0d70(&local_1a8,"CRC error or timeout");
                    /* try { // try from 00731930 to 00731943 has its CatchHandler @ 00731ab0 */
                  FinishUpdate(this,0,0xb,&local_1a8);
                }
                else {
                    /* try { // try from 00731948 to 0073197f has its CatchHandler @ 00731b28 */
                  uVar10 = spdlog::default_logger_raw();
                  local_1c0 = 
                  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                  ;
                  local_1b8 = 0x23c;
                  local_1b0 = "StateRespond";
                  spdlog::logger::log_<int&,int&,int&>
                            (uVar10,&local_1c0,4,
                             "device reported error: pack_size={}, param2={}, param3={}",0x39,
                             local_298,&local_22c,&local_230);
                    /* try { // try from 00731980 to 0073198f has its CatchHandler @ 00731aac */
                  FUN_006a0d70(&local_1a8,"unknown device error");
                    /* try { // try from 00731990 to 007319a3 has its CatchHandler @ 00731aa8 */
                  FinishUpdate(this,0,99,&local_1a8);
                }
LAB_00731728:
                if (((ulong)local_1a8 & 1) != 0) {
                  operator_delete(local_198);
                }
              }
              else if (iVar8 == 0xb) {
                    /* try { // try from 007312b0 to 007312bf has its CatchHandler @ 00731b1c */
                local_298[0] = std::__ndk1::stoi((basic_string *)(local_1f8 + 6),(ulong *)0x0,10);
                    /* try { // try from 007312c8 to 007312d7 has its CatchHandler @ 00731b14 */
                iVar8 = std::__ndk1::stoi((basic_string *)(local_1f8 + 9),(ulong *)0x0,10);
                    /* try { // try from 007312e0 to 0073133b has its CatchHandler @ 00731b20 */
                local_22c = std::__ndk1::stoi((basic_string *)(local_1f8 + 0xc),(ulong *)0x0,10);
                if (iVar8 == 2) {
                  if (local_22c != 0) {
                    /* try { // try from 00731654 to 00731683 has its CatchHandler @ 00731b20 */
                    uVar10 = spdlog::default_logger_raw();
                    local_1c0 = 
                    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                    ;
                    local_1b8 = 0x207;
                    local_1b0 = "StateRespond";
                    spdlog::logger::log_<int&>
                              (uVar10,&local_1c0,4,"flash error, status: {}",0x17,&local_22c);
                    /* try { // try from 00731684 to 00731693 has its CatchHandler @ 00731adc */
                    FUN_006a0d70(&local_1a8,"flash error");
                    /* try { // try from 00731694 to 007316a7 has its CatchHandler @ 00731ad0 */
                    FinishUpdate(this,0,0xe,&local_1a8);
                    goto LAB_00731728;
                  }
                  uVar13 = *(ulong *)(this + 0x318);
                  uVar15 = uVar13;
                  if (uVar13 != 0) {
                    uVar15 = 0;
                    if (uVar13 != 0) {
                      uVar15 = (ulong)((long)local_298[0] * 100) / uVar13;
                    }
                  }
                  if ((int)uVar15 != *(int *)(this + 0x310)) {
                    pFVar1 = this + 0x310;
                    *(int *)pFVar1 = (int)uVar15;
                    /* try { // try from 0073181c to 00731863 has its CatchHandler @ 00731ac4 */
                    uVar10 = spdlog::default_logger_raw();
                    local_1c0 = 
                    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                    ;
                    local_1b8 = 0x1fe;
                    local_1b0 = "StateRespond";
                    spdlog::logger::log_<int&,int&>
                              (uVar10,&local_1c0,2,"flashing progress: {}%, {} bytes",0x20,pFVar1,
                               local_298);
                    if (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0) {
                      FmwUpdateListener::OnUpdateProgress
                                (*(FmwUpdateListener **)(this + 0x60),2,*(int *)pFVar1);
                    }
                  }
                }
                else if (iVar8 == 1) {
                  if (local_22c != 0) {
                    /* try { // try from 007315f8 to 00731627 has its CatchHandler @ 00731b20 */
                    uVar10 = spdlog::default_logger_raw();
                    local_1c0 = 
                    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                    ;
                    local_1b8 = 0x1ed;
                    local_1b0 = "StateRespond";
                    spdlog::logger::log_<int&>
                              (uVar10,&local_1c0,4,"extract error, status: {}",0x19,&local_22c);
                    /* try { // try from 00731628 to 00731637 has its CatchHandler @ 00731ae0 */
                    FUN_006a0d70(&local_1a8,"extract error");
                    /* try { // try from 00731638 to 0073164b has its CatchHandler @ 00731ad4 */
                    FinishUpdate(this,0,0xd,&local_1a8);
                    goto LAB_00731728;
                  }
                  *(long *)(this + 0x318) = (long)local_298[0];
                    /* try { // try from 007317a8 to 007317eb has its CatchHandler @ 00731b20 */
                  uVar10 = spdlog::default_logger_raw();
                  local_1c0 = 
                  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                  ;
                  local_1b8 = 0x1e4;
                  local_1b0 = "StateRespond";
                  spdlog::logger::log_<int&>
                            (uVar10,&local_1c0,2,"extracting: {} bytes",0x14,local_298);
                  if (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0) {
                    FmwUpdateListener::OnUpdateProgress(*(FmwUpdateListener **)(this + 0x60),1,-1);
                  }
                }
                else if (iVar8 == 0) {
                  if (local_22c != 0) {
                    uVar10 = spdlog::default_logger_raw();
                    local_1c0 = 
                    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                    ;
                    local_1b8 = 0x1d8;
                    local_1b0 = "StateRespond";
                    spdlog::logger::log_<int&>
                              (uVar10,&local_1c0,4,"receive error, status: {}",0x19,&local_22c);
                    /* try { // try from 0073133c to 0073134b has its CatchHandler @ 00731ae4 */
                    FUN_006a0d70(&local_1a8,"receive error from device");
                    /* try { // try from 0073134c to 0073135f has its CatchHandler @ 00731ad8 */
                    FinishUpdate(this,0,9,&local_1a8);
                    goto LAB_00731728;
                  }
                  uVar15 = *(long *)(this + 0x340) - *(long *)(this + 0x338);
                  uVar13 = uVar15;
                  if (uVar15 != 0) {
                    uVar13 = 0;
                    if (uVar15 != 0) {
                      uVar13 = (ulong)((long)local_298[0] * 100) / uVar15;
                    }
                  }
                  if ((int)uVar13 != *(int *)(this + 0x30c)) {
                    pFVar1 = this + 0x30c;
                    *(int *)pFVar1 = (int)uVar13;
                    /* try { // try from 0073189c to 007318e3 has its CatchHandler @ 00731ac0 */
                    uVar10 = spdlog::default_logger_raw();
                    local_1c0 = 
                    "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
                    ;
                    local_1b8 = 0x1ce;
                    local_1b0 = "StateRespond";
                    spdlog::logger::log_<int&,int&>
                              (uVar10,&local_1c0,2,"transmit progress: {}%, {} bytes",0x20,pFVar1,
                               local_298);
                    if (*(FmwUpdateListener **)(this + 0x60) != (FmwUpdateListener *)0x0) {
                      FmwUpdateListener::OnUpdateProgress
                                (*(FmwUpdateListener **)(this + 0x60),0,*(int *)pFVar1);
                    }
                  }
                }
              }
            }
          }
        }
        else if (iVar8 == 3) {
          uVar15 = (ulong)local_1e0 >> 1 & 0x7f;
          if (((ulong)local_1e0 & 1) != 0) {
            uVar15 = uStack_1d8;
          }
          if (uVar15 == 0xf) {
            plVar17 = (long *)((ulong)&local_1e0 | 1);
            if (((ulong)local_1e0 & 1) != 0) {
              plVar17 = local_1d0;
            }
            if (*plVar17 == 0x312c535741444224 && *(long *)((long)plVar17 + 7) == 0x302c302c302c3131
               ) {
LAB_00731540:
              if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
                 (iVar8 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar8 != 0)) {
                    /* try { // try from 00731a48 to 00731a53 has its CatchHandler @ 00731a80 */
                spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
                __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
                __cxa_guard_release(PTR_s_instance_00d70cb0);
              }
              local_228 = 
              "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
              ;
              local_220 = 0x1aa;
              local_218 = "StateRespond";
                    /* try { // try from 0073156c to 0073158f has its CatchHandler @ 00731c00 */
              spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_228,2,
                                  "entered boot mode",0x11);
              uVar10 = 4;
LAB_00731588:
              GoState(this,uVar10);
              goto LAB_00731090;
            }
          }
          uVar15 = (ulong)((byte)*param_1 >> 1);
          pbVar12 = param_1 + 1;
          if ((*param_1 & 1) != 0) {
            uVar15 = *(ulong *)(param_1 + 8);
            pbVar12 = *(basic_string **)(param_1 + 0x10);
          }
          if (0xe < (long)uVar15) {
            plVar17 = (long *)(pbVar12 + uVar15);
            __s = pbVar12;
            while (plVar11 = (long *)memchr(__s,0x24,uVar15 - 0xe), plVar11 != (long *)0x0) {
              if (*plVar11 == 0x312c535741444224 &&
                  *(long *)((long)plVar11 + 7) == 0x302c302c302c3131) {
                if ((plVar11 != plVar17) && ((long)plVar11 - (long)pbVar12 != -1))
                goto LAB_00731540;
                break;
              }
              __s = (basic_string *)((long)plVar11 + 1);
              uVar15 = (long)plVar17 - (long)__s;
              if ((long)uVar15 < 0xf) break;
            }
          }
        }
        else if (iVar8 == 2) {
          bVar2 = (byte)*local_1f8;
          uVar15 = (ulong)(bVar2 >> 1);
          if ((bVar2 & 1) != 0) {
            uVar15 = local_1f8[1];
          }
          if (uVar15 == 6) {
            pbVar14 = (byte *)local_1f8[2];
            if ((bVar2 & 1) == 0) {
              pbVar14 = (byte *)((long)local_1f8 + 1);
            }
            if (*(int *)pbVar14 == 0x56444224 && *(short *)(pbVar14 + 4) == 0x5245) {
                    /* try { // try from 007311a4 to 007311df has its CatchHandler @ 00731c00 */
              std::__ndk1::
              basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
              operator=((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>
                         *)(this + 800),(basic_string *)(local_1f8 + 3));
              uVar10 = spdlog::default_logger_raw();
              local_1a8 = 
              "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_beiyun.cpp"
              ;
              local_1a0 = 0x1a0;
              local_198 = "StateRespond";
              spdlog::logger::
              log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
                        (uVar10,&local_1a8,2,"device firmware version: {}",0x1b,this + 800);
              uVar10 = 3;
              goto LAB_00731588;
            }
          }
        }
      }
LAB_00731090:
      if ((local_210 & 1) != 0) {
        operator_delete(local_200);
      }
      local_190 = *(char **)PTR_VTT_00d711d8;
      plVar17 = *(long **)(PTR_VTT_00d711d8 + 0x48);
      *(undefined8 *)((long)&local_190 + *(long *)(local_190 + -0x18)) =
           *(undefined8 *)(PTR_VTT_00d711d8 + 0x40);
      apuStack_178[0] = PTR_vtable_00d711e0 + 0x10;
      local_180 = plVar17;
      if ((local_138 & 1) != 0) {
        operator_delete(local_128);
      }
      std::__ndk1::basic_streambuf<char,std::__ndk1::char_traits<char>>::~basic_streambuf
                ((basic_streambuf<char,std::__ndk1::char_traits<char>> *)apuStack_178);
      std::__ndk1::basic_iostream<char,std::__ndk1::char_traits<char>>::~basic_iostream
                ((basic_iostream<char,std::__ndk1::char_traits<char>> *)&local_190);
      std::__ndk1::basic_ios<char,std::__ndk1::char_traits<char>>::~basic_ios(abStack_110);
      puVar5 = local_1f8;
      puVar16 = local_1f0;
      if (local_1f8 != (ulong *)0x0) {
        while (puVar4 = puVar16, puVar4 != puVar5) {
          puVar16 = puVar4 + -3;
          if ((*puVar16 & 1) != 0) {
            operator_delete((void *)puVar4[-1]);
          }
        }
        local_1f0 = puVar5;
        operator_delete(local_1f8);
      }
      if (((ulong)local_1e0 & 1) != 0) {
        operator_delete(local_1d0);
      }
    }
  }
  if (*(long *)(lVar3 + 0x28) == local_78) {
    return;
  }
LAB_00731c74:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

