/* Artifact: libyctdevice.so | Address: 007300d4 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::FinishUpdate(bool, FmwUpdateErrorCode, std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&) */

void __thiscall
FmwUpdateGnssBoardBeiyun::FinishUpdate
          (FmwUpdateGnssBoardBeiyun *this,ulong param_2,undefined4 param_3,
          FmwUpdateGnssBoardBeiyun *param_4)

{
  FmwUpdateGnssBoardBeiyun *pFVar1;
  ulong uVar2;
  FmwUpdateGnssBoardBeiyun *pFVar3;
  FmwUpdateGnssBoardBeiyun FVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  
  if ((param_2 & 1) == 0) {
    pFVar1 = this + 0x360;
    *(undefined4 *)(this + 0x35c) = param_3;
    if (pFVar1 != param_4) {
      FVar4 = *param_4;
      if (((byte)*pFVar1 & 1) == 0) {
        if (((byte)FVar4 & 1) == 0) {
          uVar6 = *(undefined8 *)(param_4 + 8);
          uVar5 = *(undefined8 *)param_4;
          *(undefined8 *)(this + 0x370) = *(undefined8 *)(param_4 + 0x10);
          *(undefined8 *)(this + 0x368) = uVar6;
          *(undefined8 *)pFVar1 = uVar5;
        }
        else {
          FUN_006b73c8(pFVar1,*(undefined8 *)(param_4 + 0x10),*(undefined8 *)(param_4 + 8));
        }
      }
      else {
        uVar2 = *(ulong *)(param_4 + 8);
        pFVar3 = *(FmwUpdateGnssBoardBeiyun **)(param_4 + 0x10);
        if (((byte)FVar4 & 1) == 0) {
          pFVar3 = param_4 + 1;
          uVar2 = (ulong)((byte)FVar4 >> 1);
        }
        FUN_006b7474(pFVar1,pFVar3,uVar2);
      }
    }
    uVar5 = 7;
  }
  else {
    *(undefined4 *)(this + 0x35c) = 0;
    if (((byte)this[0x360] & 1) == 0) {
      *(undefined2 *)(this + 0x360) = 0;
      uVar5 = 6;
    }
    else {
      uVar5 = 6;
      **(undefined1 **)(this + 0x370) = 0;
      *(undefined8 *)(this + 0x368) = 0;
    }
  }
  GoState(this,uVar5);
  return;
}

