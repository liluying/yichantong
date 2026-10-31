/* Artifact: libyctdevice.so | Address: 0076bb8c | Ghidra static pseudocode; types require review. */

/* __invoke(void*) */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::
     await_transform<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void()>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,boost::asio::any_io_executor>::initiate_async_wait>,boost::system::error_code*>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code)>::init_wrapper<boost::asio::basic_waitable_timer<std::__ndk1::chrono::steady_clock,boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>,boost::asio::any_io_executor>::initiate_async_wait>,boost::asio::use_awaitable_t<boost::asio::any_io_executor>,boost::system::error_code*)::{lambda(void*)#1}(auto:1*)#1}>(boost::asio::async_result<boost::asio::use_await...*)>::type,boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,void>::type*)
     ::result::await_suspend(std::__ndk1::coroutine_handle<void>)::{lambda(void*)#1}::__invoke
               (void *param_1)

{
  undefined8 *puVar1;
  long lVar2;
  long *plVar3;
  undefined8 *puVar4;
  long lVar5;
  undefined8 local_50;
  undefined8 uStack_48;
  long local_40;
  long local_38;
  
  lVar2 = tpidr_el0;
  local_38 = *(long *)(lVar2 + 0x28);
  puVar1 = *(undefined8 **)((long)param_1 + 0x10);
                    /* WARNING: Load size is inaccurate */
  puVar4 = *param_1;
  plVar3 = *(long **)(*(long *)((long)param_1 + 0x18) + 8);
  lVar5 = *plVar3;
  *(undefined8 *)(*(long *)((long)param_1 + 0x18) + 8) = 0;
  local_40 = *plVar3;
  *plVar3 = 0;
  uStack_48 = *puVar1;
  *(undefined1 *)(lVar5 + 0x79) = 1;
  local_50 = 0;
  puVar4 = (undefined8 *)*puVar4;
                    /* try { // try from 0076bbec to 0076bbf7 has its CatchHandler @ 0076bc2c */
  deadline_timer_service<boost::asio::detail::chrono_time_traits<std::__ndk1::chrono::steady_clock,boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>>>
  ::
  async_wait<boost::asio::detail::redirect_error_handler<boost::asio::detail::awaitable_handler<boost::asio::any_io_executor>>,boost::asio::any_io_executor>
            ((deadline_timer_service<boost::asio::detail::chrono_time_traits<std::__ndk1::chrono::steady_clock,boost::asio::wait_traits<std::__ndk1::chrono::steady_clock>>>
              *)*puVar4,(implementation_type *)(puVar4 + 1),(redirect_error_handler *)&uStack_48,
             (any_io_executor *)(puVar4 + 8));
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

