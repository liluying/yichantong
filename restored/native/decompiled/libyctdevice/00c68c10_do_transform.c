/* Artifact: libyctdevice.so | Address: 00c68c10 | Ghidra static pseudocode; types require review. */

/* std::__ndk1::collate<wchar_t>::do_transform(wchar_t const*, wchar_t const*) const */

wchar_t * std::__ndk1::collate<wchar_t>::do_transform(wchar_t *param_1,wchar_t *param_2)

{
  size_t __n;
  wchar_t *in_x2;
  byte *in_x8;
  wchar_t *__dest;
  ulong uVar1;
  ulong uVar2;
  
  uVar1 = (long)in_x2 - (long)param_2;
  uVar2 = (long)uVar1 >> 2;
  if (uVar2 < 0x3ffffffffffffff0) {
    if (uVar2 < 5) {
      __dest = (wchar_t *)(in_x8 + 4);
      *in_x8 = (byte)(uVar1 >> 1) & 0xfe;
    }
    else {
      __dest = (wchar_t *)operator_new((uVar2 | 3) * 4 + 4);
      *(ulong *)(in_x8 + 8) = uVar2;
      *(wchar_t **)(in_x8 + 0x10) = __dest;
      *(ulong *)in_x8 = (uVar2 | 3) + 2;
      param_1 = __dest;
    }
    if (param_2 != in_x2) {
      __n = (uVar1 - 4 & 0xfffffffffffffffc) + 4;
      param_1 = (wchar_t *)memcpy(__dest,param_2,__n);
      __dest = (wchar_t *)((long)__dest + __n);
    }
    *__dest = L'\0';
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_0077fa44();
}

