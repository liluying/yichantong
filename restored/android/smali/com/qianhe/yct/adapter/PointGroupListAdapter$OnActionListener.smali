.class public interface abstract Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;
.super Ljava/lang/Object;
.source "PointGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/PointGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionListener"
.end annotation


# virtual methods
.method public abstract onClick(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
.end method

.method public abstract onMenuAction(ILcom/qianhe/baselib/bean/PointGroupEntity;)V
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
