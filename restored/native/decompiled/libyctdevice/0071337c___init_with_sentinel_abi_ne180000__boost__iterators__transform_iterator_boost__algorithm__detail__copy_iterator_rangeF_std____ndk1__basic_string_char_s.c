/* Artifact: libyctdevice.so | Address: 0071337c | Ghidra static pseudocode; types require review. */

/* void std::__ndk1::vector<std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>,
   std::__ndk1::allocator<char> >, std::__ndk1::allocator<std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > >
   >::__init_with_sentinel[abi:ne180000]<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::__wrap_iter<char*>
   >, boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*> >, boost::use_default,
   boost::use_default>,
   boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::__wrap_iter<char*>
   >, boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*> >, boost::use_default,
   boost::use_default>
   >(boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::__wrap_iter<char*>
   >, boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*> >, boost::use_default,
   boost::use_default>,
   boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::__wrap_iter<char*>
   >, boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*> >, boost::use_default,
   boost::use_default>) */

void __thiscall
std::__ndk1::
vector<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::allocator<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>>
::
__init_with_sentinel_abi_ne180000_<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__wrap_iter<char*>>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__wrap_iter<char*>>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*>>,boost::use_default,boost::use_default>>
          (vector<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::allocator<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>>
           *this,ulong *param_2,long *param_3)

{
  bool bVar1;
  bool bVar2;
  ulong *puVar3;
  long lVar4;
  undefined8 *puVar5;
  int iVar6;
  undefined8 uVar7;
  undefined1 *puVar8;
  undefined1 *puVar9;
  undefined1 *puVar10;
  ulong uVar11;
  undefined8 *puVar12;
  undefined8 *puVar13;
  ulong uVar14;
  ulong uVar15;
  undefined1 *puVar16;
  undefined8 uVar17;
  undefined8 uVar18;
  undefined1 auVar19 [16];
  ulong local_90;
  ulong uStack_88;
  undefined1 *local_80;
  vector<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::allocator<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>>
  *local_78;
  undefined1 local_70;
  long local_68;
  undefined1 *__s1;
  
  lVar4 = tpidr_el0;
  local_68 = *(long *)(lVar4 + 0x28);
  local_70 = 0;
  local_78 = this;
  do {
    bVar1 = *param_2 == 0 || (char)param_2[8] != '\0';
    bVar2 = *param_3 == 0 || (char)param_3[8] != '\0';
    if ((bVar1) || (bVar2)) {
      if (bVar1 == bVar2) goto LAB_007135c8;
      __s1 = (undefined1 *)param_2[4];
      puVar16 = (undefined1 *)param_2[5];
      uVar15 = (long)puVar16 - (long)__s1;
    }
    else {
      __s1 = (undefined1 *)param_2[4];
      puVar16 = (undefined1 *)param_2[5];
      uVar15 = (long)puVar16 - (long)__s1;
      if ((((uVar15 == param_3[5] - param_3[4]) &&
           (iVar6 = memcmp(__s1,(void *)param_3[4],uVar15), iVar6 == 0)) &&
          (param_2[6] == param_3[6])) && (param_2[7] == param_3[7])) {
LAB_007135c8:
        if (*(long *)(lVar4 + 0x28) == local_68) {
          return;
        }
        goto LAB_00713654;
      }
    }
    if (0xffffffffffffffef < uVar15) {
      if (*(long *)(lVar4 + 0x28) == local_68) {
                    /* try { // try from 00713608 to 0071360f has its CatchHandler @ 00713630 */
                    /* WARNING: Subroutine does not return */
        FUN_006a3c28(&local_90);
      }
LAB_00713654:
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    if (uVar15 < 0x17) {
      local_90 = CONCAT71(local_90._1_7_,(char)((int)uVar15 << 1));
      puVar9 = (undefined1 *)((ulong)&local_90 | 1);
    }
    else {
      uVar14 = (uVar15 | 0xf) + 1;
                    /* try { // try from 007134e4 to 007134eb has its CatchHandler @ 00713628 */
      local_80 = (undefined1 *)operator_new(uVar14);
      local_90 = uVar14 | 1;
      puVar9 = local_80;
      uStack_88 = uVar15;
    }
    if (__s1 != puVar16) {
      uVar15 = (long)puVar16 - (long)__s1;
      puVar8 = puVar9;
      if ((0x1f < uVar15) && (0x1f < (ulong)((long)puVar9 - (long)__s1))) {
        uVar11 = uVar15 & 0xffffffffffffffe0;
        puVar12 = (undefined8 *)(__s1 + 0x10);
        puVar13 = (undefined8 *)(puVar9 + 0x10);
        puVar9 = puVar9 + uVar11;
        uVar14 = uVar11;
        do {
          puVar5 = puVar12 + -1;
          uVar7 = puVar12[-2];
          uVar18 = puVar12[1];
          uVar17 = *puVar12;
          uVar14 = uVar14 - 0x20;
          puVar12 = puVar12 + 4;
          puVar13[-1] = *puVar5;
          puVar13[-2] = uVar7;
          puVar13[1] = uVar18;
          *puVar13 = uVar17;
          puVar13 = puVar13 + 4;
        } while (uVar14 != 0);
        puVar8 = puVar9;
        __s1 = __s1 + uVar11;
        if (uVar15 == uVar11) goto LAB_00713520;
      }
      do {
        puVar10 = __s1 + 1;
        puVar9 = puVar8 + 1;
        *puVar8 = *__s1;
        puVar8 = puVar9;
        __s1 = puVar10;
      } while (puVar10 != puVar16);
    }
LAB_00713520:
    *puVar9 = 0;
    puVar3 = *(ulong **)(this + 8);
    if (puVar3 < *(ulong **)(this + 0x10)) {
      puVar3[2] = (ulong)local_80;
      puVar3[1] = uStack_88;
      *puVar3 = local_90;
      *(ulong **)(this + 8) = puVar3 + 3;
    }
    else {
                    /* try { // try from 0071354c to 00713557 has its CatchHandler @ 00713610 */
      uVar7 = FUN_00713658(this,&local_90);
      *(undefined8 *)(this + 8) = uVar7;
      if ((local_90 & 1) != 0) {
        operator_delete(local_80);
      }
    }
    uVar15 = param_2[7];
    auVar19._8_8_ = uVar15;
    auVar19._0_8_ = uVar15;
    if (*param_2 == 0) {
LAB_007135ac:
      if ((auVar19._8_8_ == uVar15) && (param_2[5] == uVar15)) {
        *(undefined1 *)(param_2 + 8) = 1;
      }
    }
    else {
                    /* try { // try from 00713584 to 0071358b has its CatchHandler @ 0071362c */
      auVar19 = (**(code **)((*param_2 & 0xfffffffffffffffe) + 8))(param_2 + 1,param_2[6]);
      uVar15 = param_2[7];
      if (auVar19._0_8_ == uVar15) goto LAB_007135ac;
    }
    uVar15 = param_2[6];
    param_2[6] = auVar19._8_8_;
    param_2[4] = uVar15;
    param_2[5] = auVar19._0_8_;
  } while( true );
}

