.class public interface abstract Lcom/qianhe/yct/utils/BsPatchManager$OnMergeListener;
.super Ljava/lang/Object;
.source "BsPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/BsPatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMergeListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/qh/bspatch/BsPatch$Result;)V
.end method

.method public abstract onProcessing()V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
