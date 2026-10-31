.class Lcom/qianhe/yct/view/map/TianDiTuEngine$YMapHandler;
.super Landroid/os/Handler;
.source "TianDiTuEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/view/map/TianDiTuEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YMapHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 315
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
