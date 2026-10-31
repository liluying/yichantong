/* Artifact: libyctdevice.so | Address: 0076803c | Ghidra static pseudocode; types require review. */

/* auto 
   boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform<boost::asio::deferred_async_operation<void
   (std::__ndk1::array<unsigned long, 2ul>, std::exception_ptr, std::exception_ptr),
   boost::asio::experimental::parallel_group<boost::asio::deferred_async_operation<void
   (std::exception_ptr), boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >,
   boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >
   >::initiate_async_wait, boost::asio::experimental::wait_for_one_error,
   std::__ndk1::tuple<boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >,
   boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> > > >
   >(boost::asio::deferred_async_operation<void (std::__ndk1::array<unsigned long, 2ul>,
   std::exception_ptr, std::exception_ptr),
   boost::asio::experimental::parallel_group<boost::asio::deferred_async_operation<void
   (std::exception_ptr), boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >,
   boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >
   >::initiate_async_wait, boost::asio::experimental::wait_for_one_error,
   std::__ndk1::tuple<boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >,
   boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> > > >&&,
   boost::asio::constraint<is_async_operation<boost::asio::deferred_async_operation<void
   (std::__ndk1::array<unsigned long, 2ul>, std::exception_ptr, std::exception_ptr),
   boost::asio::experimental::parallel_group<boost::asio::deferred_async_operation<void
   (std::exception_ptr), boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >,
   boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >
   >::initiate_async_wait, boost::asio::experimental::wait_for_one_error,
   std::__ndk1::tuple<boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> >,
   boost::asio::deferred_async_operation<void (std::exception_ptr),
   boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,
   boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor> > > > >::value,
   int>::type) */

void __thiscall
boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::
await_transform<boost::asio::deferred_async_operation<void(std::__ndk1::array<unsigned_long,2ul>,std::exception_ptr,std::exception_ptr),boost::asio::experimental::parallel_group<boost::asio::deferred_async_operation<void(std::exception_ptr),boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,boost::asio::detail::awaitable_as_function<void,boost::asio::any_io_executor>>,boost::asio::deferred_async_operation<void(std::exception_ptr),boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,boost::asio::detail::awaitable_as_function<void,boost::asio::any_io_executor>>>::initiate_async_wait,boost::asio::experimental::wait_for_one_error,std::__ndk1::tuple<boost::asio::deferred_async_operation<void(std::exception_ptr),boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,boost::asio::detail::awaitable_as_function<void,boost::asio::any_io_executor>>,boost::asio::deferred_async_operation<void(std::exception_ptr),boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>,boost::asio::detail::awaitable_as_function<void,boost::asio::any_io_executor>>>>>
          (undefined8 *param_1_00,awaitable_frame_base<boost::asio::any_io_executor> *this,
          undefined8 param_1)

{
  long lVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 extraout_x0;
  long lVar4;
  char *local_a0;
  char *pcStack_98;
  undefined8 local_90;
  undefined8 local_88;
  undefined *puStack_80;
  ulong local_78;
  system_error asStack_70 [40];
  long local_48;
  
  puVar2 = PTR_instance_00d714a0;
  lVar1 = tpidr_el0;
  local_48 = *(long *)(lVar1 + 0x28);
  if (((*(char *)(**(long **)(this + 8) + 0x7a) != '\0') &&
      (lVar4 = *(long *)(**(long **)(this + 8) + 0x70), lVar4 != 0)) && (*(int *)(lVar4 + 8) != 0))
  {
    local_78 = 0;
    if (*(ulong *)(PTR_instance_00d714a0 + 8) >> 1 == 0x595588bd12bf6fe8) {
      local_78 = 3;
    }
    else {
      uVar3 = (**(code **)(*(long *)PTR_instance_00d714a0 + 0x30))(PTR_instance_00d714a0,0x7d);
      local_78 = 2;
      if ((uVar3 & 1) != 0) {
        local_78 = 3;
      }
    }
    local_88 = 0x7d;
    puStack_80 = puVar2;
    local_a0 = "D:/Projects/Android/ThirdParty/boost/include/boost/asio/impl/awaitable.hpp";
    pcStack_98 = 
    "auto boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform(Op &&, constraint_t<is_async_operation<Op>::value>) [Executor = boost::asio::any_io_executor, Op = boost::asio::deferred_async_operation<void (std::array<unsigned long, 2>, std::exception_ptr, std::exception_ptr), boost::asio::experimental::parallel_group<boost::asio::deferred_async_operation<void (std::exception_ptr), boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>, boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor>>, boost::asio::deferred_async_operation<void (std::exception_ptr), boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>, boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor>>>::initiate_async_wait, boost::asio::experimental::wait_for_one_error, std::tuple<boost::asio::deferred_async_operation<void (std::exception_ptr), boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>, boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor>>, boost::asio::deferred_async_operation<void (std::exception_ptr), boost::asio::detail::initiate_co_spawn<boost::asio::any_io_executor>, boost::asio::detail::awaitable_as_function<void, boost::asio::any_io_executor>>>>]"
    ;
    local_90 = DAT_00398070;
    if ((local_78 & 1) != 0) {
      boost::system::system_error::system_error(asStack_70,(error_code *)&local_88,"co_await");
      if (*(long *)(lVar1 + 0x28) == local_48) {
                    /* try { // try from 00768170 to 0076817b has its CatchHandler @ 0076817c */
        throw_exception<boost::system::system_error>(asStack_70,(source_location *)&local_a0);
                    /* catch() { ... } // from try @ 00768170 with catch @ 0076817c */
        std::range_error::~range_error((range_error *)asStack_70);
        if (*(long *)(lVar1 + 0x28) == local_48) {
                    /* WARNING: Subroutine does not return */
          FUN_00cc2efc(extraout_x0);
        }
      }
      goto LAB_007681a0;
    }
  }
  *param_1_00 = param_1;
  param_1_00[1] = this;
  param_1_00[2] = 0;
  if (*(long *)(lVar1 + 0x28) == local_48) {
    return;
  }
LAB_007681a0:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

