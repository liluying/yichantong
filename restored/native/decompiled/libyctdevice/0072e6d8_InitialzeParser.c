/* Artifact: libyctdevice.so | Address: 0072e6d8 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::InitialzeParser() */

void __thiscall FmwUpdateGnssBoardBeiyun::InitialzeParser(FmwUpdateGnssBoardBeiyun *this)

{
  uint uVar1;
  ulong uVar2;
  FmwUpdateGnssBoardBeiyun FVar3;
  bool bVar4;
  FmwUpdateGnssBoardBeiyun *pFVar5;
  
  FVar3 = this[0x1a0];
  uVar2 = (ulong)((byte)FVar3 >> 1);
  if (((byte)FVar3 & 1) != 0) {
    uVar2 = *(ulong *)(this + 0x1a8);
  }
  if (uVar2 >> 0xf == 0) {
    std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
    append((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
           (this + 0x1a0),0x8000 - uVar2,'\0');
  }
  else {
    if (((byte)FVar3 & 1) == 0) {
      pFVar5 = this + 0x1a1;
      this[0x1a0] = (FmwUpdateGnssBoardBeiyun)0x0;
    }
    else {
      pFVar5 = *(FmwUpdateGnssBoardBeiyun **)(this + 0x1b0);
      *(undefined8 *)(this + 0x1a8) = 0x8000;
    }
    pFVar5[0x8000] = (FmwUpdateGnssBoardBeiyun)0x0;
  }
  bVar4 = ((byte)this[0x1a0] & 1) != 0;
  pFVar5 = this + 0x1a1;
  if (bVar4) {
    pFVar5 = *(FmwUpdateGnssBoardBeiyun **)(this + 0x1b0);
  }
  uVar1 = (uint)((byte)this[0x1a0] >> 1);
  if (bVar4) {
    uVar1 = *(uint *)(this + 0x1a8);
  }
  gnssparser_init(this + 0x70,pFVar5,uVar1,this);
  gnssparser_callback_line(this + 0x70,FUN_00731c80);
  return;
}

