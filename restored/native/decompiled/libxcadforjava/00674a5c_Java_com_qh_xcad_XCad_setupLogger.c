/* Artifact: libxcadforjava.so | Address: 00674a5c | Ghidra static pseudocode; types require review. */

ulong Java_com_qh_xcad_XCad_setupLogger(long *param_1,undefined8 param_2,long param_3)

{
  long lVar1;
  ulong uVar2;
  
  if (param_3 != 0) {
    lVar1 = (**(code **)(*param_1 + 0x548))(param_1,param_3,0);
    uVar2 = FUN_00677b50();
    if (lVar1 != 0) {
      uVar2 = uVar2 & 0xffffffff;
      (**(code **)(*param_1 + 0x550))(param_1,param_3,lVar1);
    }
    return uVar2;
  }
  uVar2 = FUN_00677b50(0);
  return uVar2;
}

