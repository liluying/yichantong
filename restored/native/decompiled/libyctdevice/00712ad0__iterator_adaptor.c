/* Artifact: libyctdevice.so | Address: 00712ad0 | Ghidra static pseudocode; types require review. */

/* boost::iterators::iterator_adaptor<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,
   std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >, std::__ndk1::__wrap_iter<char*>
   >, boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*> >, boost::use_default,
   boost::use_default>, boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*> >,
   std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>, std::__ndk1::allocator<char> >,
   boost::use_default, std::__ndk1::basic_string<char, std::__ndk1::char_traits<char>,
   std::__ndk1::allocator<char> >, boost::use_default>::~iterator_adaptor() */

void __thiscall
boost::iterators::
iterator_adaptor<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__wrap_iter<char*>>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*>>,boost::use_default,boost::use_default>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*>>,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::use_default,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::use_default>
::~iterator_adaptor(iterator_adaptor<boost::iterators::transform_iterator<boost::algorithm::detail::copy_iterator_rangeF<std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,std::__ndk1::__wrap_iter<char*>>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*>>,boost::use_default,boost::use_default>,boost::algorithm::split_iterator<std::__ndk1::__wrap_iter<char*>>,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::use_default,std::__ndk1::basic_string<char,std::__ndk1::char_traits<char>,std::__ndk1::allocator<char>>,boost::use_default>
                    *this)

{
  undefined8 *puVar1;
  
  puVar1 = *(undefined8 **)this;
  if (puVar1 != (undefined8 *)0x0) {
    if ((((ulong)puVar1 & 1) == 0) && ((code *)*puVar1 != (code *)0x0)) {
                    /* try { // try from 00712af0 to 00712b07 has its CatchHandler @ 00712b18 */
      (*(code *)*puVar1)(this + 8,this + 8,2);
    }
    *(undefined8 *)this = 0;
  }
  return;
}

