/* Artifact: libexcavator.so | Address: 00100da0 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: quat_from_xyz */

void libexcavator_cali_mode_1_0(undefined8 param_1,double *param_2)

{
  long lVar1;
  double dVar2;
  double dVar3;
  double dVar4;
  double dVar5;
  double local_78;
  double dStack_70;
  double local_68;
  double dStack_60;
  double local_58;
  double dStack_50;
  double local_48;
  double dStack_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  dVar2 = *param_2;
  dVar3 = param_2[1];
  dVar4 = param_2[2];
  local_78 = 1.0;
  dVar5 = 1.0 - (dVar4 * dVar4 + dVar2 * dVar2 + dVar3 * dVar3);
  dStack_60 = 0.0;
  dStack_70 = 0.0;
  local_68 = 0.0;
  if (0.0 < dVar5) {
    local_78 = SQRT(dVar5);
    dStack_60 = dVar4;
    dStack_70 = dVar2;
    local_68 = dVar3;
  }
  dStack_50 = param_2[4];
  local_58 = param_2[3];
  dStack_40 = param_2[6];
  local_48 = param_2[5];
  FUN_00101660(param_1,&local_78);
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

