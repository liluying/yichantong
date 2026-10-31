/* Artifact: libyctdevice.so | Address: 0071f440 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::ByteSizeLong() const */

void __thiscall protocol::yct_device::GnssInfoRep::ByteSizeLong(GnssInfoRep *this)

{
  ulong uVar1;
  byte bVar2;
  long lVar3;
  
  bVar2 = *(byte *)(*(ulong *)(this + 0x10) & 0xfffffffffffffffc);
  uVar1 = (ulong)(bVar2 >> 1);
  if ((bVar2 & 1) != 0) {
    uVar1 = *(ulong *)((byte *)(*(ulong *)(this + 0x10) & 0xfffffffffffffffc) + 8);
  }
  if (uVar1 == 0) {
    lVar3 = 0;
  }
  else {
    lVar3 = uVar1 + ((int)LZCOUNT((int)uVar1) * -9 + 0x160U >> 6) + 1;
  }
  if (*(long *)(this + 0x18) != 0) {
    lVar3 = (ulong)((int)LZCOUNT(*(long *)(this + 0x18)) * -9 + 0x2c0U >> 6) + lVar3;
  }
  if (*(int *)(this + 0x20) != 0) {
    lVar3 = (ulong)((int)LZCOUNT((long)*(int *)(this + 0x20)) * -9 + 0x2c0U >> 6) + lVar3;
  }
  FUN_008433a8(this,lVar3,this + 0x24);
  return;
}

