/* Artifact: libyctdevice.so | Address: 0071e6c8 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::GnssInfoReq(google::protobuf::Arena*) */

void __thiscall protocol::yct_device::GnssInfoReq::GnssInfoReq(GnssInfoReq *this,Arena *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  
  puVar2 = PTR_vtable_00d71a78;
  puVar1 = PTR_DAT_00d71988;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined **)(this + 0x10) = puVar1;
  *(undefined **)(this + 0x18) = puVar1;
  *(undefined **)this = puVar2 + 0x10;
  *(Arena **)(this + 8) = param_1;
  *(undefined **)(this + 0x20) = puVar1;
  *(undefined **)(this + 0x28) = puVar1;
  *(undefined **)(this + 0x30) = puVar1;
  *(undefined8 *)(this + 0x38) = 0;
  return;
}

