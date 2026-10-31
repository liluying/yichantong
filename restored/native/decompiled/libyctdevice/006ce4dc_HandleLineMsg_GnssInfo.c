/* Artifact: libyctdevice.so | Address: 006ce4dc | Ghidra static pseudocode; types require review. */

/* WARNING: Type propagation algorithm not settling */
/* YctDevice::HandleLineMsg_GnssInfo(std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>,
   std::__ndk1::allocator<char> > const&) */

void __thiscall YctDevice::HandleLineMsg_GnssInfo(YctDevice *this,basic_string *param_1)

{
  size_t sVar1;
  size_t sVar2;
  YctDevice YVar3;
  long lVar4;
  byte *pbVar5;
  int iVar6;
  YctDevice *pYVar7;
  ulong uVar8;
  YctDevice *pYVar9;
  locale alStack_148 [8];
  char *local_140;
  size_t sStack_138;
  YctDevice *local_130;
  char *pcStack_128;
  undefined8 uStack_120;
  YctDevice *local_118;
  char *local_110;
  undefined8 uStack_108;
  YctDevice *local_100;
  undefined8 local_f8;
  size_t sStack_f0;
  YctDevice *pYStack_e8;
  char *local_e0;
  undefined8 uStack_d8;
  YctDevice *local_d0;
  ulong local_c0;
  undefined8 uStack_b8;
  void *local_b0;
  byte *local_a8;
  byte *local_a0;
  undefined8 local_90;
  locale alStack_88 [8];
  char *local_80;
  undefined4 uStack_78;
  undefined4 uStack_74;
  YctDevice *local_70;
  long local_68;
  
  lVar4 = tpidr_el0;
  local_68 = *(long *)(lVar4 + 0x28);
  if ((*param_1 & 1) == 0) {
    uStack_b8 = *(undefined8 *)(param_1 + 8);
    local_c0 = *(ulong *)param_1;
    local_b0 = *(void **)(param_1 + 0x10);
    pYVar7 = this;
  }
  else {
    pYVar7 = (YctDevice *)
             FUN_006a79e4(&local_c0,*(undefined8 *)(param_1 + 0x10),*(undefined8 *)(param_1 + 8));
  }
                    /* try { // try from 006ce53c to 006ce54b has its CatchHandler @ 006ceaf8 */
  SplitLineMsg(&local_a8,pYVar7,&local_c0,1);
  if ((local_c0 & 1) != 0) {
    operator_delete(local_b0);
  }
  pbVar5 = local_a8;
  if ((ulong)(((long)local_a0 - (long)local_a8 >> 3) * -0x5555555555555555) < 7) goto LAB_006ce95c;
  local_d0 = (YctDevice *)0x0;
  pcStack_128 = (char *)0x0;
  local_130 = (YctDevice *)0x0;
  local_118 = (YctDevice *)0x0;
  uStack_120 = 0;
  uStack_108 = 0;
  local_110 = (char *)0x0;
  local_f8 = (char *)0x0;
  local_100 = (YctDevice *)0x0;
  pYStack_e8 = (YctDevice *)0x0;
  sStack_f0 = 0;
  uStack_d8 = 0;
  local_e0 = (char *)0x0;
  sStack_138 = 0;
  local_140 = (char *)0x0;
  std::__ndk1::locale::locale(alStack_148);
  local_90 = 1;
  std::__ndk1::locale::locale(alStack_88,alStack_148);
                    /* try { // try from 006ce5b4 to 006ce5c3 has its CatchHandler @ 006ceab0 */
  boost::algorithm::
  trim_copy_if<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::algorithm::detail::is_classifiedF>
            ((algorithm *)&local_80,pbVar5 + 0x30,&local_90);
  std::__ndk1::locale::~locale(alStack_88);
  if (((ulong)local_140 & 1) != 0) {
    operator_delete(local_130);
  }
  local_140 = local_80;
  sStack_138 = CONCAT44(uStack_74,uStack_78);
  local_80 = (char *)((ulong)local_80 & 0xffffffffffff0000);
  local_130 = local_70;
  std::__ndk1::locale::~locale(alStack_148);
  std::__ndk1::locale::locale(alStack_148);
  local_90 = 1;
  std::__ndk1::locale::locale(alStack_88,alStack_148);
                    /* try { // try from 006ce614 to 006ce623 has its CatchHandler @ 006ceaac */
  boost::algorithm::
  trim_copy_if<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::algorithm::detail::is_classifiedF>
            ((algorithm *)&local_80,pbVar5 + 0x48,&local_90);
  std::__ndk1::locale::~locale(alStack_88);
  if (((ulong)pcStack_128 & 1) != 0) {
    operator_delete(local_118);
  }
  pcStack_128 = local_80;
  local_80 = (char *)((ulong)local_80 & 0xffffffffffff0000);
  local_118 = local_70;
  std::__ndk1::locale::~locale(alStack_148);
  std::__ndk1::locale::locale(alStack_148);
  local_90 = 1;
  std::__ndk1::locale::locale(alStack_88,alStack_148);
                    /* try { // try from 006ce67c to 006ce68b has its CatchHandler @ 006ceaa0 */
  boost::algorithm::
  trim_copy_if<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::algorithm::detail::is_classifiedF>
            ((algorithm *)&local_80,pbVar5 + 0x60,&local_90);
  std::__ndk1::locale::~locale(alStack_88);
  if (((ulong)local_110 & 1) != 0) {
    operator_delete(local_100);
  }
  local_110 = local_80;
  local_80 = (char *)((ulong)local_80 & 0xffffffffffff0000);
  local_100 = local_70;
  std::__ndk1::locale::~locale(alStack_148);
  std::__ndk1::locale::locale(alStack_148);
  local_90 = 1;
  std::__ndk1::locale::locale(alStack_88,alStack_148);
                    /* try { // try from 006ce6e4 to 006ce6f3 has its CatchHandler @ 006cea94 */
  boost::algorithm::
  trim_copy_if<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::algorithm::detail::is_classifiedF>
            ((algorithm *)&local_80,pbVar5 + 0x78,&local_90);
  std::__ndk1::locale::~locale(alStack_88);
  if (((ulong)local_f8 & 1) != 0) {
    operator_delete(pYStack_e8);
  }
  local_f8 = local_80;
  sStack_f0 = CONCAT44(uStack_74,uStack_78);
  local_80 = (char *)((ulong)local_80 & 0xffffffffffff0000);
  pYStack_e8 = local_70;
  std::__ndk1::locale::~locale(alStack_148);
  std::__ndk1::locale::locale(alStack_148);
  local_90 = 1;
  std::__ndk1::locale::locale(alStack_88,alStack_148);
                    /* try { // try from 006ce750 to 006ce75f has its CatchHandler @ 006cea88 */
  boost::algorithm::
  trim_copy_if<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::algorithm::detail::is_classifiedF>
            ((algorithm *)&local_80,pbVar5 + 0x90,&local_90);
  std::__ndk1::locale::~locale(alStack_88);
  if (((ulong)local_e0 & 1) != 0) {
    operator_delete(local_d0);
  }
  local_e0 = local_80;
  local_80 = (char *)((ulong)local_80 & 0xffffffffffff0000);
  local_d0 = local_70;
  std::__ndk1::locale::~locale(alStack_148);
  sVar1 = (ulong)local_140 >> 1 & 0x7f;
  if (((ulong)local_140 & 1) != 0) {
    sVar1 = sStack_138;
  }
  if (sVar1 == 0) goto joined_r0x006ce9e4;
  if (this[0x668] == (YctDevice)0x0) {
LAB_006ce8b0:
    if (((*PTR_s_instance_00d70cb0 & 1) == 0) &&
       (iVar6 = __cxa_guard_acquire(PTR_s_instance_00d70cb0), iVar6 != 0)) {
                    /* try { // try from 006cea3c to 006cea47 has its CatchHandler @ 006cea74 */
      spdlog::details::registry::registry((registry *)PTR_s_instance_00d70cb8);
      __cxa_atexit(PTR__registry_00d70cc8,PTR_s_instance_00d70cb8,&PTR_LOOP_00ce5ac0);
      __cxa_guard_release(PTR_s_instance_00d70cb0);
    }
    local_80 = "D:/Projects/Android/Projects/YctDevice/app/src/main/cpp/src/yct_device.cpp";
    uStack_78 = 0x325;
    local_70 = (YctDevice *)0x41823d;
                    /* try { // try from 006ce8ec to 006ce9d7 has its CatchHandler @ 006ceaf0 */
    spdlog::logger::
    log_<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>&>
              (*(undefined8 *)(PTR_s_instance_00d70cb8 + 0x128),&local_80,2,
               "gnss info: model={}, sn={}, hw={}, fw={}, auth={}",0x31,&local_140,&pcStack_128,
               &local_110,&local_f8,&local_e0);
    if (this[0x668] == (YctDevice)0x0) {
      GnssInfo::GnssInfo((GnssInfo *)(this + 0x5f0),(GnssInfo *)&local_140);
      this[0x668] = (YctDevice)0x1;
    }
    else {
      GnssInfo::operator=((GnssInfo *)(this + 0x5f0),(GnssInfo *)&local_140);
    }
  }
  else {
    YVar3 = this[0x5f0];
    uVar8 = (ulong)((byte)YVar3 >> 1);
    sVar2 = uVar8;
    if (((byte)YVar3 & 1) != 0) {
      sVar2 = *(size_t *)(this + 0x5f8);
    }
    if (sVar2 != sVar1) goto LAB_006ce8b0;
    pYVar7 = (YctDevice *)((ulong)&local_140 | 1);
    if (((ulong)local_140 & 1) != 0) {
      pYVar7 = local_130;
    }
    if (((byte)YVar3 & 1) == 0) {
      if (1 < (byte)YVar3) {
        pYVar9 = this + 0x5f1;
        do {
          if (*pYVar9 != *pYVar7) goto LAB_006ce8b0;
          uVar8 = uVar8 - 1;
          pYVar9 = pYVar9 + 1;
          pYVar7 = pYVar7 + 1;
        } while (uVar8 != 0);
      }
    }
    else {
      iVar6 = memcmp(*(void **)(this + 0x600),pYVar7,*(size_t *)(this + 0x5f8));
      if (iVar6 != 0) goto LAB_006ce8b0;
    }
    YVar3 = this[0x638];
    uVar8 = (ulong)((byte)YVar3 >> 1);
    sVar1 = uVar8;
    if (((byte)YVar3 & 1) != 0) {
      sVar1 = *(size_t *)(this + 0x640);
    }
    sVar2 = (ulong)local_f8 >> 1 & 0x7f;
    if (((ulong)local_f8 & 1) != 0) {
      sVar2 = sStack_f0;
    }
    if (sVar1 != sVar2) goto LAB_006ce8b0;
    pYVar7 = (YctDevice *)((long)&local_f8 + 1);
    if (((ulong)local_f8 & 1) != 0) {
      pYVar7 = pYStack_e8;
    }
    if (((byte)YVar3 & 1) == 0) {
      if (1 < (byte)YVar3) {
        pYVar9 = this + 0x639;
        do {
          if (*pYVar9 != *pYVar7) goto LAB_006ce8b0;
          uVar8 = uVar8 - 1;
          pYVar9 = pYVar9 + 1;
          pYVar7 = pYVar7 + 1;
        } while (uVar8 != 0);
      }
    }
    else {
      iVar6 = memcmp(*(void **)(this + 0x648),pYVar7,*(size_t *)(this + 0x640));
      if (iVar6 != 0) goto LAB_006ce8b0;
    }
  }
joined_r0x006ce9e4:
  if (((ulong)local_e0 & 1) != 0) {
    operator_delete(local_d0);
  }
  if (((ulong)local_f8 & 1) != 0) {
    operator_delete(pYStack_e8);
  }
  if (((ulong)local_110 & 1) != 0) {
    operator_delete(local_100);
  }
  if (((ulong)pcStack_128 & 1) != 0) {
    operator_delete(local_118);
  }
  if (((ulong)local_140 & 1) != 0) {
    operator_delete(local_130);
  }
LAB_006ce95c:
  if (local_a8 != (byte *)0x0) {
    while (pbVar5 = local_a0, pbVar5 != local_a8) {
      local_a0 = pbVar5 + -0x18;
      if ((*local_a0 & 1) != 0) {
        operator_delete(*(void **)(pbVar5 + -8));
      }
    }
    operator_delete(local_a8);
  }
  if (*(long *)(lVar4 + 0x28) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

