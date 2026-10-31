/* Artifact: libexcavator.so | Address: 00103078 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106084 */
/* WARNING: Inlined function: FUN_00105e08 */
/* WARNING: Inlined function: FUN_00105a78 */
/* WARNING: Inlined function: FUN_00105df4 */

undefined1  [16]
FUN_00103078(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  double dVar5;
  double dVar6;
  undefined1 auVar7 [16];
  undefined8 uVar8;
  undefined8 uVar9;
  
  uVar8 = param_2;
  uVar1 = FUN_00107554();
  FUN_00107554(param_5,param_6,param_7,param_8);
  uVar2 = thunk_FUN_00107064();
  uVar9 = param_7;
  uVar1 = thunk_FUN_00107064(uVar1,uVar8);
  FUN_00107590(uVar2,param_6,param_7,uVar1,uVar8,uVar9);
  uVar2 = FUN_00107370();
  uVar3 = FUN_00107518(param_1,param_2,param_3,param_4);
  uVar8 = param_6;
  uVar9 = param_7;
  uVar4 = FUN_00107518(uVar2,param_6,param_7,uVar1);
  uVar1 = FUN_00107554(uVar2,param_6,param_7,uVar1);
  uVar1 = FUN_00106fa8(uVar3,param_2,param_3,uVar1,param_6,param_7);
  FUN_00106ffc();
  dVar5 = (double)FUN_00106f90();
  dVar5 = asin(dVar5);
  dVar5 = dVar5 * DAT_00107820;
  uVar2 = 0;
  dVar6 = (double)FUN_00106f90(uVar1,param_2,param_3,uVar4,uVar8,uVar9);
  if (dVar6 < 0.0) {
    dVar6 = DAT_00107810 - dVar5;
    if (dVar5 <= 0.0) {
      dVar6 = dVar5;
    }
    dVar5 = dVar6;
    uVar2 = 0;
    if (dVar5 < 0.0) {
      dVar5 = DAT_00107828 - dVar5;
      uVar2 = 0;
    }
  }
  auVar7._8_8_ = uVar2;
  auVar7._0_8_ = dVar5;
  return auVar7;
}

