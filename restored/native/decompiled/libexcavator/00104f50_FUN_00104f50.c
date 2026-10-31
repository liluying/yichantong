/* Artifact: libexcavator.so | Address: 00104f50 | Ghidra static pseudocode; types require review. */

void FUN_00104f50(void)

{
  undefined1 in_ZR;
  undefined8 uVar1;
  long extraout_x9;
  double dVar2;
  
  FUN_001058ec();
  FUN_001062ac();
  if ((bool)in_ZR) {
    dVar2 = (double)FUN_00105ebc();
    *(double *)(extraout_x9 + 0x48) = dVar2 + *(double *)(extraout_x9 + 0x48);
    FUN_00105e68();
    uVar1 = 0;
  }
  else {
    uVar1 = 0xffffffff;
  }
  FUN_00105be0(uVar1);
  return;
}

