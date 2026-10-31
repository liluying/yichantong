/* Artifact: libexcavator.so | Address: 00103218 | Ghidra static pseudocode; types require review. */

/* WARNING: Inlined function: FUN_00106110 */
/* WARNING: Inlined function: FUN_001061e8 */
/* WARNING: Inlined function: FUN_001060e0 */
/* WARNING: Inlined function: FUN_0010612c */
/* WARNING: Inlined function: FUN_00105de8 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00103218(undefined4 *param_1,undefined8 *param_2)

{
  long lVar1;
  undefined8 uVar2;
  double dVar3;
  double dVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  double dVar7;
  undefined8 uVar8;
  undefined8 in_d3;
  undefined8 uVar9;
  undefined4 *local_328;
  undefined1 *local_320;
  undefined8 *puStack_318;
  undefined8 local_310;
  undefined8 local_308;
  undefined8 uStack_300;
  double local_2f8;
  undefined8 local_2f0;
  undefined8 uStack_2e8;
  double local_2e0;
  undefined8 local_2d8;
  undefined8 uStack_2d0;
  undefined8 local_2c8;
  undefined8 uStack_2c0;
  undefined8 local_2b8;
  undefined8 uStack_2b0;
  double local_2a8;
  undefined8 local_2a0;
  undefined8 uStack_298;
  undefined8 uStack_290;
  undefined8 uStack_288;
  undefined4 local_280;
  undefined4 **local_278;
  undefined8 *puStack_270;
  undefined8 local_268;
  code *local_260;
  code *pcStack_258;
  undefined8 local_250;
  undefined8 local_248;
  undefined8 uStack_240;
  undefined8 local_238;
  undefined4 *local_230;
  undefined8 uStack_228;
  undefined8 uStack_220;
  undefined8 uStack_218;
  undefined8 local_210;
  undefined8 uStack_208;
  double local_200;
  undefined8 uStack_1f8;
  undefined8 local_1f0;
  undefined8 uStack_1e8;
  double local_1e0;
  undefined8 uStack_1d8;
  undefined8 local_1d0;
  undefined8 uStack_1c8;
  undefined8 local_1c0;
  undefined8 uStack_1b8;
  double local_1b0;
  double dStack_1a8;
  undefined1 auStack_1a0 [312];
  long local_68;
  
  lVar1 = tpidr_el0;
  local_68 = *(long *)(lVar1 + 0x28);
  memset(param_1,0,0x138);
  if ((double)param_2[3] <= (double)param_2[4]) {
    *param_1 = 2;
    *(undefined8 *)(param_1 + 8) = param_2[1];
    *(undefined8 *)(param_1 + 10) = param_2[2];
    *(undefined8 *)(param_1 + 0xc) = param_2[6];
    *(undefined8 *)(param_1 + 0xe) = param_2[5];
    *(undefined8 *)(param_1 + 0x10) = param_2[4];
    memcpy(param_1 + 0x18,param_2 + 7,0x68);
    dVar3 = (double)param_2[3];
    dVar7 = dVar3 * dVar3;
    dVar4 = atan2(dVar3,SQRT((double)param_2[4] * (double)param_2[4] - dVar7));
    dVar3 = DAT_00107820;
    *(double *)(param_1 + 0x12) = dVar4 * DAT_00107820;
    uVar2 = FUN_001034b4(param_2[0x14],*(undefined4 *)(param_2 + 0x15));
    if (dVar3 < 0.0) {
      uVar2 = FUN_00106e80(uVar2);
    }
    uStack_228 = param_2[0x17];
    local_230 = (undefined4 *)param_2[0x16];
    uStack_218 = param_2[0x19];
    uVar5 = param_2[0x18];
    dVar4 = dVar7;
    uStack_220 = uVar5;
    local_210 = FUN_00107090();
    uStack_208 = uVar5;
    local_200 = dVar4;
    uStack_1f8 = in_d3;
    FUN_00106e1c();
    uVar9 = uVar2;
    local_1f0 = FUN_00107590();
    uVar8 = param_2[1];
    uVar6 = param_2[2];
    uStack_1e8 = uVar5;
    local_1e0 = dVar4;
    uStack_1d8 = uVar9;
    local_1d0 = FUN_00106e3c(0);
    uVar5 = _UNK_001078b8;
    uVar9 = _DAT_001078b0;
    local_278 = &local_230;
    puStack_270 = &local_250;
    local_238 = 0;
    local_260 = (code *)&LAB_001036e8;
    pcStack_258 = (code *)&LAB_0010377c;
    local_250 = 0x800000008;
    local_268 = DAT_00107830;
    uStack_240 = _UNK_001078b8;
    local_248 = _DAT_001078b0;
    uStack_1c8 = uVar6;
    local_1c0 = uVar8;
    uStack_1b8 = uVar2;
    local_1b0 = dVar3;
    dStack_1a8 = dVar7;
    FUN_001063e8(&local_278);
    uVar2 = uStack_208;
    dVar3 = local_200;
    FUN_00107170(local_210,uStack_208,local_200,uStack_1f8);
    uVar6 = FUN_001070f4();
    *(undefined8 *)(param_1 + 2) = uVar6;
    *(undefined8 *)(param_1 + 4) = uVar2;
    *(double *)(param_1 + 6) = dVar3;
    FUN_00101778(param_1);
    memcpy(auStack_1a0,param_1,0x138);
    local_310 = *param_2;
    local_308 = FUN_00106e04();
    uStack_300 = uVar2;
    local_2f8 = dVar3;
    local_2f0 = FUN_00106e04();
    uStack_2d0 = param_2[0x1b];
    local_2d8 = param_2[0x1a];
    uStack_2c0 = param_2[0x1d];
    uVar6 = param_2[0x1c];
    uStack_2e8 = uVar2;
    local_2e0 = dVar3;
    local_2c8 = uVar6;
    local_2b8 = FUN_00106e04();
    uStack_298 = param_2[0x1f];
    local_2a0 = param_2[0x1e];
    uStack_288 = param_2[0x21];
    uStack_290 = param_2[0x20];
    puStack_318 = &local_310;
    local_278 = &local_328;
    local_260 = FUN_001037d4;
    pcStack_258 = FUN_0010381c;
    local_280 = 1;
    uStack_240 = uVar5;
    local_248 = uVar9;
    local_328 = param_1;
    local_320 = auStack_1a0;
    uStack_2b0 = uVar6;
    local_2a8 = dVar3;
    FUN_001063e8(&local_278);
    memcpy(param_1,auStack_1a0,0x138);
    FUN_00107370(param_2[0x22],param_2[0x23],param_2[0x24],param_2[0x25],
                 *(undefined8 *)(param_1 + 0x40),*(undefined8 *)(param_1 + 0x42),
                 *(undefined8 *)(param_1 + 0x44),*(undefined8 *)(param_1 + 0x46));
    dVar3 = (double)FUN_00103078();
    uVar2 = 0;
    *(double *)(param_1 + 0x16) = dVar3 + *(double *)(param_1 + 0x14);
  }
  else {
    uVar2 = 0xffffffff;
  }
  if (*(long *)(lVar1 + 0x28) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

