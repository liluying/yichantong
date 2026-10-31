/* Artifact: libyctdevice.so | Address: 006d0f24 | Ghidra static pseudocode; types require review. */

/* GnssInfo::~GnssInfo() */

void __thiscall GnssInfo::~GnssInfo(GnssInfo *this)

{
  GnssInfo GVar1;
  
  if (((byte)this[0x60] & 1) == 0) {
    GVar1 = this[0x48];
  }
  else {
    operator_delete(*(void **)(this + 0x70));
    GVar1 = this[0x48];
  }
  if (((byte)GVar1 & 1) == 0) {
    GVar1 = this[0x30];
  }
  else {
    operator_delete(*(void **)(this + 0x58));
    GVar1 = this[0x30];
  }
  if (((byte)GVar1 & 1) == 0) {
    GVar1 = this[0x18];
  }
  else {
    operator_delete(*(void **)(this + 0x40));
    GVar1 = this[0x18];
  }
  if (((byte)GVar1 & 1) == 0) {
    GVar1 = *this;
  }
  else {
    operator_delete(*(void **)(this + 0x28));
    GVar1 = *this;
  }
  if (((byte)GVar1 & 1) == 0) {
    return;
  }
  operator_delete(*(void **)(this + 0x10));
  return;
}

