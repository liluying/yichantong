/* Artifact: libyctdevice.so | Address: 00736bb0 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardUnicore::StateName(FmwUpdateGnssBoardUnicore::UpdateState) */

void __thiscall FmwUpdateGnssBoardUnicore::StateName(undefined1 *param_1,int param_2)

{
  undefined1 *puVar1;
  undefined8 uVar2;
  char *pcVar3;
  undefined8 uVar4;
  
  if (param_2 < 5) {
    if (param_2 < 2) {
      if (param_2 == 0) {
        *param_1 = 8;
        *(undefined4 *)(param_1 + 1) = 0x656c6449;
        param_1[5] = 0;
        return;
      }
      if (param_2 != 1) goto LAB_00736d9c;
      pcVar3 = "EnterPassThrough";
    }
    else {
      if (param_2 == 2) {
        puVar1 = param_1 + 0xb;
        *param_1 = 0x14;
        pcVar3 = "ResetBoard";
        *(undefined2 *)(param_1 + 9) = 0x6472;
        goto LAB_00736d38;
      }
      if (param_2 == 3) {
        puVar1 = param_1 + 0xd;
        *param_1 = 0x18;
        uVar2 = s_GoBootloader_003a7e17._0_8_;
        *(undefined4 *)(param_1 + 9) = 0x72656461;
        goto LAB_00736d3c;
      }
      if (param_2 != 4) goto LAB_00736d9c;
      pcVar3 = "MenuSendFirmware";
    }
  }
  else {
    if (param_2 < 8) {
      if (param_2 == 5) {
        *param_1 = 0x1c;
        uVar2 = CONCAT62(s_XmodemTransfer_003fd780._8_6_,s_XmodemTransfer_003fd780._6_2_);
        *(ulong *)(param_1 + 1) =
             CONCAT26(s_XmodemTransfer_003fd780._6_2_,s_XmodemTransfer_003fd780._0_6_);
        *(undefined8 *)(param_1 + 7) = uVar2;
        param_1[0xf] = 0;
        return;
      }
      if (param_2 == 6) {
        puVar1 = param_1 + 0x12;
        *param_1 = 0x22;
        param_1[0x11] = 0x65;
        uVar2 = s_WaitFlashComplete_003988a9._0_8_;
        uVar4 = s_WaitFlashComplete_003988a9._8_8_;
        goto LAB_00736ce8;
      }
      if (param_2 != 7) goto LAB_00736d9c;
      puVar1 = param_1 + 10;
      *param_1 = 0x12;
      pcVar3 = "MenuReset";
      param_1[9] = 0x74;
LAB_00736d38:
      uVar2 = *(undefined8 *)pcVar3;
LAB_00736d3c:
      *(undefined8 *)(param_1 + 1) = uVar2;
      *puVar1 = 0;
      return;
    }
    if (param_2 == 8) {
      *param_1 = 0xc;
      *(undefined4 *)(param_1 + 1) = 0x696e6946;
      *(undefined2 *)(param_1 + 5) = 0x6873;
      param_1[7] = 0;
      return;
    }
    if (param_2 == 9) {
      *param_1 = 10;
      *(undefined4 *)(param_1 + 1) = 0x6f727245;
      param_1[5] = 0x72;
      param_1[6] = 0;
      return;
    }
    if (param_2 != 10) {
LAB_00736d9c:
      *param_1 = 0xe;
      *(undefined4 *)(param_1 + 1) = 0x6e6b6e55;
      *(undefined4 *)(param_1 + 4) = 0x6e776f6e;
      param_1[8] = 0;
      return;
    }
    pcVar3 = "LeavePassThrough";
  }
  uVar4 = *(undefined8 *)(pcVar3 + 8);
  uVar2 = *(undefined8 *)pcVar3;
  puVar1 = param_1 + 0x11;
  *param_1 = 0x20;
LAB_00736ce8:
  *(undefined8 *)(param_1 + 9) = uVar4;
  *(undefined8 *)(param_1 + 1) = uVar2;
  *puVar1 = 0;
  return;
}

