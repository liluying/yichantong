/* Artifact: libyctdevice.so | Address: 00736810 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::XmodemSendEot() */

void __thiscall FmwUpdateGnssBoardUnicore::XmodemSendEot(FmwUpdateGnssBoardUnicore *this)

{
  long lVar1;
  ushort local_40;
  undefined1 local_3e;
  void *local_30;
  long local_28;
  
  lVar1 = tpidr_el0;
  local_28 = *(long *)(lVar1 + 0x28);
  local_40 = 0x402;
  local_3e = 0;
                    /* try { // try from 0073683c to 00736843 has its CatchHandler @ 0073687c */
  IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,(basic_string *)&local_40);
  *(undefined4 *)(this + 0x1d8) = 0;
  *(undefined4 *)(this + 0x1b4) = 0;
  if ((local_40 & 1) != 0) {
    operator_delete(local_30);
  }
  if (*(long *)(lVar1 + 0x28) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

