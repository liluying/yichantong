/* Artifact: libyctdevice.so | Address: 0071f170 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::~GnssInfoRep() */

void __thiscall protocol::yct_device::GnssInfoRep::~GnssInfoRep(GnssInfoRep *this)

{
  if (((byte)this[8] & 1) != 0) {
                    /* try { // try from 0071f188 to 0071f193 has its CatchHandler @ 0071f1a0 */
    FUN_00842b18();
  }
  FUN_0078d7a4(this + 0x10);
  return;
}

