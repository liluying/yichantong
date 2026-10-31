/* Artifact: libyctdevice.so | Address: 0071e7f4 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::~GnssInfoReq() */

void __thiscall protocol::yct_device::GnssInfoReq::~GnssInfoReq(GnssInfoReq *this)

{
  if (((byte)this[8] & 1) != 0) {
                    /* try { // try from 0071e80c to 0071e837 has its CatchHandler @ 0071e844 */
    FUN_00842b18();
  }
  FUN_0078d7a4(this + 0x10);
  FUN_0078d7a4(this + 0x18);
  FUN_0078d7a4(this + 0x20);
  FUN_0078d7a4(this + 0x28);
  FUN_0078d7a4(this + 0x30);
  return;
}

