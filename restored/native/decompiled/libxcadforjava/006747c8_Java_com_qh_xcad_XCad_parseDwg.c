/* Artifact: libxcadforjava.so | Address: 006747c8 | Ghidra static pseudocode; types require review. */

void Java_com_qh_xcad_XCad_parseDwg(long *param_1,undefined8 param_2,long param_3)

{
  long lVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  ulong local_50;
  long local_48;
  
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  if ((DAT_00d1a2a0 & 1) == 0) {
    __android_log_print(5,&DAT_0023683e,"parse rejected: caller package not authorized");
  }
  else if (param_3 != 0) {
    lVar2 = (**(code **)(*param_1 + 0x548))(param_1,param_3,0);
    if (lVar2 != 0) {
      local_50 = 0;
      lVar3 = FUN_006769fc(lVar2,&local_50);
      (**(code **)(*param_1 + 0x550))(param_1,param_3,lVar2);
      if ((lVar3 == 0) || (local_50 == 0)) {
        lVar2 = 0;
        lVar4 = 0;
        if (lVar3 == 0) goto LAB_006748c8;
      }
      else {
        lVar4 = (**(code **)(*param_1 + 0x580))(param_1);
        if (lVar4 != 0) {
          (**(code **)(*param_1 + 0x680))(param_1,lVar4,0,local_50 & 0xffffffff,lVar3);
        }
      }
      lVar2 = lVar4;
      FUN_00677abc(lVar3);
    }
    goto LAB_006748c8;
  }
  lVar2 = 0;
LAB_006748c8:
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(lVar2);
}

