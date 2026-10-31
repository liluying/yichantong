/* Artifact: libyctdevice.so | Address: 0071f0ac | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::GetMetadata() const */

void protocol::yct_device::GnssInfoReq::GetMetadata(void)

{
  Hint_Prefetch(PTR__class_data__00d71a80,0,0,0);
  Hint_Prefetch(*(undefined8 *)(PTR__class_data__00d71a80 + 8),0,0,0);
  FUN_0084323c(*(undefined8 *)(PTR__class_data__00d71a80 + 8));
  return;
}

