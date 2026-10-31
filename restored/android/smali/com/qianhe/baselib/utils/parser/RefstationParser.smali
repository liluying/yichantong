.class public abstract Lcom/qianhe/baselib/utils/parser/RefstationParser;
.super Ljava/lang/Object;
.source "RefstationParser.java"


# direct methods
.method public static parser(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/BaseStationEntity;
    .locals 19

    move-object/from16 v0, p1

    .line 42
    const-string v1, "*"

    const-string v2, ";"

    new-instance v3, Lcom/qianhe/baselib/bean/BaseStationEntity;

    invoke-direct {v3}, Lcom/qianhe/baselib/bean/BaseStationEntity;-><init>()V

    .line 44
    :try_start_0
    iput-object v0, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->line:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    .line 46
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const-string v10, ","

    const/4 v11, 0x1

    if-le v7, v8, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {v5, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 49
    aget-object v7, v5, v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->port:Ljava/lang/String;

    .line 50
    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->stateCode:I

    .line 51
    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->signalQuality:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-le v5, v7, :cond_1

    .line 55
    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 56
    aget-object v8, v5, v11

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->ecefX:D

    .line 57
    aget-object v8, v5, v9

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->ecefY:D

    .line 58
    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->ecefZ:D

    .line 59
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v12

    iget-wide v13, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->ecefX:D

    iget-wide v7, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->ecefY:D

    move-wide v15, v7

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->ecefZ:D

    move-wide/from16 v17, v6

    invoke-virtual/range {v12 .. v18}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertEcefToGeodetic(DDD)[D

    move-result-object v6

    .line 60
    aget-wide v7, v6, v5

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    .line 61
    aget-wide v7, v6, v11

    iput-wide v7, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    .line 62
    aget-wide v5, v6, v9

    iput-wide v5, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    .line 64
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v4, :cond_2

    if-eq v1, v4, :cond_2

    add-int/2addr v0, v11

    if-ge v0, v1, :cond_2

    .line 68
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->baseStationId:I

    :cond_2
    move-object/from16 v0, p0

    .line 73
    iput-object v0, v3, Lcom/qianhe/baselib/bean/BaseStationEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 74
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 76
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefstationParser.parser():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v3
.end method
