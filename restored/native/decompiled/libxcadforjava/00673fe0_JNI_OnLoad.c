/* Artifact: libxcadforjava.so | Address: 00673fe0 | Ghidra static pseudocode; types require review. */

undefined4 JNI_OnLoad(long *param_1)

{
  size_t sVar1;
  size_t sVar2;
  void *pvVar3;
  void *pvVar4;
  byte *pbVar5;
  byte bVar6;
  long lVar7;
  undefined *puVar8;
  int iVar9;
  ulong uVar10;
  undefined *puVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  byte *pbVar14;
  undefined8 local_80;
  size_t local_78;
  void *local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  void *local_58;
  undefined8 local_50;
  long local_48;
  
  lVar7 = tpidr_el0;
  local_48 = *(long *)(lVar7 + 0x28);
  uVar13 = 0x10006;
  local_50 = 0;
  iVar9 = (**(code **)(*param_1 + 0x30))(param_1,&local_50,0x10006);
  if (iVar9 != 0) {
    uVar13 = 0xffffffff;
    goto LAB_006741bc;
  }
  local_68 = 0;
  uStack_60 = 0;
  local_58 = (void *)0x0;
  local_80 = 0;
  local_78 = 0;
  local_70 = (void *)0x0;
                    /* try { // try from 00674048 to 0067419b has its CatchHandler @ 006741e8 */
  uVar10 = FUN_00674228(local_50,&local_68,&local_80);
  puVar8 = PTR_DAT_00d134a8;
  if ((uVar10 & 1) == 0) {
    DAT_00d1a2a0 = 0;
    __android_log_print(5,&DAT_0023683e,
                        "pkg signature check failed: unable to read caller signature");
  }
  else {
    puVar11 = (undefined *)FUN_00674f8c(PTR_DAT_00d134a8,&local_68);
    if (puVar11 == puVar8 + 8) {
LAB_00674150:
      uVar12 = 5;
      DAT_00d1a2a0 = false;
    }
    else {
      pbVar14 = *(byte **)(puVar11 + 0x38);
      pbVar5 = *(byte **)(puVar11 + 0x40);
      if (pbVar14 != pbVar5) {
        pvVar3 = local_70;
        sVar1 = local_78;
        if ((local_80 & 1) == 0) {
          pvVar3 = (void *)((long)&local_80 + 1);
          sVar1 = local_80 >> 1 & 0x7f;
        }
        do {
          bVar6 = *pbVar14;
          sVar2 = (ulong)(bVar6 >> 1);
          if ((bVar6 & 1) != 0) {
            sVar2 = *(size_t *)(pbVar14 + 8);
          }
          if (sVar2 == sVar1) {
            if ((bVar6 & 1) == 0) {
              if (bVar6 < 2) goto LAB_00674130;
              uVar10 = 0;
              while (pbVar14[uVar10 + 1] == *(byte *)((long)pvVar3 + uVar10)) {
                uVar10 = uVar10 + 1;
                if (bVar6 >> 1 == uVar10) goto LAB_00674130;
              }
            }
            else {
              iVar9 = memcmp(*(void **)(pbVar14 + 0x10),pvVar3,*(size_t *)(pbVar14 + 8));
              if (iVar9 == 0) goto LAB_00674130;
            }
          }
          pbVar14 = pbVar14 + 0x18;
        } while (pbVar14 != pbVar5);
        goto LAB_00674150;
      }
LAB_00674130:
      DAT_00d1a2a0 = pbVar14 != pbVar5;
      uVar12 = 4;
      if (!(bool)DAT_00d1a2a0) {
        uVar12 = 5;
      }
    }
    pvVar3 = local_58;
    if ((local_68 & 1) == 0) {
      pvVar3 = (void *)((long)&local_68 + 1);
    }
    pvVar4 = local_70;
    if ((local_80 & 1) == 0) {
      pvVar4 = (void *)((long)&local_80 + 1);
    }
    __android_log_print(uVar12,&DAT_0023683e,"pkg_verified=%d pkg=%s sig=%s",DAT_00d1a2a0,pvVar3,
                        pvVar4);
  }
  if ((local_80 & 1) != 0) {
    operator_delete(local_70);
  }
  if ((local_68 & 1) != 0) {
    operator_delete(local_58);
  }
LAB_006741bc:
  if (*(long *)(lVar7 + 0x28) == local_48) {
    return uVar13;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

