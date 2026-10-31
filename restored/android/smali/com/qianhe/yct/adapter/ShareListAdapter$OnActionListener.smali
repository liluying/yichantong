.class public interface abstract Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;
.super Ljava/lang/Object;
.source "ShareListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ShareListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionListener"
.end annotation


# virtual methods
.method public abstract onClick(Lcom/qianhe/baselib/bean/ShareEntity;)V
.end method

.method public abstract onMenuAction(ILcom/qianhe/baselib/bean/ShareEntity;)V
.end method

.method public abstract onSelItem(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
