/* Artifact: libyctdevice.so | Address: 0071ea28 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::Clear() */

void __thiscall protocol::yct_device::GnssInfoReq::Clear(GnssInfoReq *this)

{
  FUN_0078d7f0(this + 0x10);
  FUN_0078d7f0(this + 0x18);
  FUN_0078d7f0(this + 0x20);
  FUN_0078d7f0(this + 0x28);
  FUN_0078d7f0(this + 0x30);
  *(undefined8 *)(this + 0x38) = 0;
  if (((byte)this[8] & 1) == 0) {
    return;
  }
  FUN_00842a84(this + 8);
  return;
}

