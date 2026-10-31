.class public interface abstract Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;
.super Ljava/lang/Object;
.source "EngineeringListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/EngineeringListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionListener"
.end annotation


# virtual methods
.method public abstract onItemClick(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
.end method

.method public abstract onMenuAction(ILcom/qianhe/baselib/bean/EngineeringEntity;)V
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
