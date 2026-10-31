/* Artifact: libyctdevice.so | Address: 0073018c | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::TransmitNextBlock() */

void __thiscall FmwUpdateGnssBoardBeiyun::TransmitNextBlock(FmwUpdateGnssBoardBeiyun *this)

{
  ulong uVar1;
  long lVar2;
  ulong uVar3;
  void *__dest;
  ulong uVar4;
  long lVar5;
  ulong local_70;
  ulong local_68;
  void *local_60;
  long local_58;
  
  lVar2 = tpidr_el0;
  local_58 = *(long *)(lVar2 + 0x28);
  lVar5 = *(long *)(this + 0x338);
  uVar4 = *(ulong *)(this + 0x350);
  uVar3 = *(long *)(this + 0x340) - lVar5;
  uVar1 = uVar3 - uVar4;
  if (uVar4 <= uVar3 && uVar1 != 0) {
    uVar3 = uVar1;
    if (0x1ff < uVar1) {
      uVar3 = 0x200;
    }
    if (uVar1 < 0x17) {
      __dest = (void *)((ulong)&local_70 | 1);
      local_70 = CONCAT71(local_70._1_7_,(char)((int)uVar3 << 1));
    }
    else {
      __dest = operator_new((uVar3 | 0xf) + 1);
      local_70 = (uVar3 | 0xf) + 2;
      local_68 = uVar3;
      local_60 = __dest;
    }
    memmove(__dest,(void *)(lVar5 + uVar4),uVar3);
    *(undefined1 *)((long)__dest + uVar3) = 0;
    *(ulong *)(this + 0x350) = uVar4 + uVar3;
                    /* try { // try from 00730234 to 0073023b has its CatchHandler @ 00730278 */
    IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,(basic_string *)&local_70);
    if ((local_70 & 1) != 0) {
      operator_delete(local_60);
    }
  }
  if (*(long *)(lVar2 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

