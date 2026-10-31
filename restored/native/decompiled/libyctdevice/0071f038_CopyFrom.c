/* Artifact: libyctdevice.so | Address: 0071f038 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::CopyFrom(protocol::yct_device::GnssInfoReq const&) */

void __thiscall protocol::yct_device::GnssInfoReq::CopyFrom(GnssInfoReq *this,GnssInfoReq *param_1)

{
  if (param_1 != this) {
    Clear(this);
    MergeImpl((MessageLite *)this,(MessageLite *)param_1);
    return;
  }
  return;
}

