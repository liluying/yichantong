.class public abstract synthetic Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler$-CC;
.super Ljava/lang/Object;
.source "BaseProjectFragment.java"


# direct methods
.method public static $default$onInstrumentCollectResult(Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 160
    invoke-interface {p0, p1, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->onInstrumentCollectResult([D[D)V

    return-void

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->coords:[D

    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity$InstrumentCollectResult;->geodetic:[D

    invoke-interface {p0, v0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;->onInstrumentCollectResult([D[D)V

    return-void
.end method
