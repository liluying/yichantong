/* Artifact: libyctdevice.so | Address: 00a60ed4 | Ghidra static pseudocode; types require review. */

void ossl_sm3_transform(undefined8 param_1,undefined8 param_2)

{
  code *UNRECOVERED_JUMPTABLE;
  
  UNRECOVERED_JUMPTABLE = (code *)PTR_ossl_sm3_block_data_order_00d72e10;
  if ((*(uint *)PTR_DAT_00d72c50 & 0x200) != 0) {
    UNRECOVERED_JUMPTABLE = (code *)PTR_ossl_hwsm3_block_data_order_00d72e08;
  }
                    /* WARNING: Could not recover jumptable at 0x00a60efc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*UNRECOVERED_JUMPTABLE)(param_1,param_2,1);
  return;
}

