/* Artifact: libyctdevice.so | Address: 0074e390 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::GetSemiMinorAxis() const */

undefined1  [16] __thiscall gnss::GnssCoordConvert::GetSemiMinorAxis(GnssCoordConvert *this)

{
  undefined1 auVar1 [16];
  
  auVar1._0_8_ = *(double *)this * (1.0 - *(double *)(this + 8));
  auVar1._8_8_ = 0;
  return auVar1;
}

