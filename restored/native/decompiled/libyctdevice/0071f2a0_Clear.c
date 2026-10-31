/* Artifact: libyctdevice.so | Address: 0071f2a0 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::Clear() */

void __thiscall protocol::yct_device::GnssInfoRep::Clear(GnssInfoRep *this)

{
  FUN_0078d7f0(this + 0x10);
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined8 *)(this + 0x18) = 0;
  if (((byte)this[8] & 1) == 0) {
    return;
  }
  FUN_00842a84(this + 8);
  return;
}

