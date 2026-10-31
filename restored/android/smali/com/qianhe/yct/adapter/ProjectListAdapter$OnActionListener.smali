.class public interface abstract Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;
.super Ljava/lang/Object;
.source "ProjectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ProjectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionListener"
.end annotation


# virtual methods
.method public abstract onContinueWork(Lcom/qianhe/baselib/base/BaseProEntity;)V
.end method

.method public abstract onMenuAction(ILcom/qianhe/baselib/base/BaseProEntity;)V
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
