/* Artifact: libyctdevice.so | Address: 0071f4c4 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::CopyFrom(protocol::yct_device::GnssInfoRep const&) */

void __thiscall protocol::yct_device::GnssInfoRep::CopyFrom(GnssInfoRep *this,GnssInfoRep *param_1)

{
  byte *pbVar1;
  ulong uVar2;
  
  if (param_1 != this) {
    Clear(this);
    pbVar1 = (byte *)(*(ulong *)(param_1 + 0x10) & 0xfffffffffffffffc);
    uVar2 = (ulong)(*pbVar1 >> 1);
    if ((*pbVar1 & 1) != 0) {
      uVar2 = *(ulong *)(pbVar1 + 8);
    }
    if (uVar2 != 0) {
      uVar2 = *(ulong *)(this + 8);
      if ((uVar2 & 1) != 0) {
        uVar2 = *(ulong *)(uVar2 & 0xfffffffffffffffe);
      }
      FUN_0078d4b4(this + 0x10,pbVar1,uVar2);
    }
    if (*(long *)(param_1 + 0x18) != 0) {
      *(long *)(this + 0x18) = *(long *)(param_1 + 0x18);
    }
    if (*(int *)(param_1 + 0x20) != 0) {
      *(int *)(this + 0x20) = *(int *)(param_1 + 0x20);
    }
    if ((*(ulong *)(param_1 + 8) & 1) != 0) {
      FUN_00842ae0(this + 8,(*(ulong *)(param_1 + 8) & 0xfffffffffffffffe) + 8);
      return;
    }
  }
  return;
}

