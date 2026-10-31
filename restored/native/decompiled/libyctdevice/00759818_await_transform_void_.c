/* Artifact: libyctdevice.so | Address: 00759818 | Ghidra static pseudocode; types require review. */

/* auto 
   boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform<void>(boost::asio::awaitable<void,
   boost::asio::any_io_executor>) const */

void boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform<void>
               (undefined8 *param_1,long param_2,undefined8 *param_3)

{
  long lVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 extraout_x0;
  long lVar4;
  undefined8 uVar5;
  char *local_90;
  char *pcStack_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined *puStack_70;
  ulong local_68;
  system_error asStack_60 [40];
  long local_38;
  
  puVar2 = PTR_instance_00d714a0;
  lVar1 = tpidr_el0;
  local_38 = *(long *)(lVar1 + 0x28);
  if (((*(char *)(**(long **)(param_2 + 8) + 0x7a) != '\0') &&
      (lVar4 = *(long *)(**(long **)(param_2 + 8) + 0x70), lVar4 != 0)) &&
     (*(int *)(lVar4 + 8) != 0)) {
    local_68 = 0;
    if (*(ulong *)(PTR_instance_00d714a0 + 8) >> 1 == 0x595588bd12bf6fe8) {
      local_68 = 3;
    }
    else {
      uVar3 = (**(code **)(*(long *)PTR_instance_00d714a0 + 0x30))(PTR_instance_00d714a0,0x7d);
      local_68 = 2;
      if ((uVar3 & 1) != 0) {
        local_68 = 3;
      }
    }
    local_78 = 0x7d;
    puStack_70 = puVar2;
    local_90 = "D:/Projects/Android/ThirdParty/boost/include/boost/asio/impl/awaitable.hpp";
    pcStack_88 = 
    "auto boost::asio::detail::awaitable_frame_base<boost::asio::any_io_executor>::await_transform(awaitable<T, Executor>) const [Executor = boost::asio::any_io_executor, T = void]"
    ;
    local_80 = DAT_003982c8;
    if ((local_68 & 1) != 0) {
      boost::system::system_error::system_error(asStack_60,(error_code *)&local_78,"co_await");
      if (*(long *)(lVar1 + 0x28) == local_38) {
                    /* try { // try from 0075993c to 00759947 has its CatchHandler @ 00759948 */
        throw_exception<boost::system::system_error>(asStack_60,(source_location *)&local_90);
                    /* catch() { ... } // from try @ 0075993c with catch @ 00759948 */
        std::range_error::~range_error((range_error *)asStack_60);
        if (*(long *)(lVar1 + 0x28) == local_38) {
                    /* WARNING: Subroutine does not return */
          FUN_00cc2efc(extraout_x0);
        }
      }
      goto LAB_0075996c;
    }
  }
  uVar5 = *param_3;
  *param_3 = 0;
  *param_1 = uVar5;
  if (*(long *)(lVar1 + 0x28) == local_38) {
    return;
  }
LAB_0075996c:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

