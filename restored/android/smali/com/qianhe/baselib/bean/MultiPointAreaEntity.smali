.class public Lcom/qianhe/baselib/bean/MultiPointAreaEntity;
.super Lcom/qianhe/baselib/base/BaseProEntity;
.source "MultiPointAreaEntity.java"


# instance fields
.field public coordsListJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/qianhe/baselib/base/BaseProEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    .line 20
    iget v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    iget v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    iget-object v3, p1, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    .line 21
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 22
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    iget v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    iget v3, p1, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 13

    .line 35
    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    iget v3, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-wide v9, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, p0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/16 v11, 0xb

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    invoke-static {v11}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPointAreaEntity{id="

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

    const-string v2, ", shovelTipType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", coordsListJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;->coordsListJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
