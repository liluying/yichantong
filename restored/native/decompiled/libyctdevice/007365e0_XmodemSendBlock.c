/* Artifact: libyctdevice.so | Address: 007365e0 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::XmodemSendBlock() */

void __thiscall FmwUpdateGnssBoardUnicore::XmodemSendBlock(FmwUpdateGnssBoardUnicore *this)

{
  byte *pbVar1;
  char *pcVar2;
  ushort uVar3;
  ulong uVar4;
  long lVar5;
  char *__s;
  uint uVar6;
  ulong uVar7;
  long lVar8;
  ulong uVar9;
  char cVar10;
  char cVar12;
  char cVar13;
  char cVar14;
  char cVar15;
  char cVar16;
  char cVar17;
  undefined8 uVar11;
  char cVar18;
  char cVar19;
  char cVar21;
  char cVar22;
  char cVar23;
  char cVar24;
  char cVar25;
  char cVar26;
  undefined8 uVar20;
  char cVar27;
  char cVar28;
  char cVar30;
  char cVar31;
  char cVar32;
  char cVar33;
  char cVar34;
  char cVar35;
  undefined8 uVar29;
  char cVar36;
  char cVar37;
  char cVar39;
  char cVar40;
  char cVar41;
  char cVar42;
  char cVar43;
  char cVar44;
  undefined8 uVar38;
  char cVar45;
  undefined8 uVar46;
  undefined8 uVar47;
  undefined8 uVar48;
  undefined8 uVar49;
  ulong local_70 [2];
  void *local_60;
  long local_58;
  
  lVar5 = tpidr_el0;
  local_58 = *(long *)(lVar5 + 0x28);
  lVar8 = *(long *)(this + 0x1e0);
  uVar9 = *(ulong *)(this + 0x1f8);
  uVar7 = *(long *)(this + 0x1e8) - lVar8;
  uVar4 = uVar7 - uVar9;
  if (uVar7 < uVar9 || uVar4 == 0) {
    uVar4 = local_70[0] >> 0x10;
    local_70[0] = CONCAT62((uint6)uVar4 & 0xffffffffff00,0x402);
                    /* try { // try from 00736700 to 0073670b has its CatchHandler @ 007367c0 */
    IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,(basic_string *)local_70);
    *(undefined4 *)(this + 0x1d8) = 0;
    *(undefined4 *)(this + 0x1b4) = 0;
    if ((local_70[0] & 1) != 0) {
      operator_delete(local_60);
    }
    *(undefined4 *)(this + 0x1d0) = 2;
  }
  else {
    __s = (char *)operator_new(0x400);
    memset(__s,0x1a,0x400);
    if (0x3ff < uVar4) {
      uVar4 = 0x400;
    }
    __memcpy_chk(__s,lVar8 + uVar9,uVar4,0x400);
    local_70[0] = 0;
    local_70[1] = 0;
    local_60 = (void *)0x0;
                    /* try { // try from 0073665c to 0073669f has its CatchHandler @ 007367d8 */
    std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
    reserve((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
            local_70,0x405);
    std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
    push_back((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
              local_70,'\x02');
    std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
    push_back((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
              local_70,(char)this[0x1d5]);
    std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
    push_back((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
              local_70,~(byte)this[0x1d5]);
    std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
    append((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
           local_70,__s,0x400);
    if (this[0x1d4] == (FmwUpdateGnssBoardUnicore)0x0) {
      uVar11 = 0;
      uVar20 = 0;
      uVar29 = 0;
      uVar38 = 0;
      lVar8 = 0;
      do {
        pcVar2 = __s + lVar8;
        lVar8 = lVar8 + 0x20;
        uVar47 = *(undefined8 *)(pcVar2 + 8);
        uVar46 = *(undefined8 *)pcVar2;
        uVar49 = *(undefined8 *)(pcVar2 + 0x18);
        uVar48 = *(undefined8 *)(pcVar2 + 0x10);
        cVar10 = (char)uVar46 + (char)uVar11;
        cVar12 = (char)((ulong)uVar46 >> 8) + (char)((ulong)uVar11 >> 8);
        cVar13 = (char)((ulong)uVar46 >> 0x10) + (char)((ulong)uVar11 >> 0x10);
        cVar14 = (char)((ulong)uVar46 >> 0x18) + (char)((ulong)uVar11 >> 0x18);
        cVar15 = (char)((ulong)uVar46 >> 0x20) + (char)((ulong)uVar11 >> 0x20);
        cVar16 = (char)((ulong)uVar46 >> 0x28) + (char)((ulong)uVar11 >> 0x28);
        cVar17 = (char)((ulong)uVar46 >> 0x30) + (char)((ulong)uVar11 >> 0x30);
        cVar18 = (char)((ulong)uVar46 >> 0x38) + (char)((ulong)uVar11 >> 0x38);
        uVar11 = CONCAT17(cVar18,CONCAT16(cVar17,CONCAT15(cVar16,CONCAT14(cVar15,CONCAT13(cVar14,
                                                  CONCAT12(cVar13,CONCAT11(cVar12,cVar10)))))));
        cVar19 = (char)uVar47 + (char)uVar20;
        cVar21 = (char)((ulong)uVar47 >> 8) + (char)((ulong)uVar20 >> 8);
        cVar22 = (char)((ulong)uVar47 >> 0x10) + (char)((ulong)uVar20 >> 0x10);
        cVar23 = (char)((ulong)uVar47 >> 0x18) + (char)((ulong)uVar20 >> 0x18);
        cVar24 = (char)((ulong)uVar47 >> 0x20) + (char)((ulong)uVar20 >> 0x20);
        cVar25 = (char)((ulong)uVar47 >> 0x28) + (char)((ulong)uVar20 >> 0x28);
        cVar26 = (char)((ulong)uVar47 >> 0x30) + (char)((ulong)uVar20 >> 0x30);
        cVar27 = (char)((ulong)uVar47 >> 0x38) + (char)((ulong)uVar20 >> 0x38);
        uVar20 = CONCAT17(cVar27,CONCAT16(cVar26,CONCAT15(cVar25,CONCAT14(cVar24,CONCAT13(cVar23,
                                                  CONCAT12(cVar22,CONCAT11(cVar21,cVar19)))))));
        cVar28 = (char)uVar48 + (char)uVar29;
        cVar30 = (char)((ulong)uVar48 >> 8) + (char)((ulong)uVar29 >> 8);
        cVar31 = (char)((ulong)uVar48 >> 0x10) + (char)((ulong)uVar29 >> 0x10);
        cVar32 = (char)((ulong)uVar48 >> 0x18) + (char)((ulong)uVar29 >> 0x18);
        cVar33 = (char)((ulong)uVar48 >> 0x20) + (char)((ulong)uVar29 >> 0x20);
        cVar34 = (char)((ulong)uVar48 >> 0x28) + (char)((ulong)uVar29 >> 0x28);
        cVar35 = (char)((ulong)uVar48 >> 0x30) + (char)((ulong)uVar29 >> 0x30);
        cVar36 = (char)((ulong)uVar48 >> 0x38) + (char)((ulong)uVar29 >> 0x38);
        uVar29 = CONCAT17(cVar36,CONCAT16(cVar35,CONCAT15(cVar34,CONCAT14(cVar33,CONCAT13(cVar32,
                                                  CONCAT12(cVar31,CONCAT11(cVar30,cVar28)))))));
        cVar37 = (char)uVar49 + (char)uVar38;
        cVar39 = (char)((ulong)uVar49 >> 8) + (char)((ulong)uVar38 >> 8);
        cVar40 = (char)((ulong)uVar49 >> 0x10) + (char)((ulong)uVar38 >> 0x10);
        cVar41 = (char)((ulong)uVar49 >> 0x18) + (char)((ulong)uVar38 >> 0x18);
        cVar42 = (char)((ulong)uVar49 >> 0x20) + (char)((ulong)uVar38 >> 0x20);
        cVar43 = (char)((ulong)uVar49 >> 0x28) + (char)((ulong)uVar38 >> 0x28);
        cVar44 = (char)((ulong)uVar49 >> 0x30) + (char)((ulong)uVar38 >> 0x30);
        cVar45 = (char)((ulong)uVar49 >> 0x38) + (char)((ulong)uVar38 >> 0x38);
        uVar38 = CONCAT17(cVar45,CONCAT16(cVar44,CONCAT15(cVar43,CONCAT14(cVar42,CONCAT13(cVar41,
                                                  CONCAT12(cVar40,CONCAT11(cVar39,cVar37)))))));
      } while (lVar8 != 0x400);
                    /* try { // try from 00736764 to 0073676b has its CatchHandler @ 007367bc */
      std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
      push_back((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
                local_70,cVar28 + cVar10 + cVar30 + cVar12 + cVar31 + cVar13 + cVar32 + cVar14 +
                         cVar33 + cVar15 + cVar34 + cVar16 + cVar35 + cVar17 + cVar36 + cVar18 +
                         cVar37 + cVar19 + cVar39 + cVar21 + cVar40 + cVar22 + cVar41 + cVar23 +
                         cVar42 + cVar24 + cVar43 + cVar25 + cVar44 + cVar26 + cVar45 + cVar27);
    }
    else {
      lVar8 = 0;
      uVar6 = 0;
      do {
        pbVar1 = (byte *)(__s + lVar8);
        lVar8 = lVar8 + 1;
        uVar3 = *(ushort *)(&DAT_004378ca + (ulong)((uint)*pbVar1 ^ (uVar6 & 0xff00) >> 8) * 2);
        uVar6 = (uint)uVar3 ^ uVar6 << 8;
      } while (lVar8 != 0x400);
                    /* try { // try from 007366dc to 007366ef has its CatchHandler @ 007367d4 */
      std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
      push_back((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
                local_70,(char)(uVar6 >> 8));
      std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
      push_back((basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
                local_70,(char)uVar3);
    }
                    /* try { // try from 0073676c to 00736777 has its CatchHandler @ 007367d8 */
    IFmwUpdate::SendDataToDevice((IFmwUpdate *)this,(basic_string *)local_70);
    if ((local_70[0] & 1) != 0) {
      operator_delete(local_60);
    }
    operator_delete(__s);
  }
  if (*(long *)(lVar5 + 0x28) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

