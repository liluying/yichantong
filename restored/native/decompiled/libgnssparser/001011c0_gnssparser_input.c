/* Artifact: libgnssparser.so | Address: 001011c0 | Ghidra static pseudocode; types require review. */

void gnssparser_input(long *param_1,long param_2,ulong param_3)

{
  byte bVar1;
  uint uVar2;
  byte bVar3;
  byte bVar4;
  ushort uVar5;
  undefined1 uVar6;
  long *plVar7;
  uint uVar8;
  int iVar9;
  long lVar10;
  long lVar11;
  code *pcVar12;
  uint uVar13;
  ulong uVar14;
  int iVar15;
  long lVar16;
  undefined1 auVar17 [16];
  
  if (*param_1 != 0) {
    plVar7 = param_1;
    for (uVar14 = 0; uVar14 != (param_3 & 0xffffffff); uVar14 = uVar14 + 1) {
      auVar17._8_4_ = *(uint *)((long)param_1 + 0xc4);
      auVar17._0_8_ = plVar7;
      auVar17._12_4_ = 0;
      bVar3 = *(byte *)(param_2 + uVar14);
      uVar6 = (int)param_1[1] - 1U <= *(uint *)((long)param_1 + 0xc4);
      if ((bool)uVar6) {
        if (param_1[4] != 0) {
          plVar7 = (long *)FUN_0010291c(*param_1);
        }
        auVar17 = FUN_0010292c(param_1[0x1b],plVar7,0);
      }
      plVar7 = auVar17._0_8_;
      *(int *)((long)param_1 + 0xc4) = auVar17._8_4_ + 1;
      *(byte *)(*param_1 + (auVar17._8_8_ & 0xffffffff)) = bVar3;
      *(uint *)(param_1 + 0x18) = (uint)bVar3 | (int)param_1[0x18] << 8;
      param_1[0x1b] = param_1[0x1b] + 1;
      if ((code *)param_1[0x19] != (code *)0x0) {
        plVar7 = (long *)(*(code *)param_1[0x19])(param_1);
        if ((int)plVar7 == 0) {
          if ((*(int *)((long)param_1 + 0xc4) != 0) && (param_1[4] != 0)) {
            FUN_0010291c(*param_1);
          }
          param_1[0x19] = 0;
          plVar7 = (long *)FUN_0010292c(param_1[0x1b]);
        }
        goto LAB_00101880;
      }
      if (param_1[3] != 0) {
        bVar3 = *(byte *)(*param_1 + (ulong)(*(uint *)((long)param_1 + 0xc4) - 1));
        uVar6 = 9 < bVar3;
        if (bVar3 == 10) {
          *(undefined1 *)(*param_1 + (ulong)*(uint *)((long)param_1 + 0xc4)) = 0;
          uVar2 = *(uint *)((long)param_1 + 0xc4);
          lVar11 = 0;
          do {
            lVar10 = lVar11;
            iVar15 = (int)lVar10;
            iVar9 = (uVar2 - 1) + iVar15;
            uVar6 = iVar9 != 0;
            uVar8 = uVar2;
            if (iVar9 < 1) goto LAB_00101344;
            lVar11 = lVar10 + -1;
          } while (*(char *)(*param_1 + (long)(int)((uVar2 - 2) + iVar15)) != '\0');
          if ((code *)param_1[4] != (code *)0x0) {
            lVar16 = param_1[0x1b];
            param_1[0x1b] = lVar16 + lVar11;
            (*(code *)param_1[4])(*param_1,(ulong)uVar2 + lVar11,param_1[2]);
            lVar11 = param_1[0x1b];
            param_1[0x1b] = lVar16;
            param_1[0x1c] = lVar11;
            uVar8 = *(uint *)((long)param_1 + 0xc4);
          }
LAB_00101344:
          (*(code *)param_1[3])
                    (*param_1 + (long)(int)(uVar2 - 1) + lVar10,((uVar8 - uVar2) - iVar15) + 1,
                     param_1[2]);
          plVar7 = (long *)FUN_0010292c(param_1[0x1b]);
        }
      }
      if (((param_1[5] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) &&
         (uVar6 = 0xf594 < *(ushort *)(param_1 + 0x18), *(ushort *)(param_1 + 0x18) == 0xf595)) {
        plVar7 = (long *)FUN_00102924(plVar7,2);
        pcVar12 = (code *)&LAB_001018a4;
        goto LAB_0010187c;
      }
      if (((param_1[6] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) &&
         (uVar6 = 0xf695 < *(ushort *)(param_1 + 0x18), *(ushort *)(param_1 + 0x18) == 0xf696)) {
        plVar7 = (long *)FUN_00102924(plVar7,2);
        param_1[0x19] = (long)FUN_001019f0;
        goto LAB_00101880;
      }
      if (param_1[7] != 0) {
        uVar6 = 4 < *(uint *)((long)param_1 + 0xc4);
        uVar2 = *(uint *)((long)param_1 + 0xc4) - 5;
        if ((bool)uVar6) {
          bVar3 = *(byte *)(*param_1 + (ulong)uVar2);
          if ((bVar3 == 0x66) || (uVar6 = 0x58 < bVar3, bVar3 == 0x59)) {
            uVar8 = 0;
            for (lVar11 = 0; lVar11 != 5; lVar11 = lVar11 + 1) {
              bVar4 = *(byte *)(*param_1 + (ulong)(uVar2 + (int)lVar11));
              bVar1 = bVar4 & 0xc0;
              uVar6 = 0x3f < bVar1;
              if (bVar1 != 0x40) goto LAB_001014a0;
              for (uVar13 = 0; uVar13 != 6; uVar13 = uVar13 + 1) {
                uVar8 = bVar4 >> (ulong)(uVar13 & 0x1f) & 1 | uVar8 << 1;
              }
            }
            uVar2 = (uVar8 | 0x40000000) ^ 0x3fffffc0;
            if (bVar3 != 0x59) {
              uVar2 = uVar8;
            }
            uVar8 = uVar2 >> 0x16 & 0xff;
            if ((uVar8 == 0x99) || (uVar6 = 0x65 < uVar8, uVar8 == 0x66)) {
              plVar7 = (long *)FUN_00102e58(uVar2);
              uVar8 = uVar2 & 0x3f;
              if ((uint)plVar7 != uVar8) {
                plVar7 = (long *)FUN_00102e58(uVar2 | 0x80000000);
                uVar6 = uVar8 <= (uint)plVar7;
                if ((uint)plVar7 != uVar8) goto LAB_001014a0;
              }
              plVar7 = (long *)FUN_00102924(plVar7,5);
              pcVar12 = FUN_00101c24;
              goto LAB_0010187c;
            }
          }
        }
      }
LAB_001014a0:
      if (((param_1[8] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) &&
         (uVar6 = 0xd2ff < (*(uint *)(param_1 + 0x18) & 0xfffc),
         (*(uint *)(param_1 + 0x18) & 0xfffc) == 0xd300)) {
        plVar7 = (long *)FUN_00102924(plVar7,2);
        pcVar12 = (code *)&LAB_00101d14;
        goto LAB_0010187c;
      }
      if (((param_1[9] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) &&
         (uVar6 = 0xb561 < *(ushort *)(param_1 + 0x18), *(ushort *)(param_1 + 0x18) == 0xb562)) {
        plVar7 = (long *)FUN_00102924(plVar7,2);
        pcVar12 = (code *)&LAB_00101d9c;
        goto LAB_0010187c;
      }
      if (((param_1[10] != 0) && (uVar6 = 2 < *(uint *)((long)param_1 + 0xc4), (bool)uVar6)) &&
         (uVar6 = 0xaa4411 < (*(uint *)(param_1 + 0x18) & 0xffffff),
         (*(uint *)(param_1 + 0x18) & 0xffffff) == 0xaa4412)) {
        plVar7 = (long *)FUN_00102924(plVar7,3);
        pcVar12 = (code *)&LAB_00101e20;
        goto LAB_0010187c;
      }
      if (((param_1[0xb] != 0) && (uVar6 = 2 < *(uint *)((long)param_1 + 0xc4), (bool)uVar6)) &&
         (uVar6 = 0xaa4415 < (*(uint *)(param_1 + 0x18) & 0xffffff),
         (*(uint *)(param_1 + 0x18) & 0xffffff) == 0xaa4416)) {
        plVar7 = (long *)FUN_00102924(plVar7,3);
        pcVar12 = (code *)&LAB_00101eac;
        goto LAB_0010187c;
      }
      if (((param_1[0xc] != 0) && (uVar6 = 2 < *(uint *)((long)param_1 + 0xc4), (bool)uVar6)) &&
         (uVar6 = 0xaa44b4 < (*(uint *)(param_1 + 0x18) & 0xffffff),
         (*(uint *)(param_1 + 0x18) & 0xffffff) == 0xaa44b5)) {
        plVar7 = (long *)FUN_00102924(plVar7,3);
        pcVar12 = (code *)&LAB_00101f1c;
        goto LAB_0010187c;
      }
      if (((param_1[0xd] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) &&
         (uVar6 = 0xbdda < *(ushort *)(param_1 + 0x18), *(ushort *)(param_1 + 0x18) == 0xbddb)) {
        plVar7 = (long *)FUN_00102924(plVar7,2);
        pcVar12 = (code *)&LAB_00101f8c;
        *(undefined4 *)(param_1 + 0x1a) = 0;
        goto LAB_0010187c;
      }
      if (((param_1[0xe] != 0) && (uVar6 = 3 < *(uint *)((long)param_1 + 0xc4), (bool)uVar6)) &&
         (uVar6 = 0x2442494d < *(uint *)(param_1 + 0x18), *(uint *)(param_1 + 0x18) == 0x2442494e))
      {
        plVar7 = (long *)FUN_00102924(plVar7,4);
        pcVar12 = FUN_00102054;
        goto LAB_0010187c;
      }
      if (((param_1[0xf] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) &&
         (uVar6 = 0x243f < *(ushort *)(param_1 + 0x18), *(ushort *)(param_1 + 0x18) == 0x2440)) {
        plVar7 = (long *)FUN_00102924(plVar7,2);
        pcVar12 = FUN_0010211c;
        goto LAB_0010187c;
      }
      if (((param_1[0x11] != 0) || (param_1[0x10] != 0)) &&
         ((*(int *)((long)param_1 + 0xc4) != 0 &&
          (uVar6 = 1 < *(byte *)(param_1 + 0x18), *(byte *)(param_1 + 0x18) == 2)))) {
        plVar7 = (long *)FUN_00102924(plVar7,1);
        pcVar12 = (code *)&LAB_001021cc;
        goto LAB_0010187c;
      }
      if (param_1[0x12] != 0) {
        uVar6 = 3 < *(uint *)((long)param_1 + 0xc4);
        if (((bool)uVar6) &&
           (uVar6 = 0x2423 < *(ushort *)((long)param_1 + 0xc2),
           *(ushort *)((long)param_1 + 0xc2) == 0x2424)) {
          lVar11 = 0;
          do {
            if (lVar11 == -2) {
              plVar7 = (long *)FUN_00102924(plVar7,4);
              pcVar12 = (code *)&LAB_00102398;
              goto LAB_0010187c;
            }
            iVar9 = (int)lVar11;
            lVar11 = lVar11 + -1;
            uVar6 = 0x19 < *(byte *)(*param_1 +
                                    (ulong)((*(uint *)((long)param_1 + 0xc4) - 1) + iVar9)) - 0x41;
          } while (!(bool)uVar6);
        }
      }
      if (((param_1[0x13] != 0) && (uVar6 = 3 < *(uint *)((long)param_1 + 0xc4), (bool)uVar6)) &&
         (uVar6 = 0x43534846 < *(uint *)(param_1 + 0x18), *(uint *)(param_1 + 0x18) == 0x43534847))
      {
        plVar7 = (long *)FUN_00102924(plVar7,4);
        pcVar12 = (code *)&LAB_00102444;
        goto LAB_0010187c;
      }
      if ((param_1[0x14] == 0) || (uVar6 = 3 < *(uint *)((long)param_1 + 0xc4), !(bool)uVar6))
      goto switchD_00101770_caseD_1;
      uVar2 = *(uint *)(param_1 + 0x18) >> 8;
      uVar6 = uVar2 < 0x666d6a;
      if (uVar2 != 0x666d69) goto switchD_00101770_caseD_1;
      uVar2 = *(uint *)(param_1 + 0x18) & 0xff;
      uVar6 = 0xc < uVar2 - 0x61;
      uVar8 = 0x34;
      switch(uVar2 - 0x61) {
      case 0:
switchD_00101770_caseD_0:
        uVar8 = 0x5c;
        break;
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 9:
      case 10:
      case 0xb:
        goto switchD_00101770_caseD_1;
      case 2:
        uVar8 = 0x2c;
        break;
      case 4:
      case 0xc:
        break;
      case 6:
        uVar8 = 0x5f;
        break;
      case 0xd:
        uVar8 = 100;
        break;
      default:
        uVar6 = 0x75 < uVar2;
        if (uVar2 == 0x76) goto switchD_00101770_caseD_0;
        goto switchD_00101770_caseD_1;
      }
      plVar7 = (long *)FUN_00102924(plVar7,4);
      *(uint *)(param_1 + 0x1a) = uVar8;
      uVar6 = *(uint *)(param_1 + 1) <= uVar8;
      if ((bool)uVar6) {
switchD_00101770_caseD_1:
        if ((param_1[0x15] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) {
          uVar5 = *(ushort *)(param_1 + 0x18);
          uVar6 = uVar5 != 0xaa55 && 0x55a9 < uVar5;
          if (uVar5 == 0xaa55 || uVar5 == 0x55aa) {
            plVar7 = (long *)FUN_00102924(plVar7,2);
            pcVar12 = FUN_00102568;
            goto LAB_0010187c;
          }
        }
        if (((param_1[0x16] != 0) && (plVar7 = (long *)FUN_00102964(), (bool)uVar6)) &&
           ((short)param_1[0x18] == -0x5a5c)) {
          plVar7 = (long *)FUN_00102924(plVar7,2);
          pcVar12 = FUN_0010263c;
          goto LAB_0010187c;
        }
        if (((param_1[0x17] != 0) &&
            ((uint)*(byte *)((long)param_1 + 0x124) <= *(uint *)((long)param_1 + 0xc4))) &&
           ((*(uint *)(param_1 + 0x24) & *(uint *)(param_1 + 0x18)) ==
            *(uint *)((long)param_1 + 0x11c))) {
          plVar7 = (long *)FUN_00102924();
          pcVar12 = (code *)&LAB_001026f0;
          goto LAB_0010187c;
        }
      }
      else {
        pcVar12 = (code *)&LAB_001024b4;
LAB_0010187c:
        param_1[0x19] = (long)pcVar12;
      }
LAB_00101880:
    }
  }
  return;
}

