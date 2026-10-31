/* Artifact: libyctdevice.so | Address: 0071f25c | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::PlacementNew_(void const*, void*, google::protobuf::Arena*) */

void * protocol::yct_device::GnssInfoRep::PlacementNew_(void *param_1,void *param_2,Arena *param_3)

{
  GnssInfoRep((GnssInfoRep *)param_2,param_3);
  return param_2;
}

