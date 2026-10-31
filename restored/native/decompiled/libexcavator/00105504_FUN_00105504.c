/* Artifact: libexcavator.so | Address: 00105504 | Ghidra static pseudocode; types require review. */

void FUN_00105504(int *param_1,void *param_2)

{
  int iVar1;
  undefined8 uVar2;
  
  iVar1 = FUN_00101fec(param_2);
  if (iVar1 == 0) {
    if (*param_1 == 3) {
      param_1 = param_1 + 0x16;
    }
    else {
      if (*param_1 != 2) {
        uVar2 = 0xffffffff;
        goto LAB_00105564;
      }
      param_1 = param_1 + 0x18;
    }
    memcpy(param_1,param_2,0x68);
    uVar2 = 0;
  }
  else {
    uVar2 = 0xfffffffe;
  }
LAB_00105564:
  FUN_00105be0(uVar2);
  return;
}

