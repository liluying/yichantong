/* Artifact: libyctdevice.so | Address: 0071f0e8 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::GnssInfoRep(google::protobuf::Arena*,
   protocol::yct_device::GnssInfoRep const&) */

void __thiscall
protocol::yct_device::GnssInfoRep::GnssInfoRep
          (GnssInfoRep *this,Arena *param_1,GnssInfoRep *param_2)

{
  ulong uVar1;
  undefined8 uVar2;
  
  *(Arena **)(this + 8) = param_1;
  uVar1 = *(ulong *)(param_2 + 8);
  *(undefined **)this = PTR_vtable_00d71430 + 0x10;
  if ((uVar1 & 1) != 0) {
    FUN_00842ae0(this + 8,(uVar1 & 0xfffffffffffffffe) + 8);
  }
  uVar1 = *(ulong *)(param_2 + 0x10);
  if ((uVar1 & 3) != 0) {
    uVar1 = FUN_0078d1c8(param_2 + 0x10,param_1);
  }
  *(ulong *)(this + 0x10) = uVar1;
  *(undefined4 *)(this + 0x24) = 0;
  uVar2 = *(undefined8 *)(param_2 + 0x18);
  *(undefined4 *)(this + 0x20) = *(undefined4 *)(param_2 + 0x20);
  *(undefined8 *)(this + 0x18) = uVar2;
  return;
}

