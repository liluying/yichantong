/* Artifact: libyctdevice.so | Address: 0074df44 | Ghidra static pseudocode; types require review. */

/* gnss::GnssCoordConvert::~GnssCoordConvert() */

void __thiscall gnss::GnssCoordConvert::~GnssCoordConvert(GnssCoordConvert *this)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(this + 0x58);
  *(undefined8 *)(this + 0x58) = 0;
  if (pvVar1 != (void *)0x0) {
    operator_delete(pvVar1);
  }
  pvVar1 = *(void **)(this + 0x10);
  *(undefined8 *)(this + 0x10) = 0;
  if (pvVar1 != (void *)0x0) {
    operator_delete(pvVar1);
    return;
  }
  return;
}

