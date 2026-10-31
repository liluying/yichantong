/* Artifact: libgnssparser.so | Address: 0010286c | Ghidra static pseudocode; types require review. */

void FUN_0010286c(long *param_1,uint param_2)

{
  int iVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  
  lVar4 = param_1[0x1b];
  lVar3 = lVar4 - (ulong)param_2;
  iVar1 = *(uint *)((long)param_1 + 0xc4) - param_2;
  param_1[0x1b] = lVar3;
  if ((param_2 <= *(uint *)((long)param_1 + 0xc4) && iVar1 != 0) && (param_1[4] != 0)) {
    FUN_0010291c(*param_1,iVar1);
    lVar3 = param_1[0x1b];
  }
  param_1[0x1b] = lVar4;
  param_1[0x1c] = lVar3;
  for (uVar2 = 0; param_2 != uVar2; uVar2 = uVar2 + 1) {
    *(undefined1 *)(*param_1 + uVar2) =
         *(undefined1 *)
          (*param_1 + (ulong)(((int)uVar2 - param_2) + *(int *)((long)param_1 + 0xc4)));
  }
  *(uint *)((long)param_1 + 0xc4) = param_2;
  *(undefined4 *)(param_1 + 0x1a) = 0;
  FUN_001029dc();
  return;
}

