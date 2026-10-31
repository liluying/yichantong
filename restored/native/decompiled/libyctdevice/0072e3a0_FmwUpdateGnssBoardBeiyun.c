/* Artifact: libyctdevice.so | Address: 0072e3a0 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* FmwUpdateGnssBoardBeiyun::FmwUpdateGnssBoardBeiyun(std::__ndk1::function<void
   (std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >
   const&)>, boost::asio::io_context&) */

void __thiscall
FmwUpdateGnssBoardBeiyun::FmwUpdateGnssBoardBeiyun
          (FmwUpdateGnssBoardBeiyun *this,long *param_2,io_context *param_3)

{
  uint uVar1;
  ulong uVar2;
  FmwUpdateGnssBoardBeiyun FVar3;
  long lVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined *puVar7;
  bool bVar8;
  undefined **ppuVar9;
  long *plVar10;
  long lVar11;
  FmwUpdateGnssBoardBeiyun *pFVar12;
  undefined *local_a0;
  undefined *puStack_98;
  undefined8 local_90;
  FmwUpdateGnssBoardBeiyun *pFStack_88;
  long *local_80;
  long local_70 [4];
  long *local_50;
  long local_38;
  
  ppuVar9 = &local_a0;
  lVar4 = tpidr_el0;
  local_38 = *(long *)(lVar4 + 0x28);
  plVar10 = (long *)param_2[4];
  if (plVar10 == (long *)0x0) {
    local_50 = (long *)0x0;
  }
  else if (plVar10 == param_2) {
    local_50 = local_70;
    (**(code **)(*param_2 + 0x18))(param_2,local_70);
  }
  else {
    local_50 = (long *)(**(code **)(*plVar10 + 0x10))(plVar10);
  }
                    /* try { // try from 0072e414 to 0072e427 has its CatchHandler @ 0072e670 */
  IFmwUpdate::IFmwUpdate((IFmwUpdate *)this,local_70,param_3);
  if (local_50 == local_70) {
    lVar11 = 4;
    plVar10 = local_70;
LAB_0072e448:
    (**(code **)(*plVar10 + lVar11 * 8))();
  }
  else if (local_50 != (long *)0x0) {
    lVar11 = 5;
    plVar10 = local_50;
    goto LAB_0072e448;
  }
  puVar7 = PTR_vtable_00d71cb8;
  *(undefined8 *)(this + 0x1a8) = 0;
  *(undefined8 *)(this + 0x1b0) = 0;
  *(undefined8 *)(this + 0x1a0) = 0;
  *(undefined4 *)(this + 0x1b8) = 0x400000;
  *(undefined **)this = puVar7 + 0x10;
                    /* try { // try from 0072e474 to 0072e47f has its CatchHandler @ 0072e638 */
  Timer::Timer((Timer *)(this + 0x1c0),param_3);
  uVar6 = _UNK_003973f8;
  uVar5 = _DAT_003973f0;
  *(undefined4 *)(this + 0x310) = 0xffffffff;
  FVar3 = this[0x1a0];
  *(undefined8 *)(this + 0x364) = 0;
  *(undefined8 *)(this + 0x36c) = 0;
  *(undefined8 *)(this + 800) = 0;
  *(undefined8 *)(this + 0x318) = 0;
  *(undefined8 *)(this + 0x330) = 0;
  *(undefined8 *)(this + 0x328) = 0;
  *(undefined8 *)(this + 0x340) = 0;
  *(undefined8 *)(this + 0x338) = 0;
  *(undefined8 *)(this + 0x350) = 0;
  *(undefined8 *)(this + 0x348) = 0;
  *(undefined8 *)(this + 0x35c) = 0;
  uVar2 = (ulong)((byte)FVar3 >> 1);
  if (((byte)FVar3 & 1) != 0) {
    uVar2 = *(ulong *)(this + 0x1a8);
  }
  *(undefined8 *)(this + 0x308) = uVar6;
  *(undefined8 *)(this + 0x300) = uVar5;
  this[0x358] = (FmwUpdateGnssBoardBeiyun)0x0;
  *(undefined4 *)(this + 0x374) = 0;
  if (uVar2 >> 0xf == 0) {
                    /* try { // try from 0072e4dc to 0072e54b has its CatchHandler @ 0072e6a8 */
    std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
    append((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
           (this + 0x1a0),0x8000 - uVar2,'\0');
  }
  else {
    if (((byte)FVar3 & 1) == 0) {
      pFVar12 = this + 0x1a1;
      this[0x1a0] = (FmwUpdateGnssBoardBeiyun)0x0;
    }
    else {
      pFVar12 = *(FmwUpdateGnssBoardBeiyun **)(this + 0x1b0);
      *(undefined8 *)(this + 0x1a8) = 0x8000;
    }
    pFVar12[0x8000] = (FmwUpdateGnssBoardBeiyun)0x0;
  }
  bVar8 = ((byte)this[0x1a0] & 1) != 0;
  pFVar12 = this + 0x1a1;
  if (bVar8) {
    pFVar12 = *(FmwUpdateGnssBoardBeiyun **)(this + 0x1b0);
  }
  uVar1 = (uint)((byte)this[0x1a0] >> 1);
  if (bVar8) {
    uVar1 = *(uint *)(this + 0x1a8);
  }
  gnssparser_init(this + 0x70,pFVar12,uVar1,this);
  gnssparser_callback_line(this + 0x70,FUN_00731c80);
  local_90 = 0;
  local_a0 = PTR_vtable_00d71cc0 + 0x10;
  puStack_98 = PTR_OnTimerTimeout_00d71cc8;
                    /* try { // try from 0072e570 to 0072e57b has its CatchHandler @ 0072e5cc */
  pFStack_88 = this;
  local_80 = (long *)&local_a0;
  Timer::SetCallback((Timer *)(this + 0x1c0),&local_a0);
  if ((undefined **)local_80 == &local_a0) {
    lVar11 = 4;
  }
  else {
    if (local_80 == (long *)0x0) goto LAB_0072e5a8;
    lVar11 = 5;
    ppuVar9 = (undefined **)local_80;
  }
  (**(code **)((long)*ppuVar9 + lVar11 * 8))();
LAB_0072e5a8:
  if (*(long *)(lVar4 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

