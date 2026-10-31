.class public Lcom/qianhe/baselib/bean/PointlibEntity;
.super Ljava/lang/Object;
.source "PointlibEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alt:D

.field public coordinateSystem:Ljava/lang/String;

.field public corsHost:Ljava/lang/String;

.field public corsMount:Ljava/lang/String;

.field public corsName:Ljava/lang/String;

.field public corsPassword:Ljava/lang/String;

.field public corsPort:I

.field public corsUserName:Ljava/lang/String;

.field public createTime:J

.field public east:D

.field public elev:D

.field public encod:I

.field public geodeticElev:D

.field public geodeticLat:D

.field public geodeticLon:D

.field public groupId:J

.field public groupLocalId:J

.field public hdop:D

.field public id:J

.field public lat:D

.field public lon:D

.field public name:Ljava/lang/String;

.field public north:D

.field public pointId:J

.field public pointType:I

.field public quality:I

.field public systemType:Ljava/lang/String;

.field public vdop:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 38
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 39
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointType:I

    iget v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointType:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 40
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 41
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    .line 42
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    iget v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    .line 43
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->encod:I

    iget v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->encod:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 45
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public hasGeodeticCoords()Z
    .locals 5

    .line 32
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

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

.method public hashCode()I
    .locals 17

    move-object/from16 v0, p0

    .line 50
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->systemType:Ljava/lang/String;

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget v11, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget v14, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->encod:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/4 v1, 0x1

    aput-object v2, v15, v1

    const/4 v1, 0x2

    aput-object v3, v15, v1

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v6, v15, v1

    const/4 v1, 0x6

    aput-object v7, v15, v1

    const/4 v1, 0x7

    aput-object v8, v15, v1

    const/16 v1, 0x8

    aput-object v9, v15, v1

    const/16 v1, 0x9

    aput-object v10, v15, v1

    const/16 v1, 0xa

    aput-object v11, v15, v1

    const/16 v1, 0xb

    aput-object v12, v15, v1

    const/16 v1, 0xc

    aput-object v13, v15, v1

    const/16 v1, 0xd

    aput-object v14, v15, v1

    invoke-static {v15}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointlibEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", groupLocalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
