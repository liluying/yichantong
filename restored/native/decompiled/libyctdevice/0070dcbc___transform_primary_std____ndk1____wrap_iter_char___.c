/* Artifact: libyctdevice.so | Address: 0070dcbc | Ghidra static pseudocode; types require review. */

/* std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >
   std::__ndk1::regex_traits<char>::__transform_primary<std::__ndk1::__wrap_iter<char*>
   >(std::__ndk1::__wrap_iter<char*>, std::__ndk1::__wrap_iter<char*>, char) const */

void __thiscall
std::__ndk1::regex_traits<char>::__transform_primary<std::__ndk1::__wrap_iter<char*>>
          (byte *param_1,regex_traits<char> *this,undefined1 *param_3,undefined1 *param_4)

{
  byte bVar1;
  long lVar2;
  undefined8 *puVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  undefined1 *puVar6;
  byte *pbVar7;
  ulong uVar8;
  undefined8 *puVar9;
  undefined8 *puVar10;
  ulong uVar11;
  ulong uVar12;
  undefined8 uVar13;
  undefined8 uVar14;
  undefined8 uVar15;
  ulong local_70;
  ulong local_68;
  undefined1 *local_60;
  long local_58;
  
  lVar2 = tpidr_el0;
  uVar12 = (long)param_4 - (long)param_3;
  local_58 = *(long *)(lVar2 + 0x28);
  if (0xffffffffffffffef < uVar12) {
    if (*(long *)(lVar2 + 0x28) == local_58) {
                    /* WARNING: Subroutine does not return */
      FUN_006a3c28(&local_70);
    }
    goto LAB_0070ded0;
  }
  if (uVar12 < 0x17) {
    puVar4 = (undefined1 *)((ulong)&local_70 | 1);
    local_70 = CONCAT71(local_70._1_7_,(char)((int)uVar12 << 1));
  }
  else {
    puVar4 = (undefined1 *)operator_new((uVar12 | 0xf) + 1);
    local_70 = (uVar12 | 0xf) + 2;
    local_68 = uVar12;
    local_60 = puVar4;
  }
  if (param_3 != param_4) {
    puVar5 = puVar4;
    if ((0x1f < uVar12) && (0x1f < (ulong)((long)puVar4 - (long)param_3))) {
      uVar8 = uVar12 & 0xffffffffffffffe0;
      puVar9 = (undefined8 *)(param_3 + 0x10);
      puVar10 = (undefined8 *)(puVar4 + 0x10);
      puVar4 = puVar4 + uVar8;
      uVar11 = uVar8;
      do {
        puVar3 = puVar9 + -1;
        uVar13 = puVar9[-2];
        uVar15 = puVar9[1];
        uVar14 = *puVar9;
        uVar11 = uVar11 - 0x20;
        puVar9 = puVar9 + 4;
        puVar10[-1] = *puVar3;
        puVar10[-2] = uVar13;
        puVar10[1] = uVar15;
        *puVar10 = uVar14;
        puVar10 = puVar10 + 4;
      } while (uVar11 != 0);
      puVar5 = puVar4;
      param_3 = param_3 + uVar8;
      if (uVar12 == uVar8) goto LAB_0070ddb0;
    }
    do {
      puVar6 = param_3 + 1;
      puVar4 = puVar5 + 1;
      *puVar5 = *param_3;
      puVar5 = puVar4;
      param_3 = puVar6;
    } while (puVar6 != param_4);
  }
LAB_0070ddb0:
  *puVar4 = 0;
  uVar12 = local_70 >> 1 & 0x7f;
  puVar4 = (undefined1 *)((ulong)&local_70 | 1);
  if ((local_70 & 1) != 0) {
    uVar12 = local_68;
    puVar4 = local_60;
  }
                    /* try { // try from 0070dde0 to 0070ddeb has its CatchHandler @ 0070dea4 */
  (**(code **)(**(long **)(this + 0x10) + 0x20))
            (param_1,*(long **)(this + 0x10),puVar4,puVar4 + uVar12);
  bVar1 = *param_1;
  uVar12 = (ulong)(bVar1 >> 1);
  if ((bVar1 & 1) != 0) {
    uVar12 = *(ulong *)(param_1 + 8);
  }
  if (uVar12 != 1) {
    if (uVar12 == 0xc) {
      pbVar7 = *(byte **)(param_1 + 0x10);
      if ((bVar1 & 1) == 0) {
        pbVar7 = param_1 + 1;
      }
      pbVar7[0xb] = pbVar7[3];
    }
    else if ((bVar1 & 1) == 0) {
      param_1[0] = 0;
      param_1[1] = 0;
    }
    else {
      **(undefined1 **)(param_1 + 0x10) = 0;
      param_1[8] = 0;
      param_1[9] = 0;
      param_1[10] = 0;
      param_1[0xb] = 0;
      param_1[0xc] = 0;
      param_1[0xd] = 0;
      param_1[0xe] = 0;
      param_1[0xf] = 0;
    }
  }
  if ((local_70 & 1) != 0) {
    operator_delete(local_60);
  }
  if (*(long *)(lVar2 + 0x28) == local_58) {
    return;
  }
LAB_0070ded0:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

