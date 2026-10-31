/* Artifact: libyctdevice.so | Address: 00c68aa4 | Ghidra static pseudocode; types require review. */

/* std::__ndk1::collate<char>::do_transform(char const*, char const*) const */

char * std::__ndk1::collate<char>::do_transform(char *param_1,char *param_2)

{
  char *in_x2;
  long *in_x8;
  char *__dest;
  ulong __n;
  
  __n = (long)in_x2 - (long)param_2;
  if (__n < 0xfffffffffffffff0) {
    if (__n < 0x17) {
      __dest = (char *)((long)in_x8 + 1);
      *(char *)in_x8 = (char)((int)__n << 1);
    }
    else {
      __dest = (char *)operator_new((__n | 0xf) + 1);
      in_x8[1] = __n;
      in_x8[2] = (long)__dest;
      *in_x8 = (__n | 0xf) + 2;
      param_1 = __dest;
    }
    if (param_2 != in_x2) {
      param_1 = (char *)memcpy(__dest,param_2,__n);
      __dest = __dest + __n;
    }
    *__dest = '\0';
    return param_1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_006a3c28();
}

