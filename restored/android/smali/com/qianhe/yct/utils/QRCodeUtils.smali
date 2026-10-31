.class public abstract Lcom/qianhe/yct/utils/QRCodeUtils;
.super Ljava/lang/Object;
.source "QRCodeUtils.java"


# direct methods
.method public static showQRCode(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/utils/QRCodeUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/utils/QRCodeUtils$1;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
