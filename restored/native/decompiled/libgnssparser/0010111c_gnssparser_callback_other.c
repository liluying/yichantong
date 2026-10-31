/* Artifact: libgnssparser.so | Address: 0010111c | Ghidra static pseudocode; types require review. */

void gnssparser_callback_other
               (long param_1,long param_2,uint param_3,uint param_4,ushort param_5,char param_6,
               byte param_7,undefined8 param_8)

{
  int iVar1;
  int iVar2;
  undefined1 uVar3;
  
  if ((param_2 != 0) && (param_7 != 0 || param_6 != '\0')) {
    iVar2 = (int)param_6;
    iVar1 = -iVar2;
    if (-1 < iVar2) {
      iVar1 = iVar2;
    }
    if ((uint)param_7 + (uint)param_5 + iVar1 < *(uint *)(param_1 + 8)) {
      *(long *)(param_1 + 0xb8) = param_2;
      *(uint *)(param_1 + 0x120) = param_4;
      *(char *)(param_1 + 0x125) = (char)param_5;
      *(char *)(param_1 + 0x126) = param_6;
      *(byte *)(param_1 + 0x127) = param_7;
      *(uint *)(param_1 + 0x11c) = param_4 & param_3;
      *(undefined8 *)(param_1 + 0x128) = param_8;
      if (param_4 >> 0x18 == 0) {
        if (param_4 < 0x10000) {
          if (param_4 < 0x100) {
            if (param_4 == 0) {
              *(undefined1 *)(param_1 + 0x124) = 0;
              return;
            }
            uVar3 = 1;
          }
          else {
            uVar3 = 2;
          }
        }
        else {
          uVar3 = 3;
        }
      }
      else {
        uVar3 = 4;
      }
      *(undefined1 *)(param_1 + 0x124) = uVar3;
      return;
    }
  }
  *(undefined8 *)(param_1 + 0xb8) = 0;
  return;
}

