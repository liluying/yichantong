/* Artifact: libyctdevice.so | Address: 006dd7e0 | Ghidra static pseudocode; types require review. */

/* GnssInfo::GnssInfo(GnssInfo const&) */

void __thiscall GnssInfo::GnssInfo(GnssInfo *this,GnssInfo *param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  
  if (((byte)*param_1 & 1) == 0) {
    uVar2 = *(undefined8 *)(param_1 + 8);
    uVar1 = *(undefined8 *)param_1;
    *(undefined8 *)(this + 0x10) = *(undefined8 *)(param_1 + 0x10);
    *(undefined8 *)(this + 8) = uVar2;
    *(undefined8 *)this = uVar1;
  }
  else {
    FUN_006a79e4(this,*(undefined8 *)(param_1 + 0x10),*(undefined8 *)(param_1 + 8));
  }
  if (((byte)param_1[0x18] & 1) == 0) {
    uVar2 = *(undefined8 *)(param_1 + 0x20);
    uVar1 = *(undefined8 *)(param_1 + 0x18);
    *(undefined8 *)(this + 0x28) = *(undefined8 *)(param_1 + 0x28);
    *(undefined8 *)(this + 0x20) = uVar2;
    *(undefined8 *)(this + 0x18) = uVar1;
  }
  else {
                    /* try { // try from 006dd840 to 006dd847 has its CatchHandler @ 006dd958 */
    FUN_006a79e4(this + 0x18,*(undefined8 *)(param_1 + 0x28),*(undefined8 *)(param_1 + 0x20));
  }
  if (((byte)param_1[0x30] & 1) == 0) {
    uVar2 = *(undefined8 *)(param_1 + 0x38);
    uVar1 = *(undefined8 *)(param_1 + 0x30);
    *(undefined8 *)(this + 0x40) = *(undefined8 *)(param_1 + 0x40);
    *(undefined8 *)(this + 0x38) = uVar2;
    *(undefined8 *)(this + 0x30) = uVar1;
  }
  else {
                    /* try { // try from 006dd86c to 006dd873 has its CatchHandler @ 006dd938 */
    FUN_006a79e4(this + 0x30,*(undefined8 *)(param_1 + 0x40),*(undefined8 *)(param_1 + 0x38));
  }
  if (((byte)param_1[0x48] & 1) == 0) {
    uVar2 = *(undefined8 *)(param_1 + 0x50);
    uVar1 = *(undefined8 *)(param_1 + 0x48);
    *(undefined8 *)(this + 0x58) = *(undefined8 *)(param_1 + 0x58);
    *(undefined8 *)(this + 0x50) = uVar2;
    *(undefined8 *)(this + 0x48) = uVar1;
  }
  else {
                    /* try { // try from 006dd898 to 006dd89f has its CatchHandler @ 006dd918 */
    FUN_006a79e4(this + 0x48,*(undefined8 *)(param_1 + 0x58),*(undefined8 *)(param_1 + 0x50));
  }
  if (((byte)param_1[0x60] & 1) == 0) {
    uVar2 = *(undefined8 *)(param_1 + 0x68);
    uVar1 = *(undefined8 *)(param_1 + 0x60);
    *(undefined8 *)(this + 0x70) = *(undefined8 *)(param_1 + 0x70);
    *(undefined8 *)(this + 0x68) = uVar2;
    *(undefined8 *)(this + 0x60) = uVar1;
  }
  else {
                    /* try { // try from 006dd8c4 to 006dd8cb has its CatchHandler @ 006dd8d8 */
    FUN_006a79e4(this + 0x60,*(undefined8 *)(param_1 + 0x70),*(undefined8 *)(param_1 + 0x68));
  }
  return;
}

