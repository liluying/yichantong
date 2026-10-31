.class public interface abstract Lcom/qianhe/yct/utils/AppUpgrader$OnCheckResponseListioner;
.super Ljava/lang/Object;
.source "AppUpgrader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/AppUpgrader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckResponseListioner"
.end annotation


# virtual methods
.method public abstract onCheckResult(Lcom/qianhe/yct/event/ApkListResponse;)V
.end method

.method public abstract onError(Lcom/qianhe/yct/event/ApkListResponse;)V
.end method
