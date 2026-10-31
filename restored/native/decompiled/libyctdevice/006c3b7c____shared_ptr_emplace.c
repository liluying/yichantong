/* Artifact: libyctdevice.so | Address: 006c3b7c | Ghidra static pseudocode; types require review. */

/* std::__ndk1::__shared_ptr_emplace<gnss::GnssCoordConvert,
   std::__ndk1::allocator<gnss::GnssCoordConvert> >::~__shared_ptr_emplace() */

void __thiscall
std::__ndk1::
__shared_ptr_emplace<gnss::GnssCoordConvert,std::__ndk1::allocator<gnss::GnssCoordConvert>>::
~__shared_ptr_emplace
          (__shared_ptr_emplace<gnss::GnssCoordConvert,std::__ndk1::allocator<gnss::GnssCoordConvert>>
           *this)

{
  *(undefined **)this = PTR_vtable_00d711d0 + 0x10;
  __shared_weak_count::~__shared_weak_count((__shared_weak_count *)this);
  return;
}

