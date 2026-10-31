.class public Lcom/qianhe/baselib/bean/OnePointAreaEntity;
.super Lcom/qianhe/baselib/base/BaseProEntity;
.source "OnePointAreaEntity.java"


# instance fields
.field public depth:D

.field public east:D

.field public elev:D

.field public lat:D

.field public lon:D

.field public north:D

.field public ratioE:D

.field public ratioN:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/qianhe/baselib/base/BaseProEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 31
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    .line 32
    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    .line 33
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    iget v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    iget v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

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
    .locals 20

    move-object/from16 v0, p0

    .line 40
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget v8, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v0, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v17, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v18, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v15, v2, v19

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

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnePointAreaEntity{lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", east="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->east:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", north="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->north:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", elev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->elev:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->depth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ratioN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioN:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ratioE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;->ratioE:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
