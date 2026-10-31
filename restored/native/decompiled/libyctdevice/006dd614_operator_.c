/* Artifact: libyctdevice.so | Address: 006dd614 | Ghidra static pseudocode; types require review. */

/* GnssInfo::TEMPNAMEPLACEHOLDERVALUE(GnssInfo const&) */

GnssInfo * __thiscall GnssInfo::operator=(GnssInfo *this,GnssInfo *param_1)

{
  ulong uVar1;
  GnssInfo GVar2;
  GnssInfo *pGVar3;
  GnssInfo *pGVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  
  if (this != param_1) {
    GVar2 = *param_1;
    if (((byte)*this & 1) == 0) {
      if (((byte)GVar2 & 1) == 0) {
        uVar6 = *(undefined8 *)(param_1 + 8);
        uVar5 = *(undefined8 *)param_1;
        *(undefined8 *)(this + 0x10) = *(undefined8 *)(param_1 + 0x10);
        *(undefined8 *)(this + 8) = uVar6;
        *(undefined8 *)this = uVar5;
      }
      else {
        FUN_006b73c8(this,*(undefined8 *)(param_1 + 0x10),*(undefined8 *)(param_1 + 8));
      }
    }
    else {
      uVar1 = *(ulong *)(param_1 + 8);
      pGVar4 = *(GnssInfo **)(param_1 + 0x10);
      if (((byte)GVar2 & 1) == 0) {
        pGVar4 = param_1 + 1;
        uVar1 = (ulong)((byte)GVar2 >> 1);
      }
      FUN_006b7474(this,pGVar4,uVar1);
    }
    pGVar4 = this + 0x18;
    GVar2 = param_1[0x18];
    if (((byte)*pGVar4 & 1) == 0) {
      if (((byte)GVar2 & 1) == 0) {
        uVar6 = *(undefined8 *)(param_1 + 0x20);
        uVar5 = *(undefined8 *)(param_1 + 0x18);
        *(undefined8 *)(this + 0x28) = *(undefined8 *)(param_1 + 0x28);
        *(undefined8 *)(this + 0x20) = uVar6;
        *(undefined8 *)pGVar4 = uVar5;
      }
      else {
        FUN_006b73c8(pGVar4,*(undefined8 *)(param_1 + 0x28),*(undefined8 *)(param_1 + 0x20));
      }
    }
    else {
      uVar1 = (ulong)((byte)GVar2 >> 1);
      pGVar3 = param_1 + 0x19;
      if (((byte)GVar2 & 1) != 0) {
        uVar1 = *(ulong *)(param_1 + 0x20);
        pGVar3 = *(GnssInfo **)(param_1 + 0x28);
      }
      FUN_006b7474(pGVar4,pGVar3,uVar1);
    }
    pGVar4 = this + 0x30;
    GVar2 = param_1[0x30];
    if (((byte)*pGVar4 & 1) == 0) {
      if (((byte)GVar2 & 1) == 0) {
        uVar6 = *(undefined8 *)(param_1 + 0x38);
        uVar5 = *(undefined8 *)(param_1 + 0x30);
        *(undefined8 *)(this + 0x40) = *(undefined8 *)(param_1 + 0x40);
        *(undefined8 *)(this + 0x38) = uVar6;
        *(undefined8 *)pGVar4 = uVar5;
      }
      else {
        FUN_006b73c8(pGVar4,*(undefined8 *)(param_1 + 0x40),*(undefined8 *)(param_1 + 0x38));
      }
    }
    else {
      uVar1 = (ulong)((byte)GVar2 >> 1);
      pGVar3 = param_1 + 0x31;
      if (((byte)GVar2 & 1) != 0) {
        uVar1 = *(ulong *)(param_1 + 0x38);
        pGVar3 = *(GnssInfo **)(param_1 + 0x40);
      }
      FUN_006b7474(pGVar4,pGVar3,uVar1);
    }
    pGVar4 = this + 0x48;
    GVar2 = param_1[0x48];
    if (((byte)*pGVar4 & 1) == 0) {
      if (((byte)GVar2 & 1) == 0) {
        uVar6 = *(undefined8 *)(param_1 + 0x50);
        uVar5 = *(undefined8 *)(param_1 + 0x48);
        *(undefined8 *)(this + 0x58) = *(undefined8 *)(param_1 + 0x58);
        *(undefined8 *)(this + 0x50) = uVar6;
        *(undefined8 *)pGVar4 = uVar5;
      }
      else {
        FUN_006b73c8(pGVar4,*(undefined8 *)(param_1 + 0x58),*(undefined8 *)(param_1 + 0x50));
      }
    }
    else {
      uVar1 = (ulong)((byte)GVar2 >> 1);
      pGVar3 = param_1 + 0x49;
      if (((byte)GVar2 & 1) != 0) {
        uVar1 = *(ulong *)(param_1 + 0x50);
        pGVar3 = *(GnssInfo **)(param_1 + 0x58);
      }
      FUN_006b7474(pGVar4,pGVar3,uVar1);
    }
    pGVar4 = this + 0x60;
    GVar2 = param_1[0x60];
    if (((byte)*pGVar4 & 1) == 0) {
      if (((byte)GVar2 & 1) == 0) {
        uVar6 = *(undefined8 *)(param_1 + 0x68);
        uVar5 = *(undefined8 *)(param_1 + 0x60);
        *(undefined8 *)(this + 0x70) = *(undefined8 *)(param_1 + 0x70);
        *(undefined8 *)(this + 0x68) = uVar6;
        *(undefined8 *)pGVar4 = uVar5;
      }
      else {
        FUN_006b73c8(pGVar4,*(undefined8 *)(param_1 + 0x70),*(undefined8 *)(param_1 + 0x68));
      }
    }
    else {
      uVar1 = (ulong)((byte)GVar2 >> 1);
      pGVar3 = param_1 + 0x61;
      if (((byte)GVar2 & 1) != 0) {
        uVar1 = *(ulong *)(param_1 + 0x68);
        pGVar3 = *(GnssInfo **)(param_1 + 0x70);
      }
      FUN_006b7474(pGVar4,pGVar3,uVar1);
    }
  }
  return this;
}

