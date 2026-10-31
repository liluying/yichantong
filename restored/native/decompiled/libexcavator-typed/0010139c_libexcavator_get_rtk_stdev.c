/* Artifact: libexcavator.so | Address: 0010139c | Ghidra static pseudocode; types require review. */

void libexcavator_get_rtk_stdev
               (undefined8 param_1,undefined8 param_2,int param_3,undefined8 *param_4)

{
  undefined1 uVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_11a0;
  undefined8 uStack_1198;
  undefined8 local_1190;
  undefined8 uStack_1188;
  undefined8 uStack_1180;
  undefined8 uStack_1178;
  undefined1 auStack_1168 [4352];
  undefined8 local_68;
  
  lVar3 = tpidr_el0;
  local_68 = *(undefined8 *)(lVar3 + 0x28);
  uVar1 = param_3 - 1U == 0xf;
  param_4[3] = 0;
  param_4[2] = 0;
  param_4[5] = 0;
  param_4[4] = 0;
  param_4[1] = 0;
  *param_4 = 0;
  if (param_3 - 1U < 0x10) {
    for (lVar3 = 0; uVar1 = lVar3 == param_3, lVar3 < param_3; lVar3 = lVar3 + 1) {
      FUN_001015f8();
    }
    uVar2 = FUN_00104600(param_1,auStack_1168,param_3,&local_11a0);
    if (-1 < (int)uVar2) {
      param_4[1] = uStack_1198;
      *param_4 = local_11a0;
      param_4[3] = uStack_1188;
      param_4[2] = local_1190;
      param_4[5] = uStack_1178;
      param_4[4] = uStack_1180;
    }
  }
  else {
    uVar2 = 0xffffffff;
  }
  FUN_0010161c(uVar2);
  if ((bool)uVar1) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

