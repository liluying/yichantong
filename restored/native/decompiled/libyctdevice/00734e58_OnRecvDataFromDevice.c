/* Artifact: libyctdevice.so | Address: 00734e58 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::OnRecvDataFromDevice(std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> > const&) */

void __thiscall
FmwUpdateGnssBoardUnicore::OnRecvDataFromDevice
          (FmwUpdateGnssBoardUnicore *this,basic_string *param_1)

{
  basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *this_00;
  FmwUpdateGnssBoardUnicore *pFVar1;
  ulong uVar2;
  FmwUpdateGnssBoardUnicore *pFVar3;
  char *pcVar4;
  int iVar5;
  FmwUpdateGnssBoardUnicore FVar6;
  long lVar7;
  bool bVar8;
  void *pvVar9;
  uchar *puVar10;
  FmwUpdateGnssBoardUnicore *pFVar11;
  long lVar12;
  basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> bVar13;
  FmwUpdateGnssBoardUnicore *pFVar14;
  FmwUpdateGnssBoardUnicore *pFVar15;
  ulong uVar16;
  ulong uVar17;
  ulong uVar18;
  ulong local_a0;
  ulong uStack_98;
  uchar *local_90;
  ulong local_80;
  ulong uStack_78;
  void *local_70;
  long local_68;
  
  lVar7 = tpidr_el0;
  local_68 = *(long *)(lVar7 + 0x28);
  if (*(int *)(this + 0x1b0) != 0) {
    if (*(int *)(this + 0x1b0) == 5) {
      uVar16 = *(ulong *)(param_1 + 8);
      puVar10 = *(uchar **)(param_1 + 0x10);
      if ((*param_1 & 1) == 0) {
        puVar10 = param_1 + 1;
        uVar16 = (ulong)((byte)*param_1 >> 1);
      }
      for (; uVar16 != 0; uVar16 = uVar16 - 1) {
        ProcessXmodemByte(this,*puVar10);
        puVar10 = puVar10 + 1;
      }
    }
    else {
      uVar16 = *(ulong *)(param_1 + 8);
      pcVar4 = *(char **)(param_1 + 0x10);
      this_00 = (basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
                (this + 0x1b8);
      if ((*param_1 & 1) == 0) {
        pcVar4 = param_1 + 1;
        uVar16 = (ulong)((byte)*param_1 >> 1);
      }
      std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>::
      append(this_00,pcVar4,uVar16);
      bVar13 = *(basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
                (this + 0x1b8);
      uVar18 = *(ulong *)(this + 0x1c0);
      bVar8 = ((byte)bVar13 & 1) == 0;
      uVar16 = (ulong)((byte)bVar13 >> 1);
      if (!bVar8) {
        uVar16 = uVar18;
      }
      if (uVar16 != 0) {
        pFVar1 = this + 0x1b9;
LAB_00734f4c:
        pFVar15 = *(FmwUpdateGnssBoardUnicore **)(this + 0x1c8);
        pFVar14 = pFVar1;
        if (!bVar8) {
          pFVar14 = pFVar15;
        }
        pvVar9 = memchr(pFVar14,10,uVar16);
        if ((pvVar9 != (void *)0x0) &&
           (uVar17 = (long)pvVar9 - (long)pFVar14, uVar17 != 0xffffffffffffffff)) {
          uVar2 = uVar17 + 1;
          if (uVar2 <= uVar16) {
            uVar16 = uVar17 + 1;
          }
          if (uVar16 < 0xfffffffffffffff0) {
            if (uVar16 < 0x17) {
              local_80 = CONCAT71(local_80._1_7_,(char)((int)uVar16 << 1));
              pvVar9 = (void *)((ulong)&local_80 | 1);
            }
            else {
              pvVar9 = operator_new((uVar16 | 0xf) + 1);
              local_80 = (uVar16 | 0xf) + 2;
              uStack_78 = uVar16;
              local_70 = pvVar9;
            }
            memmove(pvVar9,pFVar14,uVar16);
            *(undefined1 *)((long)pvVar9 + uVar16) = 0;
            uVar16 = (ulong)((byte)bVar13 >> 1);
            if (((byte)bVar13 & 1) != 0) {
              uVar16 = uVar18;
            }
            if (uVar17 < uVar16) {
              uVar18 = uVar16 - uVar2;
              pFVar14 = pFVar1;
              if (((byte)bVar13 & 1) != 0) {
                pFVar14 = pFVar15;
              }
              if (uVar18 < 0xfffffffffffffff0) {
                if (uVar18 < 0x17) {
                  local_a0 = CONCAT71(local_a0._1_7_,(char)((int)uVar18 << 1));
                  puVar10 = (uchar *)((ulong)&local_a0 | 1);
                  if (uVar16 != uVar2) goto LAB_00735054;
                }
                else {
                  uVar16 = (uVar18 | 0xf) + 1;
                    /* try { // try from 0073503c to 00735043 has its CatchHandler @ 0073554c */
                  puVar10 = (uchar *)operator_new(uVar16);
                  local_a0 = uVar16 | 1;
                  uStack_98 = uVar18;
                  local_90 = puVar10;
LAB_00735054:
                  memmove(puVar10,pFVar14 + uVar2,uVar18);
                }
                puVar10[uVar18] = '\0';
                if (((byte)*this_00 & 1) != 0) {
                  operator_delete(*(void **)(this + 0x1c8));
                }
                *(ulong *)(this + 0x1c0) = uStack_98;
                *(ulong *)this_00 = local_a0;
                *(uchar **)(this + 0x1c8) = local_90;
                    /* try { // try from 0073508c to 00735097 has its CatchHandler @ 00735568 */
                ProcessLine(this,(basic_string *)&local_80);
                if (*(int *)(this + 0x1b0) != 5) goto code_r0x007350a4;
                uStack_98 = *(ulong *)(this + 0x1c0);
                local_a0 = *(ulong *)this_00;
                local_90 = *(uchar **)(this + 0x1c8);
                *(undefined8 *)(this + 0x1c0) = 0;
                *(undefined8 *)(this + 0x1c8) = 0;
                *(undefined8 *)this_00 = 0;
                bVar8 = (local_a0 & 1) != 0;
                uVar16 = (ulong)((byte)local_a0 >> 1);
                if (bVar8) {
                  uVar16 = uStack_98;
                }
                puVar10 = (uchar *)((ulong)&local_a0 | 1);
                if (bVar8) {
                  puVar10 = local_90;
                }
                if (uVar16 != 0) {
                  do {
                    /* try { // try from 00735168 to 0073516f has its CatchHandler @ 00735550 */
                    ProcessXmodemByte(this,*puVar10);
                    uVar16 = uVar16 - 1;
                    puVar10 = puVar10 + 1;
                  } while (uVar16 != 0);
                }
                if (((byte)local_a0 & 1) != 0) {
                  operator_delete(local_90);
                }
                if ((local_80 & 1) != 0) {
                  operator_delete(local_70);
                }
                goto LAB_0073546c;
              }
              if (*(long *)(lVar7 + 0x28) == local_68) {
                    /* try { // try from 007354f4 to 007354fb has its CatchHandler @ 0073556c */
                    /* WARNING: Subroutine does not return */
                FUN_006a3c28(&local_a0);
              }
            }
            else if (*(long *)(lVar7 + 0x28) == local_68) {
                    /* try { // try from 0073552c to 00735533 has its CatchHandler @ 0073556c */
                    /* WARNING: Subroutine does not return */
              FUN_006b7574(&local_a0);
            }
          }
          else if (*(long *)(lVar7 + 0x28) == local_68) {
                    /* WARNING: Subroutine does not return */
            FUN_006a3c28(&local_80);
          }
          goto LAB_0073559c;
        }
        iVar5 = *(int *)(this + 0x1b0);
        if (iVar5 == 6) {
          if ((long)uVar16 < 5) goto LAB_007352d0;
          pFVar11 = pFVar14 + uVar16;
          pFVar15 = pFVar14;
          goto LAB_00735254;
        }
        if (iVar5 == 4) {
          if ((long)uVar16 < 0x1f) goto LAB_00735400;
          pFVar3 = pFVar14 + uVar16;
          pFVar11 = pFVar14;
          goto LAB_007351c4;
        }
        if (iVar5 != 3) goto LAB_00735400;
        if ((long)uVar16 < 5) goto LAB_0073536c;
        pFVar11 = pFVar14 + uVar16;
        pFVar15 = pFVar14;
        goto LAB_007350f0;
      }
    }
  }
  goto LAB_0073546c;
code_r0x007350a4:
  if ((local_80 & 1) != 0) {
    operator_delete(local_70);
  }
  bVar13 = *(basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
            (this + 0x1b8);
  uVar18 = *(ulong *)(this + 0x1c0);
  bVar8 = ((byte)bVar13 & 1) == 0;
  uVar16 = (ulong)((byte)bVar13 >> 1);
  if (!bVar8) {
    uVar16 = uVar18;
  }
  if (uVar16 == 0) goto LAB_0073546c;
  goto LAB_00734f4c;
LAB_00735254:
  pFVar15 = (FmwUpdateGnssBoardUnicore *)memchr(pFVar15,0x62,uVar16 - 4);
  if (pFVar15 == (FmwUpdateGnssBoardUnicore *)0x0) goto LAB_007352d0;
  if (*(int *)pFVar15 == 0x746f6f62 && pFVar15[4] == (FmwUpdateGnssBoardUnicore)0x3e) {
    if ((pFVar15 != pFVar11) && ((long)pFVar15 - (long)pFVar14 != -1)) goto LAB_007352f8;
    goto LAB_007352d0;
  }
  pFVar15 = pFVar15 + 1;
  uVar16 = (long)pFVar11 - (long)pFVar15;
  if ((long)uVar16 < 5) goto LAB_007352d0;
  goto LAB_00735254;
LAB_007352d0:
  lVar12 = FUN_0073650c(this_00,"BootLoader",0);
  if (lVar12 != -1) {
    bVar13 = *this_00;
LAB_007352f8:
    if (((byte)bVar13 & 1) == 0) {
      uStack_78 = *(ulong *)(this + 0x1c0);
      local_80 = *(ulong *)this_00;
      local_70 = *(void **)(this + 0x1c8);
    }
    else {
      FUN_006a79e4(&local_80,*(undefined8 *)(this + 0x1c8),*(undefined8 *)(this + 0x1c0));
      bVar13 = *(basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
                (this + 0x1b8);
    }
    if (((byte)bVar13 & 1) == 0) {
      *pFVar1 = (FmwUpdateGnssBoardUnicore)0x0;
      *this_00 = (basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>)0x0
      ;
    }
    else {
      **(undefined1 **)(this + 0x1c8) = 0;
      *(undefined8 *)(this + 0x1c0) = 0;
    }
                    /* try { // try from 00735348 to 00735353 has its CatchHandler @ 0073553c */
    ProcessLine(this,(basic_string *)&local_80);
    goto LAB_007353f0;
  }
  goto LAB_00735400;
LAB_007351c4:
  pFVar11 = (FmwUpdateGnssBoardUnicore *)memchr(pFVar11,0x62,uVar16 - 0x1e);
  if (pFVar11 == (FmwUpdateGnssBoardUnicore *)0x0) goto LAB_00735400;
  if (((*(long *)pFVar11 == 0x6f74206e69676562 && *(long *)(pFVar11 + 8) == 0x2065746164707520) &&
      *(long *)(pFVar11 + 0x10) == 0x7266206873616c66) &&
      *(long *)(pFVar11 + 0x17) == 0x74726175206d6f72) {
    if ((pFVar11 != pFVar3) && ((long)pFVar11 - (long)pFVar14 != -1)) {
      if (bVar8) {
        local_70 = *(void **)(this + 0x1c8);
        uStack_78 = *(ulong *)(this + 0x1c0);
        local_80 = *(ulong *)this_00;
      }
      else {
        FUN_006a79e4(&local_80,pFVar15,uVar18);
        bVar13 = *this_00;
      }
      if (((byte)bVar13 & 1) == 0) {
        *pFVar1 = (FmwUpdateGnssBoardUnicore)0x0;
        *this_00 = (basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>)
                   0x0;
      }
      else {
        **(undefined1 **)(this + 0x1c8) = 0;
        *(undefined8 *)(this + 0x1c0) = 0;
      }
                    /* try { // try from 007354d0 to 007354db has its CatchHandler @ 00735534 */
      ProcessLine(this,(basic_string *)&local_80);
      goto LAB_007353f0;
    }
    goto LAB_00735400;
  }
  pFVar11 = pFVar11 + 1;
  uVar16 = (long)pFVar3 - (long)pFVar11;
  if ((long)uVar16 < 0x1f) goto LAB_00735400;
  goto LAB_007351c4;
LAB_007350f0:
  pFVar15 = (FmwUpdateGnssBoardUnicore *)memchr(pFVar15,0x62,uVar16 - 4);
  if (pFVar15 == (FmwUpdateGnssBoardUnicore *)0x0) goto LAB_0073536c;
  if (*(int *)pFVar15 == 0x746f6f62 && pFVar15[4] == (FmwUpdateGnssBoardUnicore)0x3e) {
    if ((pFVar15 != pFVar11) && ((long)pFVar15 - (long)pFVar14 != -1)) goto LAB_00735394;
    goto LAB_0073536c;
  }
  pFVar15 = pFVar15 + 1;
  uVar16 = (long)pFVar11 - (long)pFVar15;
  if ((long)uVar16 < 5) goto LAB_0073536c;
  goto LAB_007350f0;
LAB_0073536c:
  lVar12 = FUN_0073650c(this_00,"BootLoader",0);
  if (lVar12 != -1) {
    bVar13 = *this_00;
LAB_00735394:
    if (((byte)bVar13 & 1) == 0) {
      uStack_78 = *(ulong *)(this + 0x1c0);
      local_80 = *(ulong *)this_00;
      local_70 = *(void **)(this + 0x1c8);
    }
    else {
      FUN_006a79e4(&local_80,*(undefined8 *)(this + 0x1c8),*(undefined8 *)(this + 0x1c0));
      bVar13 = *(basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>> *)
                (this + 0x1b8);
    }
    if (((byte)bVar13 & 1) == 0) {
      *pFVar1 = (FmwUpdateGnssBoardUnicore)0x0;
      *this_00 = (basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>)0x0
      ;
    }
    else {
      **(undefined1 **)(this + 0x1c8) = 0;
      *(undefined8 *)(this + 0x1c0) = 0;
    }
                    /* try { // try from 007353e4 to 007353ef has its CatchHandler @ 00735538 */
    ProcessLine(this,(basic_string *)&local_80);
LAB_007353f0:
    if ((local_80 & 1) != 0) {
      operator_delete(local_70);
    }
  }
LAB_00735400:
  FVar6 = this[0x1b8];
  uVar16 = (ulong)((byte)FVar6 >> 1);
  if (((byte)FVar6 & 1) != 0) {
    uVar16 = *(ulong *)(this + 0x1c0);
  }
  if (0x1000 < uVar16) {
    pFVar14 = *(FmwUpdateGnssBoardUnicore **)(this + 0x1c8);
    if (((byte)FVar6 & 1) != 0) {
      pFVar1 = pFVar14;
    }
    pvVar9 = operator_new(0x810);
    memmove(pvVar9,pFVar1 + (uVar16 - 0x800),0x800);
    *(undefined1 *)((long)pvVar9 + 0x800) = 0;
    if (((byte)FVar6 & 1) != 0) {
      operator_delete(pFVar14);
    }
    *(void **)(this + 0x1c8) = pvVar9;
    *(undefined8 *)(this + 0x1b8) = 0x811;
    *(undefined8 *)(this + 0x1c0) = 0x800;
  }
LAB_0073546c:
  if (*(long *)(lVar7 + 0x28) == local_68) {
    return;
  }
LAB_0073559c:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

