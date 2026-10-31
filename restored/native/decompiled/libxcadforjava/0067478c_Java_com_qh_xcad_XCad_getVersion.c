/* Artifact: libxcadforjava.so | Address: 0067478c | Ghidra static pseudocode; types require review. */

void Java_com_qh_xcad_XCad_getVersion(long *param_1)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  
  puVar2 = (undefined1 *)FUN_00677b44();
  puVar1 = &DAT_002037ac;
  if (puVar2 != (undefined1 *)0x0) {
    puVar1 = puVar2;
  }
                    /* WARNING: Could not recover jumptable at 0x006747c4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*param_1 + 0x538))(param_1,puVar1);
  return;
}

