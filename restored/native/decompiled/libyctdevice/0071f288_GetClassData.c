/* Artifact: libyctdevice.so | Address: 0071f288 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::GetClassData() const */

void protocol::yct_device::GnssInfoRep::GetClassData(void)

{
  Hint_Prefetch(PTR__class_data__00d71a88,0,0,0);
  Hint_Prefetch(*(undefined8 *)(PTR__class_data__00d71a88 + 8),0,0,0);
  return;
}

