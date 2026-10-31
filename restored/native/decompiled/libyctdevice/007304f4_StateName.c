/* Artifact: libyctdevice.so | Address: 007304f4 | Ghidra static pseudocode; types require review. */

/* FmwUpdateGnssBoardBeiyun::StateName(FmwUpdateGnssBoardBeiyun::UpdateState) */

void __thiscall FmwUpdateGnssBoardBeiyun::StateName(undefined1 *param_1,int param_2)

{
  undefined1 *puVar1;
  undefined8 uVar2;
  undefined2 uVar4;
  undefined8 uVar5;
  char *pcVar3;
  
  if (param_2 < 4) {
    if (param_2 < 2) {
      if (param_2 == 0) {
        *param_1 = 8;
        *(undefined4 *)(param_1 + 1) = 0x656c6449;
        param_1[5] = 0;
        return;
      }
      if (param_2 == 1) {
        pcVar3 = "EnterPassThrough";
        goto LAB_00730554;
      }
LAB_00730684:
      *param_1 = 0xe;
      *(undefined4 *)(param_1 + 1) = 0x6e6b6e55;
      *(undefined4 *)(param_1 + 4) = 0x6e776f6e;
      param_1[8] = 0;
      return;
    }
    if (param_2 != 2) {
      if (param_2 == 3) {
        puVar1 = param_1 + 10;
        *param_1 = 0x12;
        param_1[9] = 0x74;
        uVar2 = s_EnterBoot_003adb97._0_8_;
        goto LAB_00730650;
      }
      goto LAB_00730684;
    }
    uVar4 = 0x6e6f;
    *param_1 = 0x14;
    pcVar3 = "GetVersion";
  }
  else {
    if (5 < param_2) {
      if (param_2 == 6) {
        *param_1 = 0xc;
        *(undefined4 *)(param_1 + 1) = 0x696e6946;
        *(undefined2 *)(param_1 + 5) = 0x6873;
        param_1[7] = 0;
        return;
      }
      if (param_2 == 7) {
        *param_1 = 10;
        *(undefined4 *)(param_1 + 1) = 0x6f727245;
        param_1[5] = 0x72;
        param_1[6] = 0;
        return;
      }
      if (param_2 == 8) {
        pcVar3 = "LeavePassThrough";
LAB_00730554:
        uVar5 = *(undefined8 *)(pcVar3 + 8);
        uVar2 = *(undefined8 *)pcVar3;
        *param_1 = 0x20;
        *(undefined8 *)(param_1 + 9) = uVar5;
        *(undefined8 *)(param_1 + 1) = uVar2;
        param_1[0x11] = 0;
        return;
      }
      goto LAB_00730684;
    }
    if (param_2 == 4) {
      *param_1 = 0x10;
      puVar1 = param_1 + 9;
      uVar2._0_1_ = 'T';
      uVar2._1_1_ = 'r';
      uVar2._2_1_ = 'a';
      uVar2._3_1_ = 'n';
      uVar2._4_1_ = 's';
      uVar2._5_1_ = 'm';
      uVar2._6_1_ = 'i';
      uVar2._7_1_ = 't';
      goto LAB_00730650;
    }
    if (param_2 != 5) goto LAB_00730684;
    uVar4 = 0x6873;
    *param_1 = 0x14;
    pcVar3 = "WaitFinish";
  }
  puVar1 = param_1 + 0xb;
  uVar2 = *(undefined8 *)pcVar3;
  *(undefined2 *)(param_1 + 9) = uVar4;
LAB_00730650:
  *(undefined8 *)(param_1 + 1) = uVar2;
  *puVar1 = 0;
  return;
}

