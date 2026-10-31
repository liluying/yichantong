.class public interface abstract Lcom/qh/yctdevice/YctDevice$FmwUpdateListener;
.super Ljava/lang/Object;
.source "YctDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/YctDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FmwUpdateListener"
.end annotation


# virtual methods
.method public abstract onUpdateFailed(ILjava/lang/String;)V
.end method

.method public abstract onUpdateProgress(II)V
.end method

.method public abstract onUpdateSuccessed()V
.end method
