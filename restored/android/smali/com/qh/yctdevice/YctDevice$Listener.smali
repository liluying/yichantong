.class public interface abstract Lcom/qh/yctdevice/YctDevice$Listener;
.super Ljava/lang/Object;
.source "YctDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qh/yctdevice/YctDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDeviceLineMessage(Ljava/lang/String;)V
.end method

.method public abstract onDiffParamsChanged()V
.end method

.method public abstract onSendToDeviceData([BI)V
.end method
