/* Artifact: libgnssparser.so | Address: 00100f7c | Ghidra static pseudocode; types require review. */

void gnssparser_callback_kalx(long param_1,undefined8 param_2,undefined4 param_3,ulong param_4)

{
  long lVar1;
  ushort uVar2;
  uint uVar3;
  int iVar4;
  long lVar5;
  ushort local_78;
  undefined4 uStack_76;
  ushort uStack_72;
  undefined4 local_70;
  undefined4 uStack_6c;
  long local_68;
  
  lVar1 = tpidr_el0;
  local_68 = *(long *)(lVar1 + 0x28);
  iVar4 = 8;
  _local_70 = CONCAT44(param_3,0x4030201);
  for (lVar5 = 0; lVar5 != 4; lVar5 = lVar5 + 1) {
    uVar2 = FUN_00102c80(0x62e9,(long)&local_70 + lVar5,iVar4);
    (&local_78)[lVar5] = uVar2;
    iVar4 = iVar4 + -1;
  }
  uVar3 = uStack_72 ^ local_78 | 1;
  for (lVar5 = 0; lVar5 != 8; lVar5 = lVar5 + 1) {
    uVar3 = (uVar3 * 0x30d1) % 0x5bc9;
    *(byte *)((long)&local_78 + lVar5) = *(byte *)((long)&local_78 + lVar5) ^ (byte)uVar3;
  }
  *(undefined8 *)(param_1 + 0x30) = param_2;
  *(undefined4 *)(param_1 + 0xf0) = param_3;
  *(ulong *)(param_1 + 0xf8) =
       CONCAT26(uStack_72,CONCAT42(uStack_76,local_78)) & 0x7fffffffffffffff ^ param_4;
  if (*(long *)(lVar1 + 0x28) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

