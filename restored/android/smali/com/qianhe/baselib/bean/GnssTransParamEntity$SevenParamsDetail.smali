.class public Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;
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
    name = "SevenParamsDetail"
.end annotation


# instance fields
.field public dx:D

.field public dy:D

.field public dz:D

.field public rx:D

.field public ry:D

.field public rz:D

.field public scale:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 71
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    return-void
.end method
