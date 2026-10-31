/* Artifact: libyctdevice.so | Address: 00734068 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::ValidateFirmwareFile() */

void __thiscall FmwUpdateGnssBoardUnicore::ValidateFirmwareFile(FmwUpdateGnssBoardUnicore *this)

{
  byte *pbVar1;
  undefined8 *puVar2;
  ulong uVar3;
  long lVar4;
  undefined *puVar5;
  int iVar6;
  undefined8 uVar7;
  ulong uVar8;
  ulong uVar9;
  uint uVar10;
  long lVar11;
  long lVar12;
  ulong uVar13;
  int iVar14;
  char *local_d8;
  undefined4 local_d0;
  char *local_c8;
  int local_bc;
  ushort local_b8 [2];
  undefined2 local_b4 [2];
  char *local_b0;
  undefined8 uStack_a8;
  char *local_a0;
  undefined8 local_98;
  int local_84;
  char *local_80;
  undefined4 local_78;
  char *local_70;
  long local_68;
  
  puVar5 = PTR_s_instance_00d70cb0;
  lVar4 = tpidr_el0;
  local_68 = *(long *)(lVar4 + 0x28);
  lVar11 = *(long *)(this + 0x1e0);
  local_84 = 0;
  uVar8 = *(long *)(this + 0x1e8) - lVar11;
  if (0x1f < uVar8) {
    lVar12 = 0;
    uVar9 = 0x20;
    do {
      puVar2 = (undefined8 *)(lVar11 + lVar12);
      uStack_a8 = puVar2[1];
      local_b0 = (char *)*puVar2;
      local_98 = puVar2[3];
      local_a0 = (char *)puVar2[2];
      iVar6 = local_84 + 1;
      if ((local_84 == 0) && ((int)local_b0 != -0x5d5c5b5b)) {
        local_84 = iVar6;
        if (((*puVar5 & 1) == 0) &&
           (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 007345e0 to 007345eb has its CatchHandler @ 0073474c */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_80 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_78 = 0xbb;
        local_70 = "ValidateFirmwareFile";
        spdlog::logger::log_<int&,unsigned_int&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,4,
                   "[{}] not UM982 firmware, magic: 0x{:08X}",0x28,&local_84,&local_b0);
        uVar7 = 0;
        goto LAB_00734504;
      }
      if ((0 < local_84) && (local_84 = iVar6, (int)local_b0 != -0x5d5c5b5b)) goto LAB_007344b0;
      lVar11 = 0;
      uVar10 = 0;
      do {
        pbVar1 = (byte *)((long)puVar2 + lVar11);
        lVar11 = lVar11 + 1;
        uVar10 = (uint)*(ushort *)
                        (&DAT_004378ca + (ulong)((uint)*pbVar1 ^ (uVar10 & 0xff00) >> 8) * 2) ^
                 uVar10 << 8;
      } while (lVar11 != 0x1c);
      local_98._4_2_ = (ushort)((ulong)local_98 >> 0x20);
      local_b4[0] = (undefined2)uVar10;
      local_b8[0] = local_98._4_2_;
      if ((uint)local_98._4_2_ != (uVar10 & 0xffff)) {
        local_84 = iVar6;
        if (((*puVar5 & 1) == 0) &&
           (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 0073462c to 00734637 has its CatchHandler @ 00734748 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_80 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_78 = 0xcb;
        local_70 = "ValidateFirmwareFile";
        spdlog::logger::log_<int&,unsigned_short&,unsigned_short&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,4,
                   "[{}] header CRC error: calc=0x{:04X}, expected=0x{:04X}",0x37,&local_84,local_b4
                   ,local_b8);
LAB_00734498:
        uVar7 = 0;
        goto LAB_00734504;
      }
      uStack_a8._4_4_ = (uint)(uStack_a8 >> 0x20);
      uVar13 = (ulong)uStack_a8._4_4_;
      if (uStack_a8._4_4_ < 0x20) {
        local_84 = iVar6;
        if (((*puVar5 & 1) == 0) &&
           (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 00734674 to 0073467f has its CatchHandler @ 00734744 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_80 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_78 = 0xd2;
        local_70 = "ValidateFirmwareFile";
        spdlog::logger::log_<int&,unsigned_int&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,4,
                   "[{}] firmware size too small: {}",0x20,&local_84,(long)&uStack_a8 + 4);
        goto LAB_00734498;
      }
      if (uVar8 < uVar9 + uVar13) {
        local_84 = iVar6;
        if (((*puVar5 & 1) == 0) &&
           (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 007346bc to 007346c7 has its CatchHandler @ 00734740 */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_80 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_78 = 0xd7;
        local_70 = "ValidateFirmwareFile";
        spdlog::logger::log_<int&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,4,
                   "[{}] firmware size overflow",0x1b,&local_84);
        goto LAB_00734498;
      }
      uVar8 = 0;
      iVar14 = 0;
      uVar9 = uVar13;
      local_84 = iVar6;
      do {
        uVar3 = uVar9 - 4;
        if (3 < uVar9) {
          uVar9 = 4;
        }
        local_80 = (char *)((ulong)local_80 & 0xffffffff00000000);
        __memcpy_chk(&local_80,(long)puVar2 + uVar8 + 0x20,uVar9,4);
        uVar8 = uVar8 + 4;
        iVar14 = iVar14 + (int)local_80;
        uVar9 = uVar3;
        local_bc = iVar14;
      } while (uVar8 < uVar13);
      if (iVar14 != (int)local_98) {
        if (((*puVar5 & 1) == 0) &&
           (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 00734704 to 0073470f has its CatchHandler @ 0073473c */
          spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
          __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
          __cxa_guard_release(PTR_s_instance_00d70cb0);
        }
        local_80 = 
        "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
        ;
        local_78 = 0xeb;
        local_70 = "ValidateFirmwareFile";
        spdlog::logger::log_<int&,unsigned_int&,unsigned_int&>
                  (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,4,
                   "[{}] checksum error: calc=0x{:08X}, expected=0x{:08X}",0x35,&local_84,&local_bc,
                   &local_98);
        goto LAB_00734498;
      }
      if (((*puVar5 & 1) == 0) && (iVar6 = __cxa_guard_acquire(puVar5), iVar6 != 0)) {
                    /* try { // try from 00734298 to 007342a3 has its CatchHandler @ 00734758 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(puVar5);
      }
      local_80 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      local_78 = 0xef;
      local_70 = "ValidateFirmwareFile";
      spdlog::logger::log_<int&,unsigned_int&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,2,
                 "[{}] firmware section validated, size: {}",0x29,&local_84,(long)&uStack_a8 + 4);
      lVar11 = *(long *)(this + 0x1e0);
      lVar12 = lVar12 + (uStack_a8 >> 0x20);
      uVar9 = lVar12 + 0x40;
      uVar8 = *(long *)(this + 0x1e8) - lVar11;
      lVar12 = lVar12 + 0x20;
    } while (uVar9 <= uVar8);
    if (local_84 != 0) {
LAB_007344b0:
      if (((*puVar5 & 1) == 0) && (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)
         ) {
                    /* try { // try from 00734594 to 0073459f has its CatchHandler @ 00734750 */
        spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
        __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
        __cxa_guard_release(PTR_s_instance_00d70cb0);
      }
      local_b0 = 
      "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
      ;
      uStack_a8 = CONCAT44(uStack_a8._4_4_,0xf9);
      local_a0 = "ValidateFirmwareFile";
      spdlog::logger::log_<int&>
                (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_b0,2,
                 "firmware validation passed, {} section(s)",0x29,&local_84);
      uVar7 = 1;
      goto LAB_00734504;
    }
  }
  if (((*puVar5 & 1) == 0) && (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 00734544 to 00734553 has its CatchHandler @ 00734754 */
    spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
    __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
    __cxa_guard_release(PTR_s_instance_00d70cb0);
  }
  local_d8 = 
  "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/fmw_update/fmw_update_gnss_board_unicore.cpp"
  ;
  local_d0 = 0xf5;
  local_c8 = "ValidateFirmwareFile";
  spdlog::logger::log(*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_d8,4,
                      "no valid firmware section found",0x1f);
  uVar7 = 0;
LAB_00734504:
  if (*(long *)(lVar4 + 0x28) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar7);
  }
  return;
}

