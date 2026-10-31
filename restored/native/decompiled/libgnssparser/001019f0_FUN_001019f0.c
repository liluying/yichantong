/* Artifact: libgnssparser.so | Address: 001019f0 | Ghidra static pseudocode; types require review. */

void FUN_001019f0(long *param_1)

{
  long lVar1;
  bool bVar2;
  bool bVar3;
  short sVar4;
  ushort uVar5;
  ushort uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  undefined8 uVar10;
  uint extraout_w8;
  long lVar11;
  ulong uVar12;
  uint uVar13;
  long lVar14;
  int iVar15;
  byte abStack_78 [6];
  byte abStack_72 [10];
  long local_68;
  
  lVar1 = tpidr_el0;
  local_68 = *(long *)(lVar1 + 0x28);
  uVar7 = *(uint *)((long)param_1 + 0xc4);
  if (uVar7 < 0x10) {
LAB_00101a7c:
    uVar10 = 1;
  }
  else {
    if (uVar7 == 0x10) {
      sVar4 = FUN_00102c80(0x32f2,*param_1,0x10);
      if (sVar4 == 0) {
        uVar7 = FUN_00102984();
        uVar7 = (uVar7 & 0xffff) + 0x10;
        bVar2 = 0x11 < uVar7;
        bVar3 = uVar7 == 0x12;
        *(uint *)(param_1 + 0x1a) = uVar7;
        if ((bVar2) && (FUN_001029f4(), !bVar2 || bVar3)) {
          uVar7 = *(uint *)((long)param_1 + 0xc4);
          uVar8 = extraout_w8;
          goto LAB_00101a74;
        }
      }
    }
    else {
      uVar8 = *(uint *)(param_1 + 0x1a);
LAB_00101a74:
      if (uVar7 < uVar8) goto LAB_00101a7c;
      if (param_1[6] != 0) {
        lVar14 = *param_1;
        uVar7 = FUN_00102db0(lVar14 + 2);
        uVar7 = uVar7 & 0xffff;
        if ((1 < uVar7) && (uVar7 + 0x10 <= *(uint *)(param_1 + 1))) {
          uVar8 = FUN_00102db0(*param_1 + 4);
          uVar8 = uVar8 & 0xffff;
          uVar9 = uVar8;
          for (lVar11 = 6; lVar11 != 0xe; lVar11 = lVar11 + 1) {
            uVar9 = (uVar9 * 0x4e35) % 0x4e37;
            abStack_78[lVar11] = *(byte *)(*param_1 + lVar11) ^ (byte)uVar9;
          }
          uVar9 = FUN_00102db8(abStack_72 + 2);
          uVar5 = FUN_00102db0(abStack_72 + 6);
          for (iVar15 = 0; iVar15 != 2; iVar15 = iVar15 + 1) {
            uVar13 = (uVar9 ^ uVar8 ^ (uint)uVar5) % 0x755f;
            for (uVar12 = 0; uVar7 != uVar12; uVar12 = uVar12 + 1) {
              uVar13 = (((uint)((ulong)param_1[0x1f] >> (uVar13 & 7)) & 0xffff ^ uVar13) * 0x4e5f) %
                       0x755f;
              *(byte *)(*param_1 + uVar12 + 0x10) =
                   *(byte *)(*param_1 + uVar12 + 0x10) ^ (byte)uVar13;
            }
            if ((iVar15 == 0) &&
               (uVar6 = FUN_00102c80(0xe72a,lVar14 + 0x10,(ulong)uVar7), uVar8 == uVar6)) {
              if (*(ushort *)((long)param_1 + 0xec) == 0) {
                *(ushort *)((long)param_1 + 0xea) = uVar5;
              }
              else if ((*(ushort *)((long)param_1 + 0xec) != uVar5) &&
                      (*(ushort *)((long)param_1 + 0xea) != uVar5)) goto LAB_00101bd0;
              FUN_0010299c(param_1[6]);
              FUN_0010292c(param_1[0x1b]);
              break;
            }
LAB_00101bd0:
          }
        }
      }
    }
    uVar10 = 0;
  }
  if (*(long *)(lVar1 + 0x28) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar10);
  }
  return;
}

