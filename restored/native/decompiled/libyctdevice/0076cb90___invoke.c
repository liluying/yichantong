/* Artifact: libyctdevice.so | Address: 0076cb90 | Ghidra static pseudocode; types require review. */

/* WARNING: Heritage AFTER dead removal. Example location: x0 : 0x0076cba0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* __invoke(void*) */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::
     await_transform<boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void(unsigned_long)>::initiate<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,unsigned_long)>::init_wrapper<boost::asio::basic_stream_socket<boost::asio::ip::tcp,boost::asio::any_io_executor>::initiate_async_receive>,boost::system::error_code*,boost::asio::mutable_buffer,int>(boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,unsigned_long)>::init_wrapper<boost::asio::basic_stream_socket<boost::asio::ip::tcp,boost::asio::any_io_executor>::initiate_async_receive>,boost::asio::use_awaitable_t<boost::asio::any_io_executor>,boost::system::error_code*,boost::asio::mutable_buffer,int)::{lambda(void*)#1}(auto:1*)#1}>(boost::asio::async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,...*)>::type,boost::asio::detail::awaitable_thread<boost::asio::any_io_executor>*>::value,void>::type*)
     ::result::await_suspend(std::__ndk1::coroutine_handle<void>)::{lambda(void*)#1}::__invoke
               (void *param_1)

{
  undefined8 in_x2;
  
                    /* WARNING: Load size is inaccurate */
  async_result<boost::asio::use_awaitable_t<boost::asio::any_io_executor>,void(unsigned_long)>::
  do_init<boost::asio::async_result<boost::asio::redirect_error_t<boost::asio::use_awaitable_t<boost::asio::any_io_executor>>,void(boost::system::error_code,unsigned_long)>::init_wrapper<boost::asio::basic_stream_socket<boost::asio::ip::tcp,boost::asio::any_io_executor>::initiate_async_receive>,boost::system::error_code*,boost::asio::mutable_buffer,int>
            (*(undefined8 *)((long)param_1 + 0x28),param_1,*param_1,in_x2,
             *(undefined8 *)((long)param_1 + 0x10),*(undefined8 *)((long)param_1 + 0x18),
             *(undefined8 *)((long)param_1 + 0x20));
  return;
}

