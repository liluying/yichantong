/* Artifact: libyctdevice.so | Address: 006d3a5c | Ghidra static pseudocode; types require review. */

/* YctDevice::HandleMsg_GnssInfoRep(std::__ndk1::shared_ptr<google::protobuf::Message>) */

void __thiscall YctDevice::HandleMsg_GnssInfoRep(undefined8 param_1,undefined8 *param_2)

{
  long lVar1;
  __shared_weak_count *this;
  
  if ((((undefined8 *)*param_2 != (undefined8 *)0x0) &&
      (*(undefined **)*param_2 == PTR_vtable_00d71430 + 0x10)) &&
     (this = (__shared_weak_count *)param_2[1], this != (__shared_weak_count *)0x0)) {
    FUN_00cc2b80(1,this + 8);
    lVar1 = FUN_00cc2c10(0xffffffffffffffff,this + 8);
    if (lVar1 == 0) {
      (**(code **)(*(long *)this + 0x10))(this);
      std::__ndk1::__shared_weak_count::__release_weak(this);
      return;
    }
  }
  return;
}

