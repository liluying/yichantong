.class public Lcom/qianhe/baselib/bean/WaGouEntity;
.super Lcom/qianhe/baselib/base/BaseProEntity;
.source "WaGouEntity.java"


# instance fields
.field public advancedType:I

.field public collectType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public depth:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public depthA:D

.field public depthB:D

.field public east1:D

.field public east2:D

.field public eastH:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public fence:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public leftBottomWidth:D

.field public leftSlopeRatio:D

.field public length:D

.field public north1:D

.field public north2:D

.field public northH:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public openlineType:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public quality1:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public quality2:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public qualityH:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ratio:D

.field public rightBottomWidth:D

.field public rightSlopeRatio:D

.field public targetElevation1:D

.field public targetElevation2:D

.field public targetElevationBenchmark:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public targetElevationH:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public targetLat1:D

.field public targetLat2:D

.field public targetLatBenchmark:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public targetLatH:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public targetLon1:D

.field public targetLon2:D

.field public targetLonBenchmark:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public targetLonH:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tickA:I

.field public tickB:I

.field public width:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/qianhe/baselib/base/BaseProEntity;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 71
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 72
    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonH:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonH:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatH:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatH:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->eastH:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->eastH:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->northH:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->northH:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationH:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationH:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonBenchmark:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonBenchmark:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatBenchmark:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatBenchmark:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->quality1:I

    iget v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->quality1:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->quality2:I

    iget v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->quality2:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->qualityH:I

    iget v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->qualityH:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->openlineType:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->openlineType:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->collectType:I

    iget v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->collectType:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->fence:[D

    iget-object v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->fence:[D

    invoke-static {v1, v2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    iget v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    iget v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    if-ne v1, v2, :cond_1

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

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    .line 73
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    iget p1, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 48

    move-object/from16 v0, p0

    .line 78
    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonH:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatH:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget-wide v14, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->eastH:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->northH:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v17, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationH:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v18, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonBenchmark:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v19, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatBenchmark:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v20, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->quality1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v21, v1

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->quality2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v22, v1

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->qualityH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->fence:[D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->openlineType:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->collectType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v28, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v29, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v30, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v31, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v32, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v33, v1

    iget v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v34, v1

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v35, v1

    iget v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->showUnit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v37, v1

    move-object/from16 v36, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v38, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v39, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v40, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v41, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v42, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v43, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v44, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v45, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v46, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, v0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v47, 0x0

    aput-object v15, v0, v47

    const/4 v15, 0x1

    aput-object v16, v0, v15

    const/4 v15, 0x2

    aput-object v3, v0, v15

    const/4 v3, 0x3

    aput-object v4, v0, v3

    const/4 v3, 0x4

    aput-object v5, v0, v3

    const/4 v3, 0x5

    aput-object v6, v0, v3

    const/4 v3, 0x6

    aput-object v7, v0, v3

    const/4 v3, 0x7

    aput-object v8, v0, v3

    const/16 v3, 0x8

    aput-object v9, v0, v3

    const/16 v3, 0x9

    aput-object v10, v0, v3

    const/16 v3, 0xa

    aput-object v11, v0, v3

    const/16 v3, 0xb

    aput-object v12, v0, v3

    const/16 v3, 0xc

    aput-object v13, v0, v3

    const/16 v3, 0xd

    aput-object v14, v0, v3

    const/16 v3, 0xe

    aput-object v17, v0, v3

    const/16 v3, 0xf

    aput-object v18, v0, v3

    const/16 v3, 0x10

    aput-object v19, v0, v3

    const/16 v3, 0x11

    aput-object v20, v0, v3

    const/16 v3, 0x12

    aput-object v21, v0, v3

    const/16 v3, 0x13

    aput-object v24, v0, v3

    const/16 v3, 0x14

    aput-object v22, v0, v3

    const/16 v3, 0x15

    aput-object v23, v0, v3

    const/16 v3, 0x16

    aput-object v25, v0, v3

    const/16 v3, 0x17

    aput-object v26, v0, v3

    const/16 v3, 0x18

    aput-object v27, v0, v3

    const/16 v3, 0x19

    aput-object v28, v0, v3

    const/16 v3, 0x1a

    aput-object v29, v0, v3

    const/16 v3, 0x1b

    aput-object v30, v0, v3

    const/16 v3, 0x1c

    aput-object v31, v0, v3

    const/16 v3, 0x1d

    aput-object v32, v0, v3

    const/16 v3, 0x1e

    aput-object v33, v0, v3

    const/16 v3, 0x1f

    aput-object v36, v0, v3

    const/16 v3, 0x20

    aput-object v34, v0, v3

    const/16 v3, 0x21

    aput-object v35, v0, v3

    const/16 v3, 0x22

    aput-object v37, v0, v3

    const/16 v3, 0x23

    aput-object v38, v0, v3

    const/16 v3, 0x24

    aput-object v39, v0, v3

    const/16 v3, 0x25

    aput-object v40, v0, v3

    const/16 v3, 0x26

    aput-object v41, v0, v3

    const/16 v3, 0x27

    aput-object v42, v0, v3

    const/16 v3, 0x28

    aput-object v43, v0, v3

    const/16 v3, 0x29

    aput-object v44, v0, v3

    const/16 v3, 0x2a

    aput-object v45, v0, v3

    const/16 v3, 0x2b

    aput-object v46, v0, v3

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    const/16 v1, 0x2d

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaGouEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", project_uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", project_id="

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

    const-string v2, ", targetLon1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetLat1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", east1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", north1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetElevation1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetLon2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLon2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetLat2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLat2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", east2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", north2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetElevation2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetLonH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonH:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetLatH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatH:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", eastH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->eastH:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", northH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->northH:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetElevationH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationH:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetLonBenchmark="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLonBenchmark:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetLatBenchmark="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetLatBenchmark:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", targetElevationBenchmark="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", quality1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->quality1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", quality2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->quality2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", qualityH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->qualityH:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->fence:[D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", openlineType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->openlineType:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", collectType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->collectType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", depth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->width:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", ratio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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

    const-string v1, ", corsPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", corsUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", corsPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", corsMount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->corsMount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", depthA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", depthB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", tickA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tickB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->tickB:I

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

    const-string v1, ", leftSlopeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftSlopeRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rightSlopeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightSlopeRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", leftBottomWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->leftBottomWidth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rightBottomWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->rightBottomWidth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", advancedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/WaGouEntity;->advancedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
