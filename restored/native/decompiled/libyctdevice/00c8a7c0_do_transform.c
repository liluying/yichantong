/* Artifact: libyctdevice.so | Address: 00c8a7c0 | Ghidra static pseudocode; types require review. */

/* std::__ndk1::collate_byname<char>::do_transform(char const*, char const*) const */

void std::__ndk1::collate_byname<char>::do_transform(char *param_1,char *param_2)

{
  size_t __n;
  char *in_x2;
  ulong *in_x8;
  ulong uVar1;
  byte *pbVar2;
  char *pcVar3;
  ulong local_58;
  ulong local_50;
  char *local_48;
  
  uVar1 = (long)in_x2 - (long)param_2;
  if (0xffffffffffffffef < uVar1) {
                    /* WARNING: Subroutine does not return */
    FUN_006a3c28(&local_58);
  }
  if (uVar1 < 0x17) {
    pcVar3 = (char *)((ulong)&local_58 | 1);
    local_58 = CONCAT71(local_58._1_7_,(char)((int)uVar1 << 1));
  }
  else {
    pcVar3 = (char *)operator_new((uVar1 | 0xf) + 1);
    local_58 = (uVar1 | 0xf) + 2;
    local_50 = uVar1;
    local_48 = pcVar3;
  }
  if (param_2 != in_x2) {
    memcpy(pcVar3,param_2,uVar1);
    pcVar3 = pcVar3 + uVar1;
  }
  *pcVar3 = '\0';
  pcVar3 = (char *)((ulong)&local_58 | 1);
  if ((local_58 & 1) != 0) {
    pcVar3 = local_48;
  }
                    /* try { // try from 00c8a874 to 00c8a8b7 has its CatchHandler @ 00c8a97c */
  __n = strxfrm_l((char *)0x0,pcVar3,0,*(__locale_t *)(param_1 + 0x10));
  if (0xffffffffffffffef < __n) {
                    /* try { // try from 00c8a944 to 00c8a94b has its CatchHandler @ 00c8a97c */
                    /* WARNING: Subroutine does not return */
    FUN_006a3c28();
  }
  if (__n < 0x17) {
    pbVar2 = (byte *)((long)in_x8 + 1);
    *(byte *)in_x8 = (byte)((int)__n << 1);
    if (__n == 0) goto LAB_00c8a8d8;
  }
  else {
    uVar1 = (__n | 0xf) + 1;
    pbVar2 = (byte *)operator_new(uVar1);
    in_x8[1] = __n;
    in_x8[2] = (ulong)pbVar2;
    *in_x8 = uVar1 | 1;
  }
  memset(pbVar2,0,__n);
LAB_00c8a8d8:
  pbVar2[__n] = 0;
  uVar1 = in_x8[1];
  pbVar2 = (byte *)in_x8[2];
  pcVar3 = (char *)((ulong)&local_58 | 1);
  if ((local_58 & 1) != 0) {
    pcVar3 = local_48;
  }
  if (((byte)*in_x8 & 1) == 0) {
    pbVar2 = (byte *)((long)in_x8 + 1);
    uVar1 = (ulong)(byte)((byte)*in_x8 >> 1);
  }
                    /* try { // try from 00c8a908 to 00c8a90f has its CatchHandler @ 00c8a94c */
  strxfrm_l((char *)pbVar2,pcVar3,uVar1 + 1,*(__locale_t *)(param_1 + 0x10));
  if ((local_58 & 1) != 0) {
    operator_delete(local_48);
  }
  return;
}

