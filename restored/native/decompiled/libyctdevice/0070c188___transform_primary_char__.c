/* Artifact: libyctdevice.so | Address: 0070c188 | Ghidra static pseudocode; types require review. */

/* std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >
   std::__ndk1::regex_traits<char>::__transform_primary<char*>(char*, char*, char) const */

void __thiscall
std::__ndk1::regex_traits<char>::__transform_primary<char*>
          (regex_traits<char> *this,char *param_1,char *param_2,char param_3)

{
  byte bVar1;
  long lVar2;
  byte *in_x8;
  byte *pbVar3;
  ulong uVar4;
  undefined1 *puVar5;
  ulong local_70;
  ulong local_68;
  undefined1 *local_60;
  long local_58;
  
  lVar2 = tpidr_el0;
  uVar4 = (long)param_2 - (long)param_1;
  local_58 = *(long *)(lVar2 + 0x28);
  if (uVar4 < 0xfffffffffffffff0) {
    if (uVar4 < 0x17) {
      puVar5 = (undefined1 *)((ulong)&local_70 | 1);
      local_70 = CONCAT71(local_70._1_7_,(char)((int)uVar4 << 1));
    }
    else {
      puVar5 = (undefined1 *)operator_new((uVar4 | 0xf) + 1);
      local_70 = (uVar4 | 0xf) + 2;
      local_68 = uVar4;
      local_60 = puVar5;
    }
    if (param_1 != param_2) {
      memcpy(puVar5,param_1,uVar4);
      puVar5 = puVar5 + uVar4;
    }
    *puVar5 = 0;
    uVar4 = local_70 >> 1 & 0x7f;
    puVar5 = (undefined1 *)((ulong)&local_70 | 1);
    if ((local_70 & 1) != 0) {
      uVar4 = local_68;
      puVar5 = local_60;
    }
                    /* try { // try from 0070c258 to 0070c263 has its CatchHandler @ 0070c31c */
    (**(code **)(**(long **)(this + 0x10) + 0x20))(*(long **)(this + 0x10),puVar5,puVar5 + uVar4);
    bVar1 = *in_x8;
    uVar4 = (ulong)(bVar1 >> 1);
    if ((bVar1 & 1) != 0) {
      uVar4 = *(ulong *)(in_x8 + 8);
    }
    if (uVar4 != 1) {
      if (uVar4 == 0xc) {
        pbVar3 = *(byte **)(in_x8 + 0x10);
        if ((bVar1 & 1) == 0) {
          pbVar3 = in_x8 + 1;
        }
        pbVar3[0xb] = pbVar3[3];
      }
      else if ((bVar1 & 1) == 0) {
        in_x8[0] = 0;
        in_x8[1] = 0;
      }
      else {
        **(undefined1 **)(in_x8 + 0x10) = 0;
        in_x8[8] = 0;
        in_x8[9] = 0;
        in_x8[10] = 0;
        in_x8[0xb] = 0;
        in_x8[0xc] = 0;
        in_x8[0xd] = 0;
        in_x8[0xe] = 0;
        in_x8[0xf] = 0;
      }
    }
    if ((local_70 & 1) != 0) {
      operator_delete(local_60);
    }
    if (*(long *)(lVar2 + 0x28) == local_58) {
      return;
    }
  }
  else if (*(long *)(lVar2 + 0x28) == local_58) {
                    /* WARNING: Subroutine does not return */
    FUN_006a3c28(&local_70,param_1,param_2,param_3);
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

