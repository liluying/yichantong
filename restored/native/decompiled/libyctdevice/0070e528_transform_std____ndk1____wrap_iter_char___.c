/* Artifact: libyctdevice.so | Address: 0070e528 | Ghidra static pseudocode; types require review. */

/* std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >
   std::__ndk1::regex_traits<char>::transform<std::__ndk1::__wrap_iter<char*>
   >(std::__ndk1::__wrap_iter<char*>, std::__ndk1::__wrap_iter<char*>) const */

void std::__ndk1::regex_traits<char>::transform<std::__ndk1::__wrap_iter<char*>>
               (undefined8 param_1,long param_2,undefined1 *param_3,undefined1 *param_4)

{
  long lVar1;
  undefined8 *puVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  ulong uVar6;
  undefined8 *puVar7;
  undefined8 *puVar8;
  ulong uVar9;
  ulong uVar10;
  undefined8 uVar11;
  undefined8 uVar12;
  undefined8 uVar13;
  ulong local_70;
  ulong local_68;
  undefined1 *local_60;
  long local_58;
  
  lVar1 = tpidr_el0;
  uVar10 = (long)param_4 - (long)param_3;
  local_58 = *(long *)(lVar1 + 0x28);
  if (0xffffffffffffffef < uVar10) {
    if (*(long *)(lVar1 + 0x28) == local_58) {
                    /* WARNING: Subroutine does not return */
      FUN_006a3c28(&local_70);
    }
    goto LAB_0070e6d8;
  }
  if (uVar10 < 0x17) {
    puVar3 = (undefined1 *)((ulong)&local_70 | 1);
    local_70 = CONCAT71(local_70._1_7_,(char)((int)uVar10 << 1));
  }
  else {
    puVar3 = (undefined1 *)operator_new((uVar10 | 0xf) + 1);
    local_70 = (uVar10 | 0xf) + 2;
    local_68 = uVar10;
    local_60 = puVar3;
  }
  if (param_3 != param_4) {
    puVar4 = puVar3;
    if ((0x1f < uVar10) && (0x1f < (ulong)((long)puVar3 - (long)param_3))) {
      uVar6 = uVar10 & 0xffffffffffffffe0;
      puVar7 = (undefined8 *)(param_3 + 0x10);
      puVar8 = (undefined8 *)(puVar3 + 0x10);
      puVar3 = puVar3 + uVar6;
      uVar9 = uVar6;
      do {
        puVar2 = puVar7 + -1;
        uVar11 = puVar7[-2];
        uVar13 = puVar7[1];
        uVar12 = *puVar7;
        uVar9 = uVar9 - 0x20;
        puVar7 = puVar7 + 4;
        puVar8[-1] = *puVar2;
        puVar8[-2] = uVar11;
        puVar8[1] = uVar13;
        *puVar8 = uVar12;
        puVar8 = puVar8 + 4;
      } while (uVar9 != 0);
      puVar4 = puVar3;
      param_3 = param_3 + uVar6;
      if (uVar10 == uVar6) goto LAB_0070e620;
    }
    do {
      puVar5 = param_3 + 1;
      puVar3 = puVar4 + 1;
      *puVar4 = *param_3;
      puVar4 = puVar3;
      param_3 = puVar5;
    } while (puVar5 != param_4);
  }
LAB_0070e620:
  *puVar3 = 0;
  uVar10 = local_70 >> 1 & 0x7f;
  puVar3 = (undefined1 *)((ulong)&local_70 | 1);
  if ((local_70 & 1) != 0) {
    uVar10 = local_68;
    puVar3 = local_60;
  }
                    /* try { // try from 0070e650 to 0070e657 has its CatchHandler @ 0070e6ac */
  (**(code **)(**(long **)(param_2 + 0x10) + 0x20))
            (param_1,*(long **)(param_2 + 0x10),puVar3,puVar3 + uVar10);
  if ((local_70 & 1) != 0) {
    operator_delete(local_60);
  }
  if (*(long *)(lVar1 + 0x28) == local_58) {
    return;
  }
LAB_0070e6d8:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

