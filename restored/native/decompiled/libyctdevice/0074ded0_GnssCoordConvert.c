/* Artifact: libyctdevice.so | Address: 0074ded0 | Ghidra static pseudocode; types require review. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* gnss::GnssCoordConvert::GnssCoordConvert() */

void __thiscall gnss::GnssCoordConvert::GnssCoordConvert(GnssCoordConvert *this)

{
  undefined8 uVar1;
  Geocentric *this_00;
  
  uVar1 = _DAT_00397000;
  *(undefined8 *)(this + 8) = _UNK_00397008;
  *(undefined8 *)this = uVar1;
  this_00 = (Geocentric *)operator_new(0x38);
                    /* try { // try from 0074def8 to 0074df0b has its CatchHandler @ 0074df30 */
  GeographicLib::Geocentric::Geocentric(this_00,DAT_00398418,DAT_00398240);
  *(Geocentric **)(this + 0x10) = this_00;
  this[0x18] = (GnssCoordConvert)0x0;
  this[0x50] = (GnssCoordConvert)0x0;
  *(undefined8 *)(this + 0x60) = 0;
  *(undefined8 *)(this + 0x58) = 0;
  *(undefined8 *)(this + 0x70) = 0;
  *(undefined8 *)(this + 0x68) = 0;
  return;
}

