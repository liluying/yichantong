.class public Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;
.super Ljava/lang/Object;
.source "GnssTransParamControlPointEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dstX:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dst_x"
    .end annotation
.end field

.field public dstY:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dst_y"
    .end annotation
.end field

.field public dstZ:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dst_z"
    .end annotation
.end field

.field public srcX:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "src_x"
    .end annotation
.end field

.field public srcY:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "src_y"
    .end annotation
.end field

.field public srcZ:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "src_z"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyParamType(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    .line 30
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    .line 38
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    .line 39
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    .line 40
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 45
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssTransParamControlPointEntity{srcX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", srcY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", srcZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", dstX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", dstY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", dstZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
