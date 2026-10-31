.class public interface abstract Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestCallBackListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lokhttp3/Call;Ljava/lang/String;)V
.end method

.method public abstract onResponse(Ljava/lang/String;)V
.end method
