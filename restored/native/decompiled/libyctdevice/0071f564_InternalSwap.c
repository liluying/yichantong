/* Artifact: libyctdevice.so | Address: 0071f564 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoRep::InternalSwap(protocol::yct_device::GnssInfoRep*) */

void __thiscall
protocol::yct_device::GnssInfoRep::InternalSwap(GnssInfoRep *this,GnssInfoRep *param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  
  uVar4 = *(undefined8 *)(this + 8);
  uVar1 = *(undefined8 *)(param_1 + 8);
  uVar2 = *(undefined8 *)(param_1 + 0x10);
  uVar5 = *(undefined8 *)(this + 0x18);
  *(undefined8 *)(param_1 + 0x10) = *(undefined8 *)(this + 0x10);
  *(undefined8 *)(param_1 + 8) = uVar4;
  uVar4 = *(undefined8 *)(param_1 + 0x18);
  *(undefined8 *)(this + 8) = uVar1;
  *(undefined8 *)(this + 0x10) = uVar2;
  *(undefined8 *)(this + 0x18) = uVar4;
  *(undefined8 *)(param_1 + 0x18) = uVar5;
  uVar3 = *(undefined4 *)(this + 0x20);
  *(undefined4 *)(this + 0x20) = *(undefined4 *)(param_1 + 0x20);
  *(undefined4 *)(param_1 + 0x20) = uVar3;
  return;
}

