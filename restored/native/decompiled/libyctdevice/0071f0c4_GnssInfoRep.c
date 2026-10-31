/* Artifact: libyctdevice.so | Address: 0071f0c4 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::GnssInfoRep(google::protobuf::Arena*) */

void __thiscall protocol::yct_device::GnssInfoRep::GnssInfoRep(GnssInfoRep *this,Arena *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  
  puVar2 = PTR_DAT_00d71988;
  puVar1 = PTR_vtable_00d71430;
  *(undefined8 *)(this + 0x18) = 0;
  *(undefined8 *)(this + 0x20) = 0;
  *(undefined **)(this + 0x10) = puVar2;
  *(undefined **)this = puVar1 + 0x10;
  *(Arena **)(this + 8) = param_1;
  return;
}

