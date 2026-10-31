/* Artifact: libyctdevice.so | Address: 0071f070 | Ghidra static pseudocode; types require review. */

/* protocol::yct_device::GnssInfoReq::InternalSwap(protocol::yct_device::GnssInfoReq*) */

void __thiscall
protocol::yct_device::GnssInfoReq::InternalSwap(GnssInfoReq *this,GnssInfoReq *param_1)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  
  uVar3 = *(undefined8 *)(this + 8);
  uVar1 = *(undefined8 *)(param_1 + 8);
  uVar2 = *(undefined8 *)(this + 0x38);
  uVar6 = *(undefined8 *)(param_1 + 0x18);
  uVar5 = *(undefined8 *)(param_1 + 0x10);
  uVar8 = *(undefined8 *)(param_1 + 0x28);
  uVar7 = *(undefined8 *)(param_1 + 0x20);
  *(undefined8 *)(param_1 + 0x10) = *(undefined8 *)(this + 0x10);
  *(undefined8 *)(param_1 + 8) = uVar3;
  uVar4 = *(undefined8 *)(this + 0x18);
  *(undefined8 *)(this + 8) = uVar1;
  uVar1 = *(undefined8 *)(param_1 + 0x30);
  uVar3 = *(undefined8 *)(param_1 + 0x38);
  *(undefined8 *)(param_1 + 0x20) = *(undefined8 *)(this + 0x20);
  *(undefined8 *)(param_1 + 0x18) = uVar4;
  uVar4 = *(undefined8 *)(this + 0x28);
  *(undefined8 *)(this + 0x18) = uVar6;
  *(undefined8 *)(this + 0x10) = uVar5;
  *(undefined8 *)(this + 0x28) = uVar8;
  *(undefined8 *)(this + 0x20) = uVar7;
  *(undefined8 *)(param_1 + 0x30) = *(undefined8 *)(this + 0x30);
  *(undefined8 *)(param_1 + 0x28) = uVar4;
  *(undefined8 *)(this + 0x30) = uVar1;
  *(undefined8 *)(this + 0x38) = uVar3;
  *(undefined8 *)(param_1 + 0x38) = uVar2;
  return;
}

