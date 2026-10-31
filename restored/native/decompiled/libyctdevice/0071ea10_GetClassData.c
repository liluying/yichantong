/* Artifact: libyctdevice.so | Address: 0071ea10 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::GetClassData() const */

void protocol::yct_device::GnssInfoReq::GetClassData(void)

{
  Hint_Prefetch(PTR__class_data__00d71a80,0,0,0);
  Hint_Prefetch(*(undefined8 *)(PTR__class_data__00d71a80 + 8),0,0,0);
  return;
}

