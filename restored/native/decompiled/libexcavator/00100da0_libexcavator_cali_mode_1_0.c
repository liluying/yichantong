/* Artifact: libexcavator.so | Address: 00100da0 | Ghidra static pseudocode; types require review. */

void libexcavator_cali_mode_1_0(undefined8 param_1,undefined8 *param_2)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 in_d3;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  uVar2 = param_2[1];
  uVar3 = param_2[2];
  local_78 = FUN_001070a4(*param_2);
  uStack_50 = param_2[4];
  local_58 = param_2[3];
  uStack_40 = param_2[6];
  local_48 = param_2[5];
  uStack_70 = uVar2;
  local_68 = uVar3;
  uStack_60 = in_d3;
  FUN_00101660(param_1,&local_78);
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

