.class public Lcom/qianhe/baselib/bean/ExcavatorParams;
.super Ljava/lang/Object;
.source "ExcavatorParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AD:D

.field public Ax:D

.field public Ay:D

.field public BC:D

.field public BD:D

.field public CD:D

.field public Dx:D

.field public HA:D

.field public pq:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .line 12
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->HA:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->pq:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ay:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ax:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Dx:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->AD:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BC:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->CD:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BD:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
