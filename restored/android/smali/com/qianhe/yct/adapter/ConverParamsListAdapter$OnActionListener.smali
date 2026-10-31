.class public interface abstract Lcom/qianhe/yct/adapter/ConverParamsListAdapter$OnActionListener;
.super Ljava/lang/Object;
.source "ConverParamsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ConverParamsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnActionListener"
.end annotation


# virtual methods
.method public abstract onItemClick(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
.end method

.method public abstract onMenuAction(ILcom/qianhe/baselib/bean/GnssTransParamEntity;)V
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
