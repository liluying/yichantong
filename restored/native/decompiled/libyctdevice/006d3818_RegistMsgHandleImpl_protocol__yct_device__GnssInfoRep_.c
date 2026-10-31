/* Artifact: libyctdevice.so | Address: 006d3818 | Ghidra static pseudocode; types require review. */

/* void YctDevice::RegistMsgHandleImpl<protocol::yct_device::GnssInfoRep>(std::__ndk1::function<void
   (std::__ndk1::shared_ptr<google::protobuf::Message>)>) */

void __thiscall
YctDevice::RegistMsgHandleImpl<protocol::yct_device::GnssInfoRep>(YctDevice *this,long *param_2)

{
  __tree<std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>,std::__ndk1::__map_value_compare<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>,std::__ndk1::less<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>,true>,std::__ndk1::allocator<std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>>>
  *this_00;
  long lVar1;
  long lVar2;
  __tree_node_base **pp_Var3;
  __tree_node_base *p_Var4;
  ulong *puVar5;
  long *plVar6;
  __tree_end_node *local_c0;
  __tree_node_base *local_b8;
  YctDevice *pYStack_b0;
  undefined1 local_a8;
  ulong local_a0;
  ulong uStack_98;
  void *local_90;
  long local_80 [4];
  long *local_60;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  lVar2 = protocol::yct_device::GnssInfoRep::GetMetadata();
  puVar5 = *(ulong **)(lVar2 + 8);
  if ((*puVar5 & 1) == 0) {
    local_90 = (void *)puVar5[2];
    uStack_98 = puVar5[1];
    local_a0 = *puVar5;
  }
  else {
    FUN_006a79e4(&local_a0,puVar5[2],puVar5[1]);
  }
  local_60 = (long *)param_2[4];
  plVar6 = local_80;
  if (local_60 != (long *)0x0) {
    if (local_60 == param_2) {
      local_60 = plVar6;
      (**(code **)(*param_2 + 0x18))(param_2,plVar6);
    }
    else {
                    /* try { // try from 006d389c to 006d38bf has its CatchHandler @ 006d3a1c */
      local_60 = (long *)(**(code **)(*local_60 + 0x10))();
    }
  }
  this_00 = (__tree<std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>,std::__ndk1::__map_value_compare<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>,std::__ndk1::less<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>,true>,std::__ndk1::allocator<std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>>>
             *)(this + 0x378);
                    /* try { // try from 006d38c4 to 006d38e7 has its CatchHandler @ 006d3a34 */
  pp_Var3 = std::__ndk1::
            __tree<std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>,std::__ndk1::__map_value_compare<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>,std::__ndk1::less<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>,true>,std::__ndk1::allocator<std::__ndk1::__value_type<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::function<void(std::__ndk1::shared_ptr<google::protobuf::Message>)>>>>
            ::
            __find_equal<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>>
                      (this_00,&local_c0,(basic_string *)&local_a0);
  if (*pp_Var3 == (__tree_node_base *)0x0) {
    p_Var4 = (__tree_node_base *)operator_new(0x70);
    pYStack_b0 = this + 0x380;
    local_a8 = 0;
    local_b8 = p_Var4;
    if ((local_a0 & 1) == 0) {
      *(ulong *)(p_Var4 + 0x28) = uStack_98;
      *(ulong *)(p_Var4 + 0x20) = local_a0;
      *(void **)(p_Var4 + 0x30) = local_90;
    }
    else {
                    /* try { // try from 006d3918 to 006d391f has its CatchHandler @ 006d3a0c */
      FUN_006a79e4(p_Var4 + 0x20,local_90,uStack_98);
    }
    if (local_60 == (long *)0x0) {
      *(undefined8 *)(p_Var4 + 0x60) = 0;
    }
    else if (local_60 == plVar6) {
      *(__tree_node_base **)(p_Var4 + 0x60) = p_Var4 + 0x40;
                    /* try { // try from 006d395c to 006d3963 has its CatchHandler @ 006d3a08 */
      (**(code **)(local_80[0] + 0x18))(plVar6);
    }
    else {
      *(long **)(p_Var4 + 0x60) = local_60;
      local_60 = (long *)0x0;
    }
    *(undefined8 *)p_Var4 = 0;
    *(undefined8 *)(p_Var4 + 8) = 0;
    *(__tree_end_node **)(p_Var4 + 0x10) = local_c0;
    *pp_Var3 = p_Var4;
    if (**(long **)this_00 != 0) {
      *(long *)this_00 = **(long **)this_00;
      p_Var4 = *pp_Var3;
    }
    FUN_006bfa08(*(undefined8 *)(this + 0x380),p_Var4);
    *(long *)(this + 0x388) = *(long *)(this + 0x388) + 1;
  }
  if (local_60 == plVar6) {
    lVar2 = 4;
  }
  else {
    if (local_60 == (long *)0x0) goto LAB_006d39d0;
    lVar2 = 5;
    plVar6 = local_60;
  }
  (**(code **)(*plVar6 + lVar2 * 8))(plVar6);
LAB_006d39d0:
  if ((local_a0 & 1) != 0) {
    operator_delete(local_90);
  }
  if (*(long *)(lVar1 + 0x28) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

