/* Artifact: libyctdevice.so | Address: 0071e6f4 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::GnssInfoReq(google::protobuf::Arena*,
   protocol::yct_device::GnssInfoReq const&) */

void __thiscall
protocol::yct_device::GnssInfoReq::GnssInfoReq
          (GnssInfoReq *this,Arena *param_1,GnssInfoReq *param_2)

{
  ulong uVar1;
  
  *(Arena **)(this + 8) = param_1;
  uVar1 = *(ulong *)(param_2 + 8);
  *(undefined **)this = PTR_vtable_00d71a78 + 0x10;
  if ((uVar1 & 1) != 0) {
    FUN_00842ae0(this + 8,(uVar1 & 0xfffffffffffffffe) + 8);
  }
  uVar1 = *(ulong *)(param_2 + 0x10);
  if ((uVar1 & 3) != 0) {
    uVar1 = FUN_0078d1c8(param_2 + 0x10,param_1);
  }
  *(ulong *)(this + 0x10) = uVar1;
  uVar1 = *(ulong *)(param_2 + 0x18);
  if ((uVar1 & 3) != 0) {
    uVar1 = FUN_0078d1c8(param_2 + 0x18,param_1);
  }
  *(ulong *)(this + 0x18) = uVar1;
  uVar1 = *(ulong *)(param_2 + 0x20);
  if ((uVar1 & 3) != 0) {
    uVar1 = FUN_0078d1c8(param_2 + 0x20,param_1);
  }
  *(ulong *)(this + 0x20) = uVar1;
  uVar1 = *(ulong *)(param_2 + 0x28);
  if ((uVar1 & 3) != 0) {
    uVar1 = FUN_0078d1c8(param_2 + 0x28,param_1);
  }
  *(ulong *)(this + 0x28) = uVar1;
  uVar1 = *(ulong *)(param_2 + 0x30);
  if ((uVar1 & 3) != 0) {
    uVar1 = FUN_0078d1c8(param_2 + 0x30,param_1);
  }
  *(ulong *)(this + 0x30) = uVar1;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined8 *)(this + 0x38) = *(undefined8 *)(param_2 + 0x38);
  return;
}

