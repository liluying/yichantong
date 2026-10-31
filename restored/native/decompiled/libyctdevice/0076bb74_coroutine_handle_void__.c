/* Artifact: libyctdevice.so | Address: 0076bb74 | Ghidra static pseudocode; types require review. */

/* boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   void 
   ()>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void
   (boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,
   boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,
   boost::asio::any_io_executor>::initiate_async_wait>,
   boost::system::error_code*>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void
   (boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,
   boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,
   boost::asio::any_io_executor>::initiate_async_wait>,
   boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   boost::system::error_code*)::{lambda(auto:1*)#1}>(boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   void 
   ()>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void
   (boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,
   boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,
   boost::asio::any_io_executor>::initiate_async_wait>,
   boost::system::error_code*>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void
   (boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,
   boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,
   boost::asio::any_io_executor>::initiate_async_wait>,
   boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   boost::system::error_code*)::{lambda(auto:1*)#1},
   std::__ndk1::enable_if<is_convertible<boost::asio::result_of<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   void 
   ()>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void
   (boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,
   boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,
   boost::asio::any_io_executor>::initiate_async_wait>,
   boost::system::error_code*>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void
   (boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,
   boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,
   boost::asio::any_io_executor>::initiate_async_wait>,
   boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   boost::system::error_code*)::{lambda(auto:1*)#1}
   (boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>*)>::type,
   boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,
   void>::type*)::result::await_suspend(std::__ndk1::coroutine_handle<void>) */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform<boost
     ::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void()>::
     initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::
     use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code)>::
     init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,boost::asio::
     wait_traits<std::__ndk1::chrono::steady_clock>,boost::asio::any_io_executor>::
     initiate_async_wait>,boost::system::error_code*>(boost::asio::async_result<boost::asio::
     redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system
     ::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::
     steady_clock,boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,boost::asio::
     any_io_executor>::initiate_async_wait>,boost::asio::use_awaitable_t<boost::asio::
     any_io_executor>,boost::system::error_code*)::{lambda(auto:1*)#1}>(boost::asio::
     async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void()>::initiate<boost
     ::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::
     any_io_executor>>,void(boost::system::error_code)>::init_wrapper<boost::asio::
     basic_waitable_timer<std::__ndk1::chrono::steady_clock,boost::asio::wait_traits<std::__ndk1::
     chrono::steady_clock>,boost::asio::any_io_executor>::initiate_async_wait>,boost::system::
     error_code*>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::
     use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code)>::
     init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,boost::asio::
     wait_traits<std::__ndk1::chrono::steady_clock>,boost::asio::any_io_executor>::
     initiate_async_wait>,boost::asio::use_awaitable_t<boost::asio::any_io_executor>,boost::system::
     error_code*)::{lambda(auto:1*)#1},std::__ndk1::enable_if<is_convertible<boost::asio::
     result_of<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::
     any_io_executor>,void()>::initiate<boost::asio::async_result<boost::asio::
     redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system
     ::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::
     steady_clock,boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,boost::asio::
     any_io_executor>::initiate_async_wait>,boost::system::error_code*>(boost::asio::
     async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::
     any_io_executor>>,void(boost::system::error_code)>::init_wrapper<boost::asio::
     basic_waitable_timer<std::__ndk1::chrono::steady_clock,boost::asio::wait_traits<std::__ndk1::
     chrono::steady_clock>,boost::asio::any_io_executor>::initiate_async_wait>,boost::asio::
     use_awaitable_t<boost::asio::any_io_executor>,boost::system::error_code*)::
     {lambda(auto:1*)#1}(boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>*)>
     ::type,boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,void>::
     type*)::result::await_suspend(std::__ndk1::coroutine_handle<void>_(long param_1)

{
  undefined8 *puVar1;
  
  puVar1 = *(undefined8 **)(*(long *)(param_1 + 0x18) + 0x20);
  *puVar1 = PTR___invoke_00d72168;
  puVar1[1] = param_1;
  return;
}

