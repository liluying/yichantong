/* Artifact: libyctdevice.so | Address: 0070bd8c | Ghidra static pseudocode; types require review. */

/* std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >
   std::__ndk1::regex_traits<char>::transform<char*>(char*, char*) const */

void std::__ndk1::regex_traits<char>::transform<char*>(char *param_1,char *param_2)

{
  long lVar1;
  char *in_x2;
  ulong uVar2;
  undefined1 *puVar3;
  ulong local_70;
  ulong local_68;
  undefined1 *local_60;
  long local_58;
  
  lVar1 = tpidr_el0;
  uVar2 = (long)in_x2 - (long)param_2;
  local_58 = *(long *)(lVar1 + 0x28);
  if (uVar2 < 0xfffffffffffffff0) {
    if (uVar2 < 0x17) {
      puVar3 = (undefined1 *)((ulong)&local_70 | 1);
      local_70 = CONCAT71(local_70._1_7_,(char)((int)uVar2 << 1));
    }
    else {
      puVar3 = (undefined1 *)operator_new((uVar2 | 0xf) + 1);
      local_70 = (uVar2 | 0xf) + 2;
      local_68 = uVar2;
      local_60 = puVar3;
    }
    if (param_2 != in_x2) {
      memcpy(puVar3,param_2,uVar2);
      puVar3 = puVar3 + uVar2;
    }
    *puVar3 = 0;
    uVar2 = local_70 >> 1 & 0x7f;
    puVar3 = (undefined1 *)((ulong)&local_70 | 1);
    if ((local_70 & 1) != 0) {
      uVar2 = local_68;
      puVar3 = local_60;
    }
                    /* try { // try from 0070be5c to 0070be67 has its CatchHandler @ 0070bebc */
    (**(code **)(**(long **)(param_1 + 0x10) + 0x20))
              (*(long **)(param_1 + 0x10),puVar3,puVar3 + uVar2);
    if ((local_70 & 1) != 0) {
      operator_delete(local_60);
    }
    if (*(long *)(lVar1 + 0x28) == local_58) {
      return;
    }
  }
  else if (*(long *)(lVar1 + 0x28) == local_58) {
                    /* WARNING: Subroutine does not return */
    FUN_006a3c28(&local_70);
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

