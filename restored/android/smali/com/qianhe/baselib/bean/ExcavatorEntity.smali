.class public Lcom/qianhe/baselib/bean/ExcavatorEntity;
.super Ljava/lang/Object;
.source "ExcavatorEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field public AD:D

.field public Ax:D

.field public Ay:D

.field public BC:D

.field public BD:D

.field public CD:D

.field public Dx:D

.field public HA:D

.field public aDeviceHeading:D

.field public aDevicePitch:D

.field public aDeviceRoll:D

.field public autoGenerateParams:Ljava/lang/String;

.field private transient autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

.field public bDeviceHeading:D

.field public bDevicePitch:D

.field public bDeviceRoll:D

.field public bSensorHeading:D

.field public bSensorPitch:D

.field public bSensorRoll:D

.field public calibParams:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "calib_params"
    .end annotation
.end field

.field public calibParamsDetail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "calib_params_detail"
    .end annotation
.end field

.field public calibParamsId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "calib_params_id"
    .end annotation
.end field

.field public calibSoInputs:Ljava/lang/String;

.field private transient calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

.field public calibrateId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public calibrateUUid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_epoch"
    .end annotation
.end field

.field public dcDeviceHeading:D

.field public dcDevicePitch:D

.field public dcDeviceRoll:D

.field public dcSensorHeading:D

.field public dcSensorPitch:D

.field public dcSensorRoll:D

.field public deviceHeading:D

.field public deviceHeight:D

.field public devicePitch:D

.field public deviceRoll:D

.field public distanceBucketMeasure:Z

.field public excavatorParams:Ljava/lang/String;

.field private transient excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

.field public leftDist:D

.field public localId:J

.field public measureParams:Ljava/lang/String;

.field private transient measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

.field public method:I

.field public mode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "params_type"
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public phaseToHang:D

.field public pq:D

.field public reDeviceAttitudes:[[D

.field public reSensorAttitudes:[[D

.field public rigthDist:D

.field public sensorHeading:D

.field public sensorPitch:D

.field public sensorRoll:D

.field public shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

.field public showUnit:I

.field public spanDist:D

.field public updateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_epoch"
    .end annotation
.end field

.field public userId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "belong_uid"
    .end annotation
.end field

.field public version:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    .line 120
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    return-void
.end method

.method private static copyAttitudeArray([[D)[[D
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 563
    :cond_0
    array-length v0, p0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 564
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 565
    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 568
    :cond_1
    array-length v3, v3

    new-array v3, v3, [D

    aput-object v3, v0, v2

    .line 569
    aget-object v4, p0, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->toMeasureParams(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    return-object v0
.end method

.method private static parseDoubleMatrix(Lcom/google/gson/JsonElement;)[[D
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 742
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    .line 746
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 750
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 751
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 752
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 755
    :cond_2
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 756
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    new-array v4, v4, [D

    aput-object v4, v0, v2

    const/4 v4, 0x0

    .line 757
    :goto_1
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 759
    :try_start_0
    aget-object v5, v0, v2

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v6

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 761
    :catch_0
    aget-object v5, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object v0
.end method

.method private static repairAttitudeMatricesFromRawJson(Lcom/qianhe/baselib/bean/CalibSoInputParams;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 720
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 725
    iget-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    .line 726
    :cond_1
    const-string v0, "re_device_attitudes"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->parseDoubleMatrix(Lcom/google/gson/JsonElement;)[[D

    move-result-object v0

    if-eqz v0, :cond_2

    .line 727
    array-length v1, v0

    if-lez v1, :cond_2

    .line 728
    iput-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reSensorAttitudes:[[D

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_4

    .line 732
    :cond_3
    const-string v0, "re_sensor_attitudes"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->parseDoubleMatrix(Lcom/google/gson/JsonElement;)[[D

    move-result-object p1

    if-eqz p1, :cond_4

    .line 733
    array-length v0, p1

    if-lez v0, :cond_4

    .line 734
    iput-object p1, p0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reSensorAttitudes:[[D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method private writeCalibSoInputsJson(Z)V
    .locals 1

    .line 676
    invoke-static {p0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->fromEntity(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/CalibSoInputParams;

    move-result-object v0

    .line 677
    iput-boolean p1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->captured:Z

    .line 678
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    .line 679
    sget-object p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearAutoGenerateParams()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    .line 432
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    return-void
.end method

.method public clearCalibSoInputs()V
    .locals 3

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 582
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    const-wide/16 v1, 0x0

    .line 583
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    .line 584
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    .line 585
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    .line 586
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    .line 587
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    .line 588
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    .line 589
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    .line 590
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    .line 591
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    .line 592
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    .line 593
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    .line 594
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    .line 595
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    .line 596
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    .line 597
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    .line 598
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    .line 599
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 600
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    .line 601
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    .line 602
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    .line 603
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    .line 604
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    .line 605
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    .line 606
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    return-void
.end method

.method public clearForearmMeasureValues()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 611
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 612
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 613
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 614
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 615
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 616
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 617
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncExcavatorParamsToJson()V

    return-void
.end method

.method public clearMeasureParams()V
    .locals 1

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    .line 423
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    return-void
.end method

.method public clearReAttitudes()V
    .locals 4

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 623
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    const-wide/16 v1, 0x0

    .line 624
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    .line 625
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    .line 626
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    .line 627
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    .line 628
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    .line 629
    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    .line 630
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    const-class v3, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    iput-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    .line 637
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->clearSweepAttitudes()V

    .line 639
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public copyBucketMeasureFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V

    return-void

    .line 457
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method public copyCalibSoInputFieldsFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    .line 531
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    .line 532
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    .line 533
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    .line 534
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    .line 535
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    .line 536
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    .line 537
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    invoke-static {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyAttitudeArray([[D)[[D

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 538
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    invoke-static {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyAttitudeArray([[D)[[D

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    .line 539
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    .line 540
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    .line 541
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    .line 542
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    .line 543
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    .line 544
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    .line 545
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    .line 546
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    .line 547
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    .line 548
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    .line 549
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    .line 550
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    .line 551
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    .line 552
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    .line 553
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    .line 554
    iget-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz p1, :cond_1

    array-length p1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 555
    invoke-direct {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->writeCalibSoInputsJson(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public copyCalibSoInputsFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->ensureCalibSoInputsReady()V

    .line 467
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 473
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 474
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mergeSweepAttitudesFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 469
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyCalibSoInputFieldsFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method public copyCalibSoInputsWithoutSweep(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    .line 576
    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyCalibSoInputsFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 577
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearReAttitudes()V

    return-void
.end method

.method public discardInvalidCalibSoInputs()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    :cond_1
    return-void
.end method

.method public ensureCalibSoInputsReady()V
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 515
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reloadSweepAttitudesFromJson()V

    .line 516
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 521
    invoke-direct {p0, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->writeCalibSoInputsJson(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 814
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 816
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 818
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    iget v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    iget v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    long-to-double v1, v1

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    long-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    long-to-double v1, v1

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    long-to-double v3, v3

    .line 820
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    .line 822
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    iget v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 824
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 826
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    iget v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    .line 830
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    .line 832
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsDetail:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsDetail:Ljava/lang/String;

    .line 834
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 836
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getAB()D
    .locals 2

    .line 323
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    return-wide v0
.end method

.method public getAT()D
    .locals 2

    .line 333
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    return-wide v0
.end method

.method public getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    .line 246
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    return-object v0
.end method

.method public getExcavatorParamsObj()Lcom/qianhe/baselib/bean/ExcavatorParams;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/ExcavatorParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorParams;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorParams;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

    .line 138
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->HA:D

    .line 139
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->pq:D

    .line 140
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ay:D

    .line 141
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ax:D

    .line 142
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Dx:D

    .line 143
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->AD:D

    .line 144
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BC:D

    .line 145
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->CD:D

    .line 146
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BD:D

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

    return-object v0
.end method

.method public getG1()D
    .locals 2

    .line 286
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    return-wide v0
.end method

.method public getG2()D
    .locals 2

    .line 293
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    return-wide v0
.end method

.method public getG3()D
    .locals 2

    .line 300
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    return-wide v0
.end method

.method public getLR()D
    .locals 2

    .line 341
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->resolveLR()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLy()D
    .locals 2

    .line 307
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    return-wide v0
.end method

.method public getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    .line 212
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    return-object v0
.end method

.method public getNA()D
    .locals 2

    .line 337
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    return-wide v0
.end method

.method public getNT()D
    .locals 2

    .line 329
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    return-wide v0
.end method

.method public getRy()D
    .locals 6

    .line 314
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    .line 316
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    return-wide v1

    :cond_0
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    return-wide v0
.end method

.method public hasCalibSoInputs()Z
    .locals 2

    .line 769
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isValidFor(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 37

    move-object/from16 v0, p0

    .line 845
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    iget-wide v11, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-wide v13, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget-wide v14, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    iget v15, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    .line 847
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v18, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v19, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    move-object/from16 v21, v1

    iget v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    move-object/from16 v26, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v27, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v28, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v29, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v30, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v31, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v32, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v33, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v34, v1

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsDetail:Ljava/lang/String;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v36, 0x0

    aput-object v16, v0, v36

    const/16 v16, 0x1

    aput-object v17, v0, v16

    const/16 v16, 0x2

    aput-object v3, v0, v16

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

    aput-object v15, v0, v3

    const/16 v3, 0xf

    aput-object v18, v0, v3

    const/16 v3, 0x10

    aput-object v19, v0, v3

    const/16 v3, 0x11

    aput-object v20, v0, v3

    const/16 v3, 0x12

    aput-object v25, v0, v3

    const/16 v3, 0x13

    aput-object v21, v0, v3

    const/16 v3, 0x14

    aput-object v22, v0, v3

    const/16 v3, 0x15

    aput-object v23, v0, v3

    const/16 v3, 0x16

    aput-object v24, v0, v3

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

    aput-object v34, v0, v3

    const/16 v3, 0x20

    aput-object v35, v0, v3

    const/16 v3, 0x21

    aput-object v2, v0, v3

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 845
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDistanceBucketMeasureFlow()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadCalibSoInputsFromJson()V
    .locals 4

    .line 694
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 698
    :try_start_0
    sget-object v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    const-class v3, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    iput-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->isPlaceholder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 705
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-eqz v0, :cond_2

    .line 710
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->repairAttitudeMatricesFromRawJson(Lcom/qianhe/baselib/bean/CalibSoInputParams;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/bean/CalibSoInputParams;->applyTo(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void

    .line 700
    :catch_0
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    :cond_2
    :goto_0
    return-void
.end method

.method public loadExcavatorParamsFromJson()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/ExcavatorParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorParams;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

    .line 184
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->HA:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 185
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->pq:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 186
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ay:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    .line 187
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ax:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 188
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Dx:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 189
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->AD:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 190
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BC:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 191
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->CD:D

    iput-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 192
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BD:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    :cond_0
    return-void
.end method

.method public markCalibSoInputsCaptured()V
    .locals 1

    .line 666
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesCalibrationMode21()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 672
    invoke-direct {p0, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->writeCalibSoInputsJson(Z)V

    return-void
.end method

.method public mergeSweepAttitudesFrom(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    .line 483
    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    invoke-static {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyAttitudeArray([[D)[[D

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 484
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    invoke-static {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyAttitudeArray([[D)[[D

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    .line 486
    :cond_2
    iget-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz p1, :cond_3

    array-length p1, p1

    if-lez p1, :cond_3

    const/4 p1, 0x1

    .line 487
    invoke-direct {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->writeCalibSoInputsJson(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reloadSweepAttitudesFromJson()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    :try_start_0
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;

    if-nez v0, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->repairAttitudeMatricesFromRawJson(Lcom/qianhe/baselib/bean/CalibSoInputParams;Ljava/lang/String;)V

    .line 502
    iget-object v1, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reDeviceAttitudes:[[D

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 503
    invoke-static {v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyAttitudeArray([[D)[[D

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    .line 505
    :cond_2
    iget-object v0, v0, Lcom/qianhe/baselib/bean/CalibSoInputParams;->reSensorAttitudes:[[D

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 506
    invoke-static {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->copyAttitudeArray([[D)[[D

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public resolveDiagramDistanceMeasure()Z
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v0

    return v0
.end method

.method public setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearMeasureParams()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    .line 257
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    return-void
.end method

.method public setDistanceMeasureValues(DDDDDD)V
    .locals 1

    .line 406
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 407
    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    .line 408
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    .line 409
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    .line 410
    iput-wide p7, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 411
    iput-wide p9, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 412
    iput-wide p11, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    const-wide/16 p1, 0x0

    cmpl-double p3, p9, p1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p9, p7

    :goto_0
    add-double/2addr p7, p9

    .line 413
    iput-wide p7, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    .line 414
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 415
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method public setExcavatorParamsObj(Lcom/qianhe/baselib/bean/ExcavatorParams;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance p1, Lcom/qianhe/baselib/bean/ExcavatorParams;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ExcavatorParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

    .line 154
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->HA:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 155
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->pq:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 156
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ay:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    .line 157
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ax:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 158
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->Dx:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 159
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->AD:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 160
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->BC:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 161
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->CD:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 162
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorParams;->BD:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    .line 163
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    return-void
.end method

.method public setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearAutoGenerateParams()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    .line 223
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 225
    sget-object p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public setMeasureValues(DDDDDD)V
    .locals 1

    .line 386
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 388
    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    .line 390
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    .line 392
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    .line 394
    iput-wide p7, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 396
    iput-wide p9, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 398
    iput-wide p11, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    .line 400
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method public syncBucketParamsFrom(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 440
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    sget-object v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    const-class v1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V

    return-void

    .line 443
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method public syncCalibSoInputsToJson()V
    .locals 2

    .line 644
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->discardInvalidCalibSoInputs()V

    .line 645
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 647
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputsCache:Lcom/qianhe/baselib/bean/CalibSoInputParams;

    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 652
    invoke-direct {p0, v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->writeCalibSoInputsJson(Z)V

    return-void

    .line 655
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->hasCalibSoInputs()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesCalibrationMode21()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    .line 661
    :cond_4
    invoke-direct {p0, v1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->writeCalibSoInputsJson(Z)V

    return-void
.end method

.method public syncExcavatorParamsToJson()V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getExcavatorParamsObj()Lcom/qianhe/baselib/bean/ExcavatorParams;

    move-result-object v0

    .line 168
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->HA:D

    .line 169
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->pq:D

    .line 170
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ay:D

    .line 171
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Ax:D

    .line 172
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->Dx:D

    .line 173
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->AD:D

    .line 174
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BC:D

    .line 175
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->CD:D

    .line 176
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorParams;->BD:D

    .line 177
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParamsCache:Lcom/qianhe/baselib/bean/ExcavatorParams;

    .line 178
    sget-object v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    return-void
.end method

.method public syncParamsToJson()V
    .locals 2

    .line 780
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearMeasureParams()V

    .line 784
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    if-eqz v0, :cond_1

    .line 786
    sget-object v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    return-void

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearAutoGenerateParams()V

    .line 794
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    if-eqz v0, :cond_1

    .line 796
    sget-object v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExcavatorEntity{localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", createTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", calibrateId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", calibrateUUid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateUUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", leftDist="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", rigthDist="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", spanDist="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", deviceHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", showUnit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->showUnit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", calibParamsId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", calibParams=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", calibParamsDetail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", method="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->method:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", measureParams=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", autoGenerateParams=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", excavatorParams=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->excavatorParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", HA="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", pq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", Ay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", Ax="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", Dx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", AD="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", BC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", CD="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", BD="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", calibSoInputs=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesAutoGenerateParams()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public usesCalibrationMode21()Z
    .locals 2

    .line 377
    iget-boolean v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public usesDistanceMeasure()Z
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getEffectiveMeasureParams()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->usesDistanceMeasure()Z

    move-result v0

    return v0
.end method
