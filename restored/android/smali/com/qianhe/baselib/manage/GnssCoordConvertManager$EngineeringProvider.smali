.class public interface abstract Lcom/qianhe/baselib/manage/GnssCoordConvertManager$EngineeringProvider;
.super Ljava/lang/Object;
.source "GnssCoordConvertManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/manage/GnssCoordConvertManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EngineeringProvider"
.end annotation


# virtual methods
.method public abstract queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;
.end method

.method public abstract resolveGnssTransParamForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/GnssTransParamEntity;
.end method
