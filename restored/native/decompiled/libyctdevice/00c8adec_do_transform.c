/* Artifact: libyctdevice.so | Address: 00c8adec | Ghidra static pseudocode; types require review. */

/* std::__ndk1::collate_byname<wchar_t>::do_transform(wchar_t const*, wchar_t const*) const */

void std::__ndk1::collate_byname<wchar_t>::do_transform(wchar_t *param_1,wchar_t *param_2)

{
  wchar_t *__s1;
  size_t sVar1;
  wchar_t *in_x2;
  ulong *in_x8;
  wchar_t *pwVar2;
  byte *pbVar3;
  ulong uVar4;
  ulong uVar5;
  ulong local_68;
  ulong local_60;
  wchar_t *local_58;
  
  uVar4 = (long)in_x2 - (long)param_2;
  uVar5 = (long)uVar4 >> 2;
  if (0x3fffffffffffffef < uVar5) {
                    /* WARNING: Subroutine does not return */
    FUN_0077fa44(&local_68);
  }
  if (uVar5 < 5) {
    pwVar2 = (wchar_t *)((ulong)&local_68 | 4);
    local_68 = CONCAT71(local_68._1_7_,(char)(uVar4 >> 1)) & 0xfffffffffffffffe;
  }
  else {
    pwVar2 = (wchar_t *)operator_new((uVar5 | 3) * 4 + 4);
    local_68 = (uVar5 | 3) + 2;
    local_60 = uVar5;
    local_58 = pwVar2;
  }
  if (param_2 != in_x2) {
    sVar1 = (uVar4 - 4 & 0xfffffffffffffffc) + 4;
    memcpy(pwVar2,param_2,sVar1);
    pwVar2 = (wchar_t *)((long)pwVar2 + sVar1);
  }
  *pwVar2 = L'\0';
  pwVar2 = (wchar_t *)((ulong)&local_68 | 4);
  if ((local_68 & 1) != 0) {
    pwVar2 = local_58;
  }
                    /* try { // try from 00c8aec4 to 00c8af13 has its CatchHandler @ 00c8afe4 */
  sVar1 = wcsxfrm_l((wchar_t *)0x0,pwVar2,0,*(__locale_t *)(param_1 + 4));
  if (0x3fffffffffffffef < sVar1) {
                    /* try { // try from 00c8afa8 to 00c8afb3 has its CatchHandler @ 00c8afe4 */
                    /* WARNING: Subroutine does not return */
    FUN_0077fa44();
  }
  if (sVar1 < 5) {
    pbVar3 = (byte *)((long)in_x8 + 4);
    *(byte *)in_x8 = (byte)((int)sVar1 << 1);
    if (sVar1 == 0) goto LAB_00c8af34;
  }
  else {
    if (0x3ffffffffffffffe < (sVar1 | 3)) {
                    /* WARNING: Subroutine does not return */
      FUN_006a3cbc();
    }
    uVar4 = (sVar1 | 3) + 1;
    pbVar3 = (byte *)operator_new(uVar4 * 4);
    in_x8[1] = sVar1;
    in_x8[2] = (ulong)pbVar3;
    *in_x8 = uVar4 | 1;
  }
  memset(pbVar3,0,sVar1 << 2);
LAB_00c8af34:
  pbVar3 = pbVar3 + sVar1 * 4;
  pbVar3[0] = 0;
  pbVar3[1] = 0;
  pbVar3[2] = 0;
  pbVar3[3] = 0;
  pwVar2 = (wchar_t *)((ulong)&local_68 | 4);
  if ((local_68 & 1) != 0) {
    pwVar2 = local_58;
  }
  uVar4 = (ulong)(byte)((byte)*in_x8 >> 1);
  __s1 = (wchar_t *)((long)in_x8 + 4);
  if (((byte)*in_x8 & 1) != 0) {
    uVar4 = in_x8[1];
    __s1 = (wchar_t *)in_x8[2];
  }
                    /* try { // try from 00c8af68 to 00c8af6f has its CatchHandler @ 00c8afb4 */
  wcsxfrm_l(__s1,pwVar2,uVar4 + 1,*(__locale_t *)(param_1 + 4));
  if ((local_68 & 1) != 0) {
    operator_delete(local_58);
  }
  return;
}

