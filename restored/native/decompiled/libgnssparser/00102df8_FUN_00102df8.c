/* Artifact: libgnssparser.so | Address: 00102df8 | Ghidra static pseudocode; types require review. */

bool FUN_00102df8(long param_1,int param_2)

{
  char cVar1;
  long lVar2;
  char cVar3;
  long lVar4;
  
  cVar1 = '\0';
  cVar3 = '\0';
  lVar2 = (long)param_2 + -2;
  for (lVar4 = 2; lVar4 < lVar2; lVar4 = lVar4 + 1) {
    cVar3 = cVar3 + *(char *)(param_1 + lVar4);
    cVar1 = cVar3 + cVar1;
  }
  if (cVar3 == *(char *)(param_1 + lVar2)) {
    return cVar1 != *(char *)(param_2 + param_1 + -1);
  }
  return true;
}

