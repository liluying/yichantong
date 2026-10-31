/* Artifact: libyctdevice.so | Address: 00734e1c | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::Crc16Ccitt(unsigned char const*, unsigned long) */

uint FmwUpdateGnssBoardUnicore::Crc16Ccitt(uchar *param_1,ulong param_2)

{
  uint uVar1;
  
  if (param_2 != 0) {
    uVar1 = 0;
    do {
      param_2 = param_2 - 1;
      uVar1 = (uint)*(ushort *)(&DAT_004378ca + (ulong)((uint)*param_1 ^ (uVar1 & 0xff00) >> 8) * 2)
              ^ uVar1 << 8;
      param_1 = param_1 + 1;
    } while (param_2 != 0);
    return uVar1;
  }
  return 0;
}

