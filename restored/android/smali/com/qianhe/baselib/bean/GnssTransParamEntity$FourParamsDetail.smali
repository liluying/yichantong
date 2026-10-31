.class public Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;
.super Ljava/lang/Object;
.source "GnssTransParamEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/bean/GnssTransParamEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FourParamsDetail"
.end annotation


# instance fields
.field public dx:D

.field public dy:D

.field public rotation:D

.field public scale:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 60
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    return-void
.end method
