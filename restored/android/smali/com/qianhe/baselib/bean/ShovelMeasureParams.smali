.class public Lcom/qianhe/baselib/bean/ShovelMeasureParams;
.super Ljava/lang/Object;
.source "ShovelMeasureParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AB:D

.field public AT:D

.field public G1:D

.field public G2:D

.field public G3:D

.field public LR:D

.field public Ly:D

.field public NA:D

.field public NT:D

.field public Ry:D


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

    .line 15
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resolveLR()D
    .locals 7

    .line 25
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 28
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    return-wide v2

    .line 29
    :cond_2
    :goto_0
    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move-wide v4, v0

    :goto_1
    add-double/2addr v4, v0

    return-wide v4
.end method

.method public syncLRWithHalfWidths()V
    .locals 11

    .line 36
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_0

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_0

    div-double/2addr v0, v2

    .line 37
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    return-void

    :cond_0
    cmpl-double v6, v0, v4

    if-nez v6, :cond_3

    .line 38
    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_1

    iget-wide v8, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    cmpl-double v10, v8, v4

    if-eqz v10, :cond_3

    .line 39
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    cmpl-double v2, v0, v4

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v6

    :goto_0
    add-double/2addr v6, v0

    iput-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    return-void

    :cond_3
    cmpl-double v6, v0, v4

    if-eqz v6, :cond_4

    .line 40
    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_4

    div-double/2addr v0, v2

    .line 41
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    :cond_4
    return-void
.end method

.method public usesDistanceMeasure()Z
    .locals 5

    .line 20
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
