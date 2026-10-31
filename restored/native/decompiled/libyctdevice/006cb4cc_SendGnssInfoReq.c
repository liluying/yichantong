/* Artifact: libyctdevice.so | Address: 006cb4cc | Ghidra static pseudocode; types require review. */

/* YctDevice::SendGnssInfoReq() */

void __thiscall YctDevice::SendGnssInfoReq(YctDevice *this)

{
  GnssInfoReq *this_00;
  long lVar1;
  undefined *puVar2;
  ulong uVar3;
  __shared_weak_count *p_Var4;
  long lVar5;
  GnssInfoReq *local_68;
  __shared_weak_count *p_Stack_60;
  GnssInfoReq *local_58;
  __shared_weak_count *local_50;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  if (((*(TcpClient **)(this + 0x80) != (TcpClient *)0x0) &&
      (uVar3 = TcpClient::IsConnected(*(TcpClient **)(this + 0x80)), (uVar3 & 1) != 0)) &&
     (this[0x668] != (YctDevice)0x0)) {
    p_Var4 = (__shared_weak_count *)operator_new(0x60);
    puVar2 = PTR_vtable_00d71370;
    this_00 = (GnssInfoReq *)(p_Var4 + 0x18);
    *(undefined8 *)(p_Var4 + 0x10) = 0;
    *(undefined8 *)(p_Var4 + 8) = 0;
    *(undefined **)p_Var4 = puVar2 + 0x10;
                    /* try { // try from 006cb538 to 006cb543 has its CatchHandler @ 006cb6a4 */
    protocol::yct_device::GnssInfoReq::GnssInfoReq(this_00,(Arena *)0x0);
    lVar5 = *(long *)(this + 0x390);
    uVar3 = *(ulong *)(p_Var4 + 0x20);
    *(long *)(p_Var4 + 0x50) = lVar5;
    *(long *)(this + 0x390) = lVar5 + 1;
    if ((uVar3 & 1) != 0) {
      uVar3 = *(ulong *)(uVar3 & 0xfffffffffffffffe);
    }
                    /* try { // try from 006cb560 to 006cb5bb has its CatchHandler @ 006cb6bc */
    local_58 = this_00;
    local_50 = p_Var4;
    FUN_0078d4b4(p_Var4 + 0x28,this + 0x5f0,uVar3);
    uVar3 = *(ulong *)(p_Var4 + 0x20);
    if ((uVar3 & 1) != 0) {
      uVar3 = *(ulong *)(uVar3 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(p_Var4 + 0x30,this + 0x608,uVar3);
    uVar3 = *(ulong *)(p_Var4 + 0x20);
    if ((uVar3 & 1) != 0) {
      uVar3 = *(ulong *)(uVar3 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(p_Var4 + 0x38,this + 0x620,uVar3);
    uVar3 = *(ulong *)(p_Var4 + 0x20);
    if ((uVar3 & 1) != 0) {
      uVar3 = *(ulong *)(uVar3 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(p_Var4 + 0x40,this + 0x638,uVar3);
    uVar3 = *(ulong *)(p_Var4 + 0x20);
    if ((uVar3 & 1) != 0) {
      uVar3 = *(ulong *)(uVar3 & 0xfffffffffffffffe);
    }
    FUN_0078d4b4(p_Var4 + 0x48,this + 0x650,uVar3);
    local_68 = this_00;
    p_Stack_60 = p_Var4;
    FUN_00cc2b80(1,p_Var4 + 8);
                    /* try { // try from 006cb5cc to 006cb5d7 has its CatchHandler @ 006cb694 */
    Send(this,&local_68);
    lVar5 = FUN_00cc2c10(0xffffffffffffffff,p_Var4 + 8);
    if (lVar5 == 0) {
      (**(code **)(*(long *)p_Var4 + 0x10))(p_Var4);
      std::__ndk1::__shared_weak_count::__release_weak(p_Var4);
    }
    p_Var4 = local_50;
    if ((local_50 != (__shared_weak_count *)0x0) &&
       (lVar5 = FUN_00cc2c10(0xffffffffffffffff,local_50 + 8), lVar5 == 0)) {
      (**(code **)(*(long *)p_Var4 + 0x10))(p_Var4);
      std::__ndk1::__shared_weak_count::__release_weak(p_Var4);
    }
  }
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

