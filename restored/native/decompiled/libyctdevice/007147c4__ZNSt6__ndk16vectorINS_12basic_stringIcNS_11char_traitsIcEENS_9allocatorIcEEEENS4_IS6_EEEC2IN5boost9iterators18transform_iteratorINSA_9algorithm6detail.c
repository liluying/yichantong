/* Artifact: libyctdevice.so | Address: 007147c4 | Ghidra static pseudocode; types require review. */

void _ZNSt6__ndk16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2IN5boost9iterators18transform_iteratorINSA_9algorithm6detail20copy_iterator_rangeFIS6_NS_11__wrap_iterIPKcEEEENSD_14split_iteratorISJ_EENSA_11use_defaultESN_EETnNS_9enable_ifIXaasr37__has_exactly_input_iterator_categoryIT_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISQ_E9referenceEEE5valueEiE4typeELi0EEESQ_SQ_
               (vector<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::allocator<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>>
                *param_1,ulong *param_2,ulong *param_3)

{
  long lVar1;
  undefined8 *puVar2;
  undefined8 *local_c8;
  ulong local_c0;
  ulong uStack_b8;
  ulong local_b0;
  ulong local_a8;
  ulong uStack_a0;
  ulong local_98;
  ulong uStack_90;
  undefined1 local_88;
  undefined8 *local_80;
  ulong local_78;
  ulong uStack_70;
  ulong local_68;
  ulong local_60;
  ulong uStack_58;
  ulong uStack_50;
  ulong uStack_48;
  undefined1 local_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  *(undefined8 *)param_1 = 0;
  *(undefined8 *)(param_1 + 8) = 0;
  *(undefined8 *)(param_1 + 0x10) = 0;
  puVar2 = (undefined8 *)*param_2;
  local_80 = (undefined8 *)0x0;
  if (puVar2 != (undefined8 *)0x0) {
    local_80 = puVar2;
    if (((ulong)puVar2 & 1) == 0) {
      (*(code *)*puVar2)(param_2 + 1,&local_78,0);
    }
    else {
      uStack_70 = param_2[2];
      local_78 = param_2[1];
      local_68 = param_2[3];
    }
  }
  uStack_58 = param_2[5];
  local_60 = param_2[4];
  uStack_48 = param_2[7];
  uStack_50 = param_2[6];
  local_40 = (undefined1)param_2[8];
  puVar2 = (undefined8 *)*param_3;
  local_c8 = (undefined8 *)0x0;
  if (puVar2 != (undefined8 *)0x0) {
    local_c8 = puVar2;
    if (((ulong)puVar2 & 1) == 0) {
                    /* try { // try from 0071486c to 00714883 has its CatchHandler @ 00714938 */
      (*(code *)*puVar2)(param_3 + 1,&local_c0,0);
    }
    else {
      uStack_b8 = param_3[2];
      local_c0 = param_3[1];
      local_b0 = param_3[3];
    }
  }
  uStack_a0 = param_3[5];
  local_a8 = param_3[4];
  uStack_90 = param_3[7];
  local_98 = param_3[6];
  local_88 = (undefined1)param_3[8];
                    /* try { // try from 007148ac to 007148b7 has its CatchHandler @ 00714940 */
  std::__ndk1::
  vector<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::allocator<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>>
  ::
  __init_with_sentinel_abi_ne180000_<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__wrap_iter<char_const*>>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char_const*>>,boost::use_default,boost::use_default>,boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__wrap_iter<char_const*>>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char_const*>>,boost::use_default,boost::use_default>>
            (param_1,&local_80,&local_c8);
  if (local_c8 != (undefined8 *)0x0) {
    if ((((ulong)local_c8 & 1) == 0) && ((code *)*local_c8 != (code *)0x0)) {
                    /* try { // try from 007148d0 to 007148df has its CatchHandler @ 00714930 */
      (*(code *)*local_c8)(&local_c0,&local_c0,2);
    }
    local_c8 = (undefined8 *)0x0;
  }
  if (((local_80 != (undefined8 *)0x0) && (((ulong)local_80 & 1) == 0)) &&
     ((code *)*local_80 != (code *)0x0)) {
                    /* try { // try from 007148fc to 0071490b has its CatchHandler @ 00714934 */
    (*(code *)*local_80)(&local_78,&local_78,2);
  }
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

