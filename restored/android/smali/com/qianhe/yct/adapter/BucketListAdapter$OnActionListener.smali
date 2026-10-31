.class public interface abstract Lcom/qianhe/yct/adapter/BucketListAdapter$OnActionListener;
.super Ljava/lang/Object;
.source "BucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/BucketListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionListener"
.end annotation


# virtual methods
.method public abstract onClick(Lcom/qianhe/baselib/bean/ShovelEntity;)V
.end method

.method public abstract onMenuAction(ILcom/qianhe/baselib/bean/ShovelEntity;)V
.end method

.method public abstract onSelItem(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
