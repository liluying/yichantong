.class public Lcom/qianhe/baselib/bean/ThreePointAreaEntity;
.super Lcom/qianhe/baselib/base/BaseProEntity;
.source "ThreePointAreaEntity.java"


# instance fields
.field public depthA:D

.field public depthB:D

.field public depthC:D

.field public east1:D

.field public east2:D

.field public east3:D

.field public elev1:D

.field public elev2:D

.field public elev3:D

.field public lat1:D

.field public lat2:D

.field public lat3:D

.field public lon1:D

.field public lon2:D

.field public lon3:D

.field public north1:D

.field public north2:D

.field public north3:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/qianhe/baselib/base/BaseProEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 28
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    .line 29
    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    .line 31
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    .line 32
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthB:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthB:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    iget v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    iget v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    iget-wide v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 30

    move-object/from16 v0, p0

    .line 38
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget-wide v14, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v17, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v18, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v19, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthB:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v20, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v21, v1

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v24, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v25, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v26, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v27, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v28, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v15, v2, v29

    const/4 v15, 0x1

    aput-object v16, v2, v15

    const/4 v15, 0x2

    aput-object v3, v2, v15

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v6, v2, v3

    const/4 v3, 0x6

    aput-object v7, v2, v3

    const/4 v3, 0x7

    aput-object v8, v2, v3

    const/16 v3, 0x8

    aput-object v9, v2, v3

    const/16 v3, 0x9

    aput-object v10, v2, v3

    const/16 v3, 0xa

    aput-object v11, v2, v3

    const/16 v3, 0xb

    aput-object v12, v2, v3

    const/16 v3, 0xc

    aput-object v13, v2, v3

    const/16 v3, 0xd

    aput-object v14, v2, v3

    const/16 v3, 0xe

    aput-object v17, v2, v3

    const/16 v3, 0xf

    aput-object v18, v2, v3

    const/16 v3, 0x10

    aput-object v19, v2, v3

    const/16 v3, 0x11

    aput-object v20, v2, v3

    const/16 v3, 0x12

    aput-object v21, v2, v3

    const/16 v3, 0x13

    aput-object v22, v2, v3

    const/16 v3, 0x14

    aput-object v23, v2, v3

    const/16 v3, 0x15

    aput-object v24, v2, v3

    const/16 v3, 0x16

    aput-object v25, v2, v3

    const/16 v3, 0x17

    aput-object v26, v2, v3

    const/16 v3, 0x18

    aput-object v27, v2, v3

    const/16 v3, 0x19

    aput-object v28, v2, v3

    const/16 v3, 0x1a

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreePointAreaEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lon1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lat1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", east1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", north1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", elev1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lon2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lat2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", east2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", north2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", elev2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lon3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lon3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lat3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->lat3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", east3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->east3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", north3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->north3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", elev3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->elev3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", depthA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthA:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", depthB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthB:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", depthC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->depthC:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", projectUUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", projectId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", createTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", coordinateSystem=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->coordinateSystem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", corsName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", corsHost=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", corsPort="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", corsUserName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", corsPassword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", corsMount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", editState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseStationLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", baseStationLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", baseStationElev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
