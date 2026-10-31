/* Artifact: libyctdevice.so | Address: 007300a4 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::OnRecvDataFromDevice(std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&) */

void __thiscall
FmwUpdateGnssBoardBeiyun::OnRecvDataFromDevice(FmwUpdateGnssBoardBeiyun *this,basic_string *param_1)

{
  uint uVar1;
  bool bVar2;
  basic_string *pbVar3;
  
  if (*(int *)(this + 0x300) != 0) {
    pbVar3 = *(basic_string **)(param_1 + 0x10);
    bVar2 = (*param_1 & 1) == 0;
    if (bVar2) {
      pbVar3 = param_1 + 1;
    }
    uVar1 = (uint)((byte)*param_1 >> 1);
    if (!bVar2) {
      uVar1 = *(uint *)(param_1 + 8);
    }
    gnssparser_input(this + 0x70,pbVar3,uVar1);
    return;
  }
  return;
}

