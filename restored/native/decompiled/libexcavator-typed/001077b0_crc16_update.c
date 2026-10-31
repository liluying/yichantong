/* Artifact: libexcavator.so | Address: 001077b0 | Ghidra static pseudocode; types require review. */

/* WARNING: This is an inlined function */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ushort crc16_update(ushort crc,uchar *data,int size)

{
  uint uVar1;
  
  uVar1 = (uint)crc;
  if (size != 0) {
    do {
      size = size + -1;
      uVar1 = (uint)*(ushort *)
                     (&DAT_00108028 + (ulong)((uint)(*data >> 4) ^ (uVar1 & 0xf000) >> 0xc) * 2) ^
              uVar1 << 4;
      uVar1 = (uint)*(ushort *)(&DAT_00108028 + (ulong)(*data & 0xf ^ (uVar1 & 0xf000) >> 0xc) * 2)
              ^ uVar1 << 4;
      crc = (ushort)uVar1;
      data = data + 1;
    } while (size != 0);
  }
  return crc;
}

