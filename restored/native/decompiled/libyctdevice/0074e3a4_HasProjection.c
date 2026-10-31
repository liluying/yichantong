/* Artifact: libyctdevice.so | Address: 0074e3a4 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::HasProjection() const */

bool __thiscall gnss::GnssCoordConvert::HasProjection(GnssCoordConvert *this)

{
  return *(long *)(this + 0x58) != 0;
}

