/* Artifact: libyctdevice.so | Address: 007368ac | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::FinishUpdate(bool, FmwUpdateErrorCode, std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&) */

void __thiscall
FmwUpdateGnssBoardUnicore::FinishUpdate
          (FmwUpdateGnssBoardUnicore *this,ulong param_2,undefined4 param_3,
          FmwUpdateGnssBoardUnicore *param_4)

{
  FmwUpdateGnssBoardUnicore *pFVar1;
  ulong uVar2;
  FmwUpdateGnssBoardUnicore *pFVar3;
  FmwUpdateGnssBoardUnicore FVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  
  if ((param_2 & 1) == 0) {
    pFVar1 = this + 0x208;
    *(undefined4 *)(this + 0x204) = param_3;
    if (pFVar1 != param_4) {
      FVar4 = *param_4;
      if (((byte)*pFVar1 & 1) == 0) {
        if (((byte)FVar4 & 1) == 0) {
          uVar6 = *(undefined8 *)(param_4 + 8);
          uVar5 = *(undefined8 *)param_4;
          *(undefined8 *)(this + 0x218) = *(undefined8 *)(param_4 + 0x10);
          *(undefined8 *)(this + 0x210) = uVar6;
          *(undefined8 *)pFVar1 = uVar5;
        }
        else {
          FUN_006b73c8(pFVar1,*(undefined8 *)(param_4 + 0x10),*(undefined8 *)(param_4 + 8));
        }
      }
      else {
        uVar2 = *(ulong *)(param_4 + 8);
        pFVar3 = *(FmwUpdateGnssBoardUnicore **)(param_4 + 0x10);
        if (((byte)FVar4 & 1) == 0) {
          pFVar3 = param_4 + 1;
          uVar2 = (ulong)((byte)FVar4 >> 1);
        }
        FUN_006b7474(pFVar1,pFVar3,uVar2);
      }
    }
    uVar5 = 9;
  }
  else {
    *(undefined4 *)(this + 0x204) = 0;
    if (((byte)this[0x208] & 1) == 0) {
      *(undefined2 *)(this + 0x208) = 0;
      uVar5 = 8;
    }
    else {
      uVar5 = 8;
      **(undefined1 **)(this + 0x218) = 0;
      *(undefined8 *)(this + 0x210) = 0;
    }
  }
  GoState(this,uVar5);
  return;
}

