.class public abstract Lcom/qianhe/baselib/utils/parser/INSParser;
.super Ljava/lang/Object;
.source "INSParser.java"


# direct methods
.method public static parser(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/InsNavi;
    .locals 29

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 26
    array-length v5, v3

    const/16 v6, 0x13

    if-le v5, v6, :cond_3

    .line 27
    new-instance v5, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v5}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    const/4 v7, 0x2

    .line 28
    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 29
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const/4 v4, 0x4

    .line 30
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const/4 v4, 0x5

    .line 31
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const/4 v4, 0x6

    .line 32
    aget-object v4, v3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 p1, v2

    const/4 v15, 0x0

    :try_start_2
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v4, 0x7

    .line 33
    aget-object v4, v3, v4

    move-wide/from16 v17, v7

    const/16 v16, 0x13

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/16 v4, 0x8

    .line 34
    aget-object v8, v3, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-wide/16 v19, 0x0

    if-nez v8, :cond_0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v21

    move-wide/from16 v23, v21

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_0
    move-wide/from16 v23, v19

    :goto_1
    const/16 v4, 0x9

    .line 35
    aget-object v8, v3, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v21

    goto :goto_2

    :cond_1
    move-wide/from16 v21, v19

    :goto_2
    const/16 v4, 0xa

    .line 36
    aget-object v8, v3, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v19

    .line 37
    :cond_2
    aget-object v4, v3, v16

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .line 38
    const-string v4, "0x%08X"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v25, 0x0

    new-array v15, v0, [Ljava/lang/Object;

    aput-object v8, v15, v25

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    mul-double v21, v21, v25

    move-wide/from16 v27, v1

    const/4 v8, 0x1

    .line 39
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double v0, v0, v25

    mul-double v19, v19, v25

    move-wide/from16 v21, v9

    const/4 v2, 0x1

    .line 40
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double v8, v8, v25

    .line 42
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/qianhe/baselib/bean/InsNavi;->utc:Ljava/lang/String;

    move-object v10, v3

    move-wide/from16 v2, v21

    .line 43
    iput-wide v2, v5, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    move-wide/from16 v19, v8

    move-wide/from16 v8, v17

    .line 44
    iput-wide v8, v5, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 45
    iput-wide v11, v5, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    move-wide/from16 v17, v0

    move-wide/from16 v0, v27

    .line 46
    iput-wide v0, v5, Lcom/qianhe/baselib/bean/InsNavi;->longitudeR:D

    .line 47
    iput-wide v13, v5, Lcom/qianhe/baselib/bean/InsNavi;->latitudeR:D

    .line 48
    iput-wide v6, v5, Lcom/qianhe/baselib/bean/InsNavi;->elevationR:D

    .line 50
    iput-wide v2, v5, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLon:D

    .line 51
    iput-wide v8, v5, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLat:D

    .line 52
    iput-wide v11, v5, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElev:D

    .line 53
    iput-wide v0, v5, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLonR:D

    .line 54
    iput-wide v13, v5, Lcom/qianhe/baselib/bean/InsNavi;->geodeticLatR:D

    .line 55
    iput-wide v6, v5, Lcom/qianhe/baselib/bean/InsNavi;->geodeticElevR:D

    move-wide/from16 v0, v23

    .line 56
    iput-wide v0, v5, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    move-wide/from16 v0, v17

    .line 57
    iput-wide v0, v5, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    move-wide/from16 v8, v19

    .line 58
    iput-wide v8, v5, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    .line 59
    iput-object v4, v5, Lcom/qianhe/baselib/bean/InsNavi;->insStausHex:Ljava/lang/String;

    .line 60
    aget-object v0, v10, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/qianhe/baselib/bean/InsNavi;->insStaus:I

    move-object/from16 v0, p0

    .line 61
    iput-object v0, v5, Lcom/qianhe/baselib/bean/InsNavi;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :catch_1
    move-exception v0

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 66
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INS\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
