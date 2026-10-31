/* Artifact: libexcavator.so | Address: 00103078 | Ghidra static pseudocode; types require review. */

undefined1  [16]
FUN_00103078(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  double dVar4;
  double dVar5;
  undefined1 auVar6 [16];
  undefined8 uVar7;
  undefined8 uVar8;
  
  FUN_00107554();
  FUN_00106084();
  FUN_00107554(param_5,param_6,param_7,param_8);
  uVar1 = thunk_FUN_00107064();
  thunk_FUN_00107064();
  FUN_00105e08();
  FUN_00107590(uVar1,param_6,param_7);
  FUN_00107370();
  FUN_00105a78();
  uVar2 = FUN_00107518(param_1,param_2,param_3,param_4);
  uVar1 = param_2;
  uVar7 = param_3;
  FUN_00105df4();
  uVar3 = FUN_00107518();
  FUN_00105df4();
  FUN_00107554();
  FUN_00106084();
  uVar2 = FUN_00106fa8(uVar2,param_2);
  FUN_00106ffc();
  dVar4 = (double)FUN_00106f90();
  dVar4 = asin(dVar4);
  dVar4 = dVar4 * DAT_00107820;
  uVar8 = 0;
  dVar5 = (double)FUN_00106f90(uVar2,param_2,param_3,uVar3,uVar1,uVar7);
  if (dVar5 < 0.0) {
    dVar5 = DAT_00107810 - dVar4;
    if (dVar4 <= 0.0) {
      dVar5 = dVar4;
    }
    dVar4 = dVar5;
    uVar8 = 0;
    if (dVar4 < 0.0) {
      dVar4 = DAT_00107828 - dVar4;
      uVar8 = 0;
    }
  }
  auVar6._8_8_ = uVar8;
  auVar6._0_8_ = dVar4;
  return auVar6;
}

