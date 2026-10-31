/* Artifact: libyctdevice.so | Address: 00706294 | Ghidra static pseudocode; types require review. */

/* std::__ndk1::__shared_ptr_emplace<protocol::yct_device::GnssInfoReq,
   std::__ndk1::allocator<protocol::yct_device::GnssInfoReq> >::~__shared_ptr_emplace() */

void __thiscall
std::__ndk1::
__shared_ptr_emplace<protocol::yct_device::GnssInfoReq,std::__ndk1::allocator<protocol::yct_device::GnssInfoReq>>
::~__shared_ptr_emplace
          (__shared_ptr_emplace<protocol::yct_device::GnssInfoReq,std::__ndk1::allocator<protocol::yct_device::GnssInfoReq>>
           *this)

{
  *(undefined **)this = PTR_vtable_00d71370 + 0x10;
  __shared_weak_count::~__shared_weak_count((__shared_weak_count *)this);
  return;
}

