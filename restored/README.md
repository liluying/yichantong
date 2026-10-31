# YCT 可重编译工程与原生算法还原

已实际构建出 APK，并将部分原生算法恢复为可编译 C 源码。**这仍是混合还原工程：不是全部 `.so` 源码，不是原始 Java/Kotlin Gradle 工程。** Android 应用层以 Smali + 资源为可重编译输入；Java 反编译代码仅供阅读。原始仓库 `/workspace/yichantong` 未修改。

## 构建 Android APK

需要 Linux、Bash、Python 3、完整 JDK 21；Apktool 2.12.1 与 Google apksig 8.9.2 已随工程放在 `tools/`。无需另装 Android SDK 即可重编译此 Smali 工程。

```bash
cd /workspace/yichantong/restored
export JAVA_HOME=/workspace/apk-analysis/tools/jdk-21.0.8+9
./build.sh
```

当前机器已安装上述 JDK。迁移机器时将 JAVA_HOME 指向本地 JDK 21。产物：

- `build/yct-restored-debug.apk`：应用入口改为已恢复的 `YCTApplication`，重编译完整业务 DEX，保留原生库。
- `build/yct-restored-unsigned.apk`：对应未签名包。

脚本生成本地调试密钥（标准调试口令 android），验证 v1/v2/v3 签名。调试签名与原厂签名不同，不能覆盖安装原厂签名的同包名应用；不要为了安装而删除现有用户数据。

## 构建使用还原 C 源码的混合版 APK

```bash
export ANDROID_NDK_HOME=/workspace/apk-analysis/tools/android-ndk-r27c
./build-hybrid.sh
```

产物为 `build/yct-restored-hybrid-debug.apk`。它在 ARM64、ARMv7 下使用重新编译的 `libexcavator.so`：12 个接口由还原 C 源码实现，9 个接口由 `excavator_fallback.c` 明确转发给原始 `libexcavator_original.so`。若原始依赖或符号缺失，会明确报错终止，不返回伪造结果。`evidence/native-coverage.json` 列出每个接口归属。

混合版已通过构建、签名与静态打包校验，**尚未在 Android 设备上验证动态加载、蓝牙、传感器或真实标定流程**。坐标算法作为独立原生模块交付，目前未替换应用原有 JNI 调用。

## 已还原为 C 源码的算法

源码在 `native/recovered/`，注释标明原 ELF 地址。函数名与结构字段来自导出符号、Java/JNA 接口及 ARM64 指令分析；部分局部变量名是根据用途推定的。

| 文件 | 可编译实现 |
|---|---|
| `excavator_recovered.c` | 初始化、模式读取、铲斗参数校验、距离生成铲斗点、铲斗读写、版本查询、铲斗二进制序列化/反序列化、模式 1.0 标定 |
| `excavator_geometry.c` | 模式 2.0、3.0 标定；三角形约束、几何点推导、四元数姿态补偿、传感器角度补偿、内部姿态缓存 |
| `gnss_transform.c` | 四参数正反变换、七参数正反变换、四参数拟合与残差计算 |
| `excavator_fallback.c` | 9 个未还原接口的显式转发，**不是算法源码实现** |

### 构建独立原生库

```bash
make -C native
# 或
cmake -S native -B native/build/cmake-host -DCMAKE_BUILD_TYPE=Release
cmake --build native/build/cmake-host -j 4
# Android 两种架构
./native/build-android.sh
```

主机 Make、CMake 与 Android NDK r27c 交叉编译均已实际通过。Android 产物在 `native/build/android/{arm64-v8a,armeabi-v7a}/`。独立 `libexcavator_recovered.so` 是部分 API，不能直接覆盖完整原库；需要完整 API 时使用混合目标及其原始依赖。

## 已执行的验证

原生验证使用 Unicorn 仿真原始 ARM64 机器指令，与主机编译的 C 源码比较。libc/libm 调用使用显式实现的测试钩子；遇到未支持调用会失败。它不等同于在 Android 或挖机硬件上运行。

| 检查 | 结果 |
|---|---|
| 10 个基础/模式 1 接口 | 7535 个对照用例通过 |
| 模式 2.0 | 500 个用例通过，其中 113 次成功标定，其余为输入约束失败路径 |
| 模式 3.0 | 500 个用例通过，其中 127 次成功标定，其余为输入约束失败路径 |
| 四/七参数变换与四参数拟合 | 840 个用例通过 |
| 原生总计 | 9375 个对照用例通过；不是所有输入或所有函数的等价性证明 |
| APK 业务类 | Smali 中的 12358 个类全部重新组装，清单的 88 个组件类存在 |
| 原始兼容版原生库 | 26 个库与构建输入逐字节相同 |
| 混合版 | 替换的两个库匹配编译产物；两个原始回退库逐字节保留；其余应用内容一致 |
| APK 签名 | 两个 APK 的 v1/v2/v3 均验证通过 |

完整 312 字节状态用于模式 2/3 的对照，浮点字段使用记录在测试中的数值容差。ARMv7 只验证了交叉编译和导出接口，未进行指令级等价性测试。零比例/退化数据的原始日志分支、所有 NaN/Inf 组合以及硬件误差特性没有完整覆盖。

复现测试：

```bash
python3 -m venv tools/test-venv
./tools/test-venv/bin/pip install -r requirements-tests.txt
# 先构建两个 APK 与 Android 原生库，再运行
TEST_PYTHON="$PWD/tools/test-venv/bin/python" ./test.sh
```

本机测试解释器为 `/workspace/apk-analysis/tools/venv/bin/python`。证据保存在 `evidence/`，测试脚本在 `tests/`。

## 尚未还原的范围

挖机库共 21 个导出 API，目前 12 个由源码实现；以下 9 个仍依赖原始库：

- `libexcavator_cali_mode_1_1`、`libexcavator_cali_mode_2_1`：多样本/优化标定。
- `libexcavator_adjust_height`、`libexcavator_get_height_stdev`：高程微调与统计。
- `libexcavator_adjust_rtk`、`libexcavator_get_rtk_stdev`、`libexcavator_adjust_hab_vertical`：RTK 与几何微调。
- `libexcavator_to_binary`、`libexcavator_from_binary`：完整标定状态的二进制编码，区别于已还原的铲斗序列化。

七参数拟合、投影/椭球转换、CAD 引擎及差分通信库等也未全部还原为独立源码。它们不能因为存在反编译文件就算作已完成源码替换。

`native/decompiled/` 是 Ghidra 11.4.2 静态伪代码，包含挖机库、GNSS 解析库、设备库的选定函数和 CAD 的 JNI 入口。索引记录地址、名称与导出状态。`libexcavator-typed` 使用了人工推定类型，只作为辅助分析；应以原始指令和对照测试为准。伪代码存在不完整类型、错误 ABI 推断和无法直接编译的表达式。

CAD 的 `JNI_OnLoad` 检查调用方包名/签名，`parseDwg`、`parseDxf` 在验证失败时拒绝解析。调试重签包不具有原厂签名，CAD 功能可能不可用；此检查保留。缺少 Android 设备和原厂签名匹配条件，因此没有宣称重建包的全部应用功能可用。

自有命名空间的 Java 阅读参考随工程放在 `java-reference/`；包含第三方库的完整 Java 阅读参考继续位于 `/workspace/apk-analysis/output/recovered-jadx/sources/`。它没有被冒充为已通过 javac 的原始工程；JADX 的 3 项 Compose 反编译错误也仍然存在。

## 工具来源

- REA 6.8.0：原 APK 与加载器 Evidence 已保留在 `/workspace/apk-analysis/output/rea-*.json`。
- Ghidra 11.4.2：官方 NSA 发布包，用于独立静态原生分析；本轮没有宣称通过 REA 的新版 Ghidra 适配器执行。
- Apktool 2.12.1：官方 iBotPeaches 发布包。
- apksig 8.9.2：Google Android Maven。
- Android NDK r27c：Google 官方发布包（27.2.12479018）。

`docs/工具与复现.md` 记录下载链接与分析命令。工程压缩包不包含体积较大的 JDK、NDK、Ghidra 安装目录；当前云机器已保留这些工具。
