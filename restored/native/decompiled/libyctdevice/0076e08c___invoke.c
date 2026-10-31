/* Artifact: libyctdevice.so | Address: 0076e08c | Ghidra static pseudocode; types require review. */

/* __invoke(void*) */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::
     await_transform<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void(unsigned_long)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,unsigned_long)>::init_wrapper<boost::asio::detail::initiate_async_write<boost::asio::basic_stream_socket<boost::asio::ip::tcp,boost::asio::any_io_executor>>>,boost::system::error_code*,boost::asio::mutable_buffer,boost::asio::detail::transfer_all_t>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,unsigned_long)>::init_wrapper<boost::asio::detail::initiate_async_write<boost::asio::basic_stream_socket<boost::asio::ip::tcp,boost::asio::any_io_executor>>>,boost::asio::use_awaitable_t<boost::asio::any_io_executor>,boost::system::error_code*,boost::asio::mutable_buffer,boost::asio::detail::transfer_all_t)::{lambda(void*)...*)>::type,boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,void>::type*)
     ::result::await_suspend(std::__ndk1::coroutine_handle<void>)::{lambda(void*)#1}::__invoke
               (void *param_1)

{
  undefined8 *puVar1;
  transfer_all_t *ptVar2;
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
  ptVar2 = *(transfer_all_t **)((long)param_1 + 0x18);
  plVar5 = *(long **)(*(long *)((long)param_1 + 0x28) + 8);
  lVar6 = *plVar5;
  *(undefined8 *)(*(long *)((long)param_1 + 0x28) + 8) = 0;
  local_40 = *plVar5;
  *plVar5 = 0;
  *(undefined1 *)(lVar6 + 0x79) = 1;
  uStack_48 = *puVar1;
  local_50 = 0;
                    /* try { // try from 0076e0e4 to 0076e0ef has its CatchHandler @ 0076e124 */
  initiate_async_write<boost::asio::basic_stream_socket<boost::asio::ip::tcp,boost::asio::any_io_executor>>
  ::operator()(prVar4,(mutable_buffer *)&uStack_48,ptVar2);
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

