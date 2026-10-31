/* Artifact: libyctdevice.so | Address: 00763cb4 | Ghidra static pseudocode; types require review. */

/* boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   void 
   (boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void (boost::system::error_code,
   boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,
   boost::asio::any_io_executor> >, boost::system::error_code*,
   boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,
   boost::asio::detail::default_connect_condition>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void (boost::system::error_code,
   boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,
   boost::asio::any_io_executor> >, boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   boost::system::error_code*, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,
   boost::asio::detail::default_connect_condition)::{lambda(auto:1*)#1}>(boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   void 
   (boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void (boost::system::error_code,
   boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,
   boost::asio::any_io_executor> >, boost::system::error_code*,
   boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,
   boost::asio::detail::default_connect_condition>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void (boost::system::error_code,
   boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,
   boost::asio::any_io_executor> >, boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   boost::system::error_code*, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,
   boost::asio::detail::default_connect_condition)::{lambda(auto:1*)#1},
   std::__ndk1::enable_if<is_convertible<boost::asio::result_of<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   void 
   (boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void (boost::system::error_code,
   boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,
   boost::asio::any_io_executor> >, boost::system::error_code*,
   boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,
   boost::asio::detail::default_connect_condition>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>
   >, void (boost::system::error_code,
   boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,
   boost::asio::any_io_executor> >, boost::asio::use_awaitable_t<boost::asio::any_io_executor>,
   boost::system::error_code*, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,
   boost::asio::detail::default_connect_condition)::{lambda(auto:1*)#1}
   (boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>*)>::type,
   boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,
   void>::type*)::result::await_suspend(std::__ndk1::coroutine_handle<void>) */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform<boost
     ::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void(boost::
     asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::initiate<boost::asio::async_result<boost::
     asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::
     system::error_code,boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost
     ::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,boost::asio::
     any_io_executor>>,boost::system::error_code*,boost::asio::ip::basic_resolver_results<boost::
     asio::ip::tcp>,boost::asio::detail::default_connect_condition>(boost::asio::async_result<boost
     ::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost
     ::system::error_code,boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::
     init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,boost::asio
     ::any_io_executor>>,boost::asio::use_awaitable_t<boost::asio::any_io_executor>,boost::system::
     error_code*,boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,boost::asio::detail::
     default_connect_condition)::{lambda(auto:1*)#1}>(boost::asio::async_result<boost::asio::
     use_awaitable_t<boost::asio::any_io_executor>,void(boost::asio::ip::basic_endpoint<boost::asio
     ::ip::tcp>)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::
     use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,boost::asio::ip::
     basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::
     initiate_async_range_connect<boost::asio::ip::tcp,boost::asio::any_io_executor>>,boost::system
     ::error_code*,boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,boost::asio::detail
     ::default_connect_condition>(boost::asio::async_result<boost::asio::redirect_error_t<boost::
     asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,boost::asio
     ::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::
     initiate_async_range_connect<boost::asio::ip::tcp,boost::asio::any_io_executor>>,boost::asio::
     use_awaitable_t<boost::asio::any_io_executor>,boost::system::error_code*,boost::asio::ip::
     basic_resolver_results<boost::asio::ip::tcp>,boost::asio::detail::default_connect_condition)::
     {lambda(auto:1*)#1},std::__ndk1::enable_if<is_convertible<boost::asio::result_of<boost::asio::
     async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void(boost::asio::ip::
     basic_endpoint<boost::asio::ip::tcp>)>::initiate<boost::asio::async_result<boost::asio::
     redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system
     ::error_code,boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio
     ::detail::initiate_async_range_connect<boost::asio::ip::tcp,boost::asio::
     any_io_executor>>,boost::system::error_code*,boost::asio::ip::basic_resolver_results<boost::
     asio::ip::tcp>,boost::asio::detail::default_connect_condition>(boost::asio::async_result<boost
     ::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost
     ::system::error_code,boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::
     init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,boost::asio
     ::any_io_executor>>,boost::asio::use_awaitable_t<boost::asio::any_io_executor>,boost::system::
     error_code*,boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,boost::asio::detail::
     default_connect_condition)::{lambda(auto:1*)#1}(boost::asio::detail::awaitable_frame_base<boost
     ::asio::any_io_executor>*)>::type,boost::asio::detail::awaitable_thread<boost::asio::
     any_io_executor>*>::value,void>::type*)::result::await_suspend(std::__ndk1::
     coroutine_handle<void>_(long param_1)

{
  undefined8 *puVar1;
  
  puVar1 = *(undefined8 **)(*(long *)(param_1 + 0x28) + 0x20);
  *puVar1 = PTR___invoke_00d720a0;
  puVar1[1] = param_1;
  return;
}

