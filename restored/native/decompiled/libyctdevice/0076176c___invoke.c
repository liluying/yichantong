/* Artifact: libyctdevice.so | Address: 0076176c | Ghidra static pseudocode; types require review. */

/* __invoke(void*) */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::
     await_transform<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void(boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::ip::basic_resolver<boost::asio::ip::tcp,boost::asio::any_io_executor>::initiate_async_resolve>,boost::system::error_code*,boost::asio::ip::basic_resolver_query<boost::asio::ip::tcp>>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>::init_wrapper<boost::asio::ip::basic_resolver<boost::asio::ip::tcp,boost::asio::any_io_executor>::initiate_async_resolve>,boost::asio::use_awaitable_t<boost::asio::any_io_executor>,boost::...*)>::type,boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,void>::type*)
     ::result::await_suspend(std::__ndk1::coroutine_handle<void>)::{lambda(void*)#1}::__invoke
               (void *param_1)

{
  basic_resolver_query *pbVar1;
  long lVar2;
  long *plVar3;
  undefined8 *puVar4;
  undefined8 *puVar5;
  long lVar6;
  undefined8 local_50;
  undefined8 uStack_48;
  long local_40;
  long local_38;
  
  lVar2 = tpidr_el0;
  local_38 = *(long *)(lVar2 + 0x28);
  pbVar1 = *(basic_resolver_query **)((long)param_1 + 0x18);
                    /* WARNING: Load size is inaccurate */
  puVar4 = *param_1;
  puVar5 = *(undefined8 **)((long)param_1 + 0x10);
  plVar3 = *(long **)(*(long *)((long)param_1 + 0x20) + 8);
  lVar6 = *plVar3;
  *(undefined8 *)(*(long *)((long)param_1 + 0x20) + 8) = 0;
  local_40 = *plVar3;
  *plVar3 = 0;
  uStack_48 = *puVar5;
  local_50 = 0;
  puVar4 = (undefined8 *)*puVar4;
  *(undefined1 *)(lVar6 + 0x79) = 1;
                    /* try { // try from 007617d0 to 007617db has its CatchHandler @ 00761810 */
  resolver_service<boost::asio::ip::tcp>::
  async_resolve<boost::asio::detail::redirect_error_handler<boost::asio::detail::awaitable_handler<boost::asio::any_io_executor,boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>>>,boost::asio::any_io_executor>
            ((resolver_service<boost::asio::ip::tcp> *)*puVar4,(shared_ptr *)(puVar4 + 1),pbVar1,
             (redirect_error_handler *)&uStack_48,(any_io_executor *)(puVar4 + 3));
  awaitable_thread<boost::asio::any_io_executor>::~awaitable_thread
            ((awaitable_thread<boost::asio::any_io_executor> *)&local_40);
  awaitable_thread<boost::asio::any_io_executor>::~awaitable_thread
            ((awaitable_thread<boost::asio::any_io_executor> *)&local_50);
  if (*(long *)(lVar2 + 0x28) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

