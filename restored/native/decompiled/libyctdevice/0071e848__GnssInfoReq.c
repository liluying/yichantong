/* Artifact: libyctdevice.so | Address: 0071e848 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::~GnssInfoReq() */

void __thiscall protocol::yct_device::GnssInfoReq::~GnssInfoReq(GnssInfoReq *this)

{
  ~GnssInfoReq(this);
  operator_delete(this);
  return;
}

