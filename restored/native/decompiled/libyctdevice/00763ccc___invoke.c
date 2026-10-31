/* Artifact: libyctdevice.so | Address: 00763ccc | Ghidra static pseudocode; types require review. */

/* __invoke(void*) */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::
     await_transform<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void(boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,boost::asio::any_io_executor>>,boost::system::error_code*,boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>,boost::asio::detail::default_connect_condition>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::detail::initiate_async_range_connect<boost::asio::ip::tcp,boost::asio::any_io_executor>>,boost::asio::use_awaitable_t<boost::asio::any_io_exec...*)>::type,boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,void>::type*)
     ::result::await_suspend(std::__ndk1::coroutine_handle<void>)::{lambda(void*)#1}::__invoke
               (void *param_1)

{
  undefined8 *puVar1;
  default_connect_condition *pdVar2;
  long lVar3;
  redirect_error_handler *prVar4;
  long *plVar5;
  long lVar6;
  undefined8 local_50;
  undefined8 uStack_48;
  long local_40;
  long local_38;
  
  lVar3 = tpidr_el0;
  local_38 = *(long *)(lVar3 + 0x28);
                    /* WARNING: Load size is inaccurate */
  prVar4 = *param_1;
  puVar1 = *(undefined8 **)((long)param_1 + 0x10);
  pdVar2 = *(default_connect_condition **)((long)param_1 + 0x18);
  plVar5 = *(long **)(*(long *)((long)param_1 + 0x28) + 8);
  lVar6 = *plVar5;
  *(undefined8 *)(*(long *)((long)param_1 + 0x28) + 8) = 0;
  local_40 = *plVar5;
  *plVar5 = 0;
  *(undefined1 *)(lVar6 + 0x79) = 1;
  uStack_48 = *puVar1;
  local_50 = 0;
                    /* try { // try from 00763d24 to 00763d2f has its CatchHandler @ 00763d64 */
  initiate_async_range_connect<boost::asio::ip::tcp,boost::asio::any_io_executor>::operator()
            (prVar4,(basic_resolver_results *)&uStack_48,pdVar2);
  awaitable_thread<boost::asio::any_io_executor>::~awaitable_thread
            ((awaitable_thread<boost::asio::any_io_executor> *)&local_40);
  awaitable_thread<boost::asio::any_io_executor>::~awaitable_thread
            ((awaitable_thread<boost::asio::any_io_executor> *)&local_50);
  if (*(long *)(lVar3 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

