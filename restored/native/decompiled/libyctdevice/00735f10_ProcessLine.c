/* Artifact: libyctdevice.so | Address: 00735f10 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::ProcessLine(std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&) */

void __thiscall
FmwUpdateGnssBoardUnicore::ProcessLine(FmwUpdateGnssBoardUnicore *this,basic_string *param_1)

{
  long *plVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  long *plVar5;
  void *pvVar6;
  long lVar7;
  undefined8 uVar8;
  ulong uVar9;
  void *pvVar10;
  ulong uVar11;
  char *local_b8;
  undefined4 local_b0;
  char *local_a8;
  ulong local_a0;
  ulong uStack_98;
  void *local_90;
  char *local_80;
  undefined4 local_78;
  char *local_70;
  long local_68;
  
  lVar2 = tpidr_el0;
  local_68 = *(long *)(lVar2 + 0x28);
  if ((*param_1 & 1) == 0) {
    uStack_98 = *(ulong *)(param_1 + 8);
    local_a0 = *(ulong *)param_1;
    local_90 = *(void **)(param_1 + 0x10);
  }
  else {
    FUN_006a79e4(&local_a0,*(undefined8 *)(param_1 + 0x10),*(undefined8 *)(param_1 + 8));
  }
  bVar3 = (local_a0 & 1) == 0;
  uVar11 = local_a0 >> 1 & 0x7f;
  if (!bVar3) {
    uVar11 = uStack_98;
  }
  if (uVar11 != 0) {
    do {
      pvVar10 = (void *)((ulong)&local_a0 | 1);
      if (!bVar3) {
        pvVar10 = local_90;
      }
      plVar1 = (long *)((long)pvVar10 + uVar11);
      if (0x20 < *(byte *)((long)plVar1 + -1) ||
          (1L << ((ulong)*(byte *)((long)plVar1 + -1) & 0x3f) & 0x100002400U) == 0) {
        iVar4 = *(int *)(this + 0x1b0);
        if (iVar4 == 6) {
          pvVar6 = pvVar10;
          uVar9 = uVar11;
          if ((long)uVar11 < 5) goto LAB_00736328;
          goto LAB_00736128;
        }
        if (iVar4 == 4) {
          pvVar6 = pvVar10;
          if (0x1e < (long)uVar11) goto LAB_007360c8;
        }
        else {
          pvVar6 = pvVar10;
          uVar9 = uVar11;
          if (iVar4 == 3) goto joined_r0x00736024;
        }
        break;
      }
      uVar11 = uVar11 - 1;
      pvVar10 = local_90;
      uVar9 = uVar11;
      if (bVar3) {
        local_a0 = CONCAT71(local_a0._1_7_,(char)((int)uVar11 << 1));
        pvVar10 = (void *)((ulong)&local_a0 | 1);
        uVar9 = uStack_98;
      }
      uStack_98 = uVar9;
      *(undefined1 *)((long)pvVar10 + uVar11) = 0;
      bVar3 = (local_a0 & 1) == 0;
      uVar11 = local_a0 >> 1 & 0x7f;
      if (!bVar3) {
        uVar11 = uStack_98;
      }
    } while (uVar11 != 0);
  }
  goto LAB_007363a8;
LAB_00736128:
  plVar5 = (long *)memchr(pvVar6,0x62,uVar9 - 4);
  if (plVar5 == (long *)0x0) goto LAB_007361e4;
  if ((int)*plVar5 == 0x746f6f62 && *(char *)((long)plVar5 + 4) == '>') {
    if ((plVar5 != plVar1) && ((long)plVar5 - (long)pvVar10 != -1)) goto LAB_00736344;
    goto LAB_007361e4;
  }
  uVar9 = (long)plVar1 - ((long)plVar5 + 1);
  pvVar6 = (void *)((long)plVar5 + 1);
  if ((long)uVar9 < 5) goto LAB_007361e4;
  goto LAB_00736128;
LAB_007360c8:
  plVar5 = (long *)memchr(pvVar6,0x62,uVar11 - 0x1e);
  if (plVar5 == (long *)0x0) goto LAB_007363a8;
  if (((*plVar5 == 0x6f74206e69676562 && plVar5[1] == 0x2065746164707520) &&
      plVar5[2] == 0x7266206873616c66) && *(long *)((long)plVar5 + 0x17) == 0x74726175206d6f72) {
    if ((plVar5 != plVar1) && ((long)plVar5 - (long)pvVar10 != -1)) {
      if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
         (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 00736488 to 00736493 has its CatchHandler @ 007364c0 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_b8 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      local_b0 = 0x1a1;
      local_a8 = "ProcessLine";
                    /* try { // try from 007361b0 to 007363a7 has its CatchHandler @ 007364dc */
      spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_b8,2,
                          "firmware download mode entered",0x1e);
      uVar8 = 5;
      goto LAB_007363a0;
    }
    goto LAB_007363a8;
  }
  uVar11 = (long)plVar1 - ((long)plVar5 + 1);
  pvVar6 = (void *)((long)plVar5 + 1);
  if ((long)uVar11 < 0x1f) goto LAB_007363a8;
  goto LAB_007360c8;
joined_r0x00736024:
  if (((long)uVar9 < 10) || (plVar5 = (long *)memchr(pvVar6,0x42,uVar9 - 9), plVar5 == (long *)0x0))
  goto LAB_00736250;
  if (*plVar5 != 0x64616f4c746f6f42 || (short)plVar5[1] != 0x7265) {
    pvVar6 = (void *)((long)plVar5 + 1);
    uVar9 = (long)plVar1 - ((long)plVar5 + 1);
    goto joined_r0x00736024;
  }
  if ((plVar5 != plVar1) && ((long)plVar5 - (long)pvVar10 != -1)) goto LAB_007362b4;
LAB_00736250:
  pvVar6 = pvVar10;
  if (4 < (long)uVar11) {
    while (plVar5 = (long *)memchr(pvVar6,0x62,uVar11 - 4), plVar5 != (long *)0x0) {
      if ((int)*plVar5 == 0x746f6f62 && *(char *)((long)plVar5 + 4) == '>') {
        if ((plVar5 != plVar1) && ((long)plVar5 - (long)pvVar10 != -1)) goto LAB_007362b4;
        break;
      }
      uVar11 = (long)plVar1 - ((long)plVar5 + 1);
      pvVar6 = (void *)((long)plVar5 + 1);
      if ((long)uVar11 < 5) break;
    }
  }
  goto LAB_007363a8;
LAB_007362b4:
  if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
     (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 00736440 to 0073644b has its CatchHandler @ 007364c4 */
    spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
    __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
    __cxa_guard_release(PTR_s_instance_00d70cb0);
  }
  local_80 = 
  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
  ;
  local_78 = 0x198;
  local_70 = "ProcessLine";
  spdlog::logger::
  log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
            (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,2,"bootloader detected: {}",
             0x17,&local_a0);
  uVar8 = 4;
  goto LAB_007363a0;
LAB_007361e4:
  pvVar6 = pvVar10;
  if (9 < (long)uVar11) {
    while (plVar5 = (long *)memchr(pvVar6,0x42,uVar11 - 9), plVar5 != (long *)0x0) {
      if (*plVar5 == 0x64616f4c746f6f42 && (short)plVar5[1] == 0x7265) {
        if ((plVar5 != plVar1) && ((long)plVar5 - (long)pvVar10 != -1)) goto LAB_00736344;
        break;
      }
      uVar11 = (long)plVar1 - ((long)plVar5 + 1);
      pvVar6 = (void *)((long)plVar5 + 1);
      if ((long)uVar11 < 10) break;
    }
  }
LAB_00736328:
  lVar7 = FUN_0073650c(&local_a0,"Soft reset cpu",0);
  if (lVar7 == -1) goto LAB_007363a8;
LAB_00736344:
  if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
     (iVar4 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar4 != 0)) {
                    /* try { // try from 007363f8 to 00736403 has its CatchHandler @ 007364c8 */
    spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
    __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
    __cxa_guard_release(PTR_s_instance_00d70cb0);
  }
  local_80 = 
  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
  ;
  local_78 = 0x1ac;
  local_70 = "ProcessLine";
  spdlog::logger::
  log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
            (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,2,
             "bootloader menu returned after flash: {}",0x28,&local_a0);
  uVar8 = 7;
LAB_007363a0:
  GoState(this,uVar8);
LAB_007363a8:
  if ((local_a0 & 1) != 0) {
    operator_delete(local_90);
  }
  if (*(long *)(lVar2 + 0x28) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

