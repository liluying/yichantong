/* Artifact: libyctdevice.so | Address: 0071f1a4 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::~GnssInfoRep() */

void __thiscall protocol::yct_device::GnssInfoRep::~GnssInfoRep(GnssInfoRep *this)

{
  ~GnssInfoRep(this);
  operator_delete(this);
  return;
}

