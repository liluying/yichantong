/* Artifact: libyctdevice.so | Address: 00732944 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::FmwUpdateGnssBoardUnicore(std::__ndk1::function<void
   (std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >
   const&)>, boost::asio::io_context&) */

void __thiscall
FmwUpdateGnssBoardUnicore::FmwUpdateGnssBoardUnicore
          (FmwUpdateGnssBoardUnicore *this,long *param_2,io_context *param_3)

{
  long lVar1;
  undefined **ppuVar2;
  long *plVar3;
  long lVar4;
  undefined *local_a0;
  undefined *puStack_98;
  undefined8 local_90;
  FmwUpdateGnssBoardUnicore *pFStack_88;
  long *local_80;
  long local_70 [4];
  long *local_50;
  long local_38;
  
  ppuVar2 = &local_a0;
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  plVar3 = (long *)param_2[4];
  if (plVar3 == (long *)0x0) {
    local_50 = (long *)0x0;
  }
  else if (plVar3 == param_2) {
    local_50 = local_70;
    (**(code **)(*param_2 + 0x18))(param_2,local_70);
  }
  else {
    local_50 = (long *)(**(code **)(*plVar3 + 0x10))(plVar3);
  }
                    /* try { // try from 007329b8 to 007329cb has its CatchHandler @ 00732b68 */
  IFmwUpdate::IFmwUpdate((IFmwUpdate *)this,local_70,param_3);
  if (local_50 == local_70) {
    lVar4 = 4;
    plVar3 = local_70;
LAB_007329ec:
    (**(code **)(*plVar3 + lVar4 * 8))();
  }
  else if (local_50 != (long *)0x0) {
    lVar4 = 5;
    plVar3 = local_50;
    goto LAB_007329ec;
  }
  *(undefined **)this = PTR_vtable_00d71d18 + 0x10;
                    /* try { // try from 00732a0c to 00732a17 has its CatchHandler @ 00732b58 */
  Timer::Timer((Timer *)(this + 0x70),param_3);
  *(undefined2 *)(this + 0x1d4) = 0x101;
  *(undefined4 *)(this + 0x1d0) = 0;
  this[0x200] = (FmwUpdateGnssBoardUnicore)0x0;
  *(undefined8 *)(this + 0x1b8) = 0;
  *(undefined8 *)(this + 0x1b0) = 0;
  *(undefined8 *)(this + 0x1c8) = 0;
  *(undefined8 *)(this + 0x1c0) = 0;
  *(undefined8 *)(this + 0x1d8) = 0xffffffff00000000;
  *(undefined8 *)(this + 0x1e8) = 0;
  *(undefined8 *)(this + 0x1e0) = 0;
  *(undefined8 *)(this + 0x1f8) = 0;
  *(undefined8 *)(this + 0x1f0) = 0;
  *(undefined4 *)(this + 0x21c) = 0;
  *(undefined8 *)(this + 0x214) = 0;
  local_a0 = PTR_vtable_00d71d20;
  *(undefined8 *)(this + 0x204) = 0;
  *(undefined8 *)(this + 0x20c) = 0;
  local_a0 = local_a0 + 0x10;
  local_90 = 0;
  puStack_98 = PTR_OnTimerTimeout_00d71d28;
  pFStack_88 = this;
  local_80 = (long *)&local_a0;
                    /* try { // try from 00732a70 to 00732a7b has its CatchHandler @ 00732acc */
  Timer::SetCallback((Timer *)(this + 0x70),&local_a0);
  if ((undefined **)local_80 == &local_a0) {
    lVar4 = 4;
  }
  else {
    if (local_80 == (long *)0x0) goto LAB_00732aa8;
    lVar4 = 5;
    ppuVar2 = (undefined **)local_80;
  }
  (**(code **)((long)*ppuVar2 + lVar4 * 8))();
LAB_00732aa8:
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

