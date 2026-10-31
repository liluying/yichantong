# yichantong

YCT APK 与可重编译的混合还原工程。

- [构建说明、测试结果与还原范围](restored/README.md)
- [挖机标定与坐标算法说明](restored/docs/原生算法说明.md)
- [已还原 C 源码](restored/native/recovered/)
- [工具与复现](restored/docs/工具与复现.md)

克隆后先执行 `git lfs install && git lfs pull`，再按构建说明准备 JDK 21；构建 Android 原生模块另需 NDK r27c。

当前为 Smali/资源应用工程与部分 C 算法源码的混合还原，仍有原生接口依赖原始库。完整覆盖范围和设备验证限制见构建说明。构建缓存、APK 产物和调试密钥不纳入源码提交。
