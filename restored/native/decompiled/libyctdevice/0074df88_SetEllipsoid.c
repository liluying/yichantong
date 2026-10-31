/* Artifact: libyctdevice.so | Address: 0074df88 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::SetEllipsoid(gnss::EllipsoidType) */

void __thiscall gnss::GnssCoordConvert::SetEllipsoid(GnssCoordConvert *this,int param_2)

{
  long lVar1;
  
  if (param_2 - 2U < 3) {
    lVar1 = (ulong)(param_2 - 2U) * 8;
    SetEllipsoid(this,*(double *)(&DAT_00437fe8 + lVar1),*(double *)(&DAT_00438000 + lVar1));
    return;
  }
  SetEllipsoid(this,DAT_00398418,DAT_00398240);
  return;
}

