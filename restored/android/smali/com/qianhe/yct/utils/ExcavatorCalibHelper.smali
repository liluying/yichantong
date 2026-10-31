.class public abstract Lcom/qianhe/yct/utils/ExcavatorCalibHelper;
.super Ljava/lang/Object;
.source "ExcavatorCalibHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;,
        Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;,
        Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;,
        Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;,
        Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;
    }
.end annotation


# static fields
.field private static volatile loggedVersion:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$iLMY7RqlkQb8aWSKWkEHc4zbaus(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[B)I
    .locals 0

    .line 219
    invoke-static {p0, p1}, Lcom/qh/libexcavator/Excavator;->toolToBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[B)I

    move-result p0

    return p0
.end method

.method public static adjustHeight(Ljava/lang/String;I[D[DLjava/util/List;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[D[D",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;)",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 257
    invoke-static {}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logLibraryVersion()V

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v11, v7

    goto/16 :goto_7

    :cond_1
    const/4 v5, 0x0

    .line 263
    :try_start_0
    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_d

    .line 267
    array-length v9, v8

    if-nez v9, :cond_2

    goto/16 :goto_6

    .line 270
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x10

    if-le v9, v10, :cond_3

    .line 271
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-direct {v0, v6, v7, v7, v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v0

    .line 273
    :cond_3
    new-instance v6, Lcom/qh/libexcavator/Excavator;

    invoke-direct {v6}, Lcom/qh/libexcavator/Excavator;-><init>()V

    .line 274
    invoke-virtual {v6, v8}, Lcom/qh/libexcavator/Excavator;->fromBinary([B)I

    move-result v8

    if-eqz v8, :cond_4

    .line 276
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-direct {v0, v8, v7, v7, v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v0

    .line 278
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lcom/qh/libexcavator/Excavator;->samples(I)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v2, :cond_5

    .line 282
    array-length v12, v2

    if-lt v12, v10, :cond_5

    .line 283
    aget-wide v12, v2, v5

    invoke-static {v12, v13}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v12

    .line 284
    aget-wide v14, v2, v11

    invoke-static {v14, v15}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v14

    .line 285
    aget-wide v16, v2, v9

    invoke-static/range {v16 .. v17}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v16

    move-wide/from16 v23, v16

    move-object/from16 v16, v6

    move-wide/from16 v5, v23

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const-wide/16 v12, 0x0

    move-object/from16 v16, v6

    move-wide v5, v12

    move-wide v14, v5

    goto :goto_0

    :goto_1
    const/16 p2, 0x0

    const/16 v17, 0x2

    .line 287
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 288
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v9}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    .line 289
    aget-object v9, v8, v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v11, v18

    check-cast v11, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v9, v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillSample(Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/16 v19, 0x1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u5fae\u8c03\u53c2\u6570\uff1acalibParamsBase64->"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5fae\u8c03\u53c2\u6570\uff1aflags->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 293
    const-string v0, ")"

    const-string v2, ","

    if-eqz v3, :cond_7

    array-length v9, v3

    if-lt v9, v10, :cond_7

    .line 294
    aget-wide v9, v3, p2

    invoke-static {v9, v10}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v9

    .line 295
    aget-wide v18, v3, v19

    move-object/from16 v20, v8

    invoke-static/range {v18 .. v19}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v7

    .line 296
    aget-wide v17, v3, v17

    move-wide/from16 v21, v12

    invoke-static/range {v17 .. v18}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v11

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u5fae\u8c03\u53c2\u6570\uff1aheightLlh(lat,lon,elev)->("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object/from16 v20, v8

    move-wide/from16 v21, v12

    .line 299
    const-string/jumbo v3, "\u5fae\u8c03\u53c2\u6570\uff1aheightLlh->\u65e0\u6548"

    invoke-static {v3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 301
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5fae\u8c03\u53c2\u6570\uff1aheightNed(n,e,d)->("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v21

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    move-object/from16 v3, v20

    const/4 v0, 0x0

    .line 302
    :goto_4
    array-length v7, v3

    if-ge v0, v7, :cond_8

    .line 303
    aget-object v7, v3, v0

    .line 304
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u5fae\u8c03\u53c2\u6570\uff1anativeSample["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]->phase_to_hang="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_to_hang:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ", phase_center=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "), device_rpy=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "), world_from_device(qx,qy,qz)=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "), sensor_rpy=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "), world_from_sensor(qx,qy,qz)=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v10, v10, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "), world_from_sensor_valid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor_valid:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", lat="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", lon="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", elev="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v8, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, v16

    .line 307
    invoke-virtual {v0, v1, v5, v6, v3}, Lcom/qh/libexcavator/Excavator;->adjustHeight(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I

    move-result v2

    .line 308
    const-string/jumbo v0, "\u5fae\u8c03"

    move-object v4, v3

    move-wide/from16 v23, v5

    move v5, v2

    move-wide/from16 v2, v23

    move-object/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterAdjustHeight(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;ILcom/qh/libexcavator/Excavator;)V

    move-object v7, v6

    if-eqz v5, :cond_9

    .line 310
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    const/4 v11, 0x0

    invoke-direct {v0, v5, v11, v11, v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v0

    .line 312
    :cond_9
    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/qh/libexcavator/Excavator;->getHeightStdev(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)D

    move-result-wide v17

    .line 313
    const-string/jumbo v0, "\u5fae\u8c03"

    move-wide/from16 v5, v17

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterGetHeightStdev(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;D)V

    .line 314
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;-><init>(Lcom/qh/libexcavator/Excavator;)V

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->encodeBinary(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_a

    .line 316
    new-instance v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    iget v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    const/4 v11, 0x0

    invoke-direct {v1, v0, v11, v11, v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v1

    .line 320
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->shouldExtractTool(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 321
    invoke-virtual {v7}, Lcom/qh/libexcavator/Excavator;->getTool()Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object v1

    .line 323
    invoke-static {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParamAfterSymmetrize(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 325
    iget-object v7, v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object v15, v7

    goto :goto_5

    :cond_b
    move-object/from16 v16, v1

    const/4 v15, 0x0

    goto :goto_5

    :cond_c
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 328
    :goto_5
    new-instance v12, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-direct/range {v12 .. v18}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;D)V

    return-object v12

    .line 268
    :cond_d
    :goto_6
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    const/4 v11, 0x0

    invoke-direct {v0, v6, v11, v11, v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v0

    :catch_0
    move-object v11, v7

    .line 265
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-direct {v0, v6, v11, v11, v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v0

    .line 259
    :goto_7
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;

    invoke-direct {v0, v6, v11, v11, v11}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v0
.end method

.method public static adjustPreciseHabVertical(Ljava/lang/String;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;Ljava/util/List;Ljava/util/List;Ljava/util/List;[D[D)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;[D[D)",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 384
    invoke-static {}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logLibraryVersion()V

    .line 385
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 387
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    if-eqz p3, :cond_0

    .line 388
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_0

    if-eqz p4, :cond_0

    .line 389
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v6, :cond_1

    :cond_0
    const/16 v17, -0x1

    goto/16 :goto_6

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v7, p0

    .line 394
    :try_start_0
    invoke-static {v7, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 398
    array-length v8, v7

    if-nez v8, :cond_3

    :cond_2
    const/16 v17, -0x1

    goto/16 :goto_5

    .line 401
    :cond_3
    new-instance v8, Lcom/qh/libexcavator/Excavator;

    invoke-direct {v8}, Lcom/qh/libexcavator/Excavator;-><init>()V

    .line 402
    invoke-virtual {v8, v7}, Lcom/qh/libexcavator/Excavator;->fromBinary([B)I

    move-result v7

    if-eqz v7, :cond_4

    .line 404
    invoke-static {v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v7, 0x1

    if-eqz v2, :cond_5

    .line 408
    array-length v9, v2

    if-lt v9, v6, :cond_5

    const/4 v11, 0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    :goto_0
    const/4 v9, 0x2

    if-eqz v1, :cond_6

    .line 411
    array-length v10, v1

    if-lt v10, v6, :cond_6

    .line 412
    aget-wide v12, v1, v9

    invoke-static {v12, v13}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v12

    goto :goto_1

    :cond_6
    const-wide/16 v12, 0x0

    :goto_1
    if-eqz v11, :cond_7

    .line 415
    aget-wide v14, v2, v3

    invoke-static {v14, v15}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v14

    .line 416
    aget-wide v16, v2, v7

    const/4 v1, -0x1

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v3

    .line 417
    aget-wide v9, v2, v9

    invoke-static {v9, v10}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v9

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, -0x1

    const-string/jumbo v1, "\u7cbe\u51c6\u6821\u51c6\u53c2\u6570\uff1aheightLlh(lat,lon,elev)->("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")\uff0cheightNed.down->"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cheightValid=true"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    const/16 v17, -0x1

    .line 421
    const-string/jumbo v1, "\u7cbe\u51c6\u6821\u51c6\u53c2\u6570\uff1aheightLlh->\u65e0\u6548\uff0cheightValid=false"

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 424
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toNativeSamples(Ljava/util/List;)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    move-result-object v14

    .line 425
    invoke-virtual {v8, v11, v12, v13, v14}, Lcom/qh/libexcavator/Excavator;->getHeightStdev(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)D

    move-result-wide v15

    .line 426
    const-string/jumbo v10, "\u7cbe\u51c6\u6821\u51c6-stdevOld"

    invoke-static/range {v10 .. v16}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterGetHeightStdev(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;D)V

    .line 428
    invoke-static {v7}, Lcom/qh/libexcavator/Excavator;->samples(I)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    move-result-object v1

    aget-object v1, v1, v6

    .line 429
    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    .line 430
    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillSample(Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    .line 431
    invoke-static/range {p3 .. p3}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toNativeSamples(Ljava/util/List;)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    move-result-object v0

    .line 432
    invoke-static/range {p4 .. p4}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toNativeSamples(Ljava/util/List;)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    move-result-object v2

    or-int/lit8 v3, v11, 0x10

    or-int/lit8 v4, v11, 0x20

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v22, v9

    move-wide/from16 v24, v22

    :goto_3
    if-gt v7, v5, :cond_b

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u7cbe\u51c6\u6821\u51c6["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    invoke-virtual {v8, v1}, Lcom/qh/libexcavator/Excavator;->adjustHABVertical(Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I

    move-result v9

    .line 443
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff1aadjustHABVertical"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v5, "\tcode="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const-string v5, "sample"

    invoke-static {v10, v5, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->appendNativeSample(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)V

    .line 447
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    if-eqz v9, :cond_8

    .line 449
    invoke-static {v9}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    .line 452
    :cond_8
    invoke-virtual {v8, v3, v12, v13, v0}, Lcom/qh/libexcavator/Excavator;->adjustHeight(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I

    move-result v5

    .line 453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-TOOL_ROTATE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 p4, v0

    move/from16 p1, v3

    move/from16 p5, v5

    move-object/from16 p6, v8

    move-object/from16 p0, v9

    move-wide/from16 p2, v12

    invoke-static/range {p0 .. p6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterAdjustHeight(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;ILcom/qh/libexcavator/Excavator;)V

    move/from16 v5, p1

    move-object/from16 v3, p4

    move/from16 v8, p5

    move-object/from16 v0, p6

    if-eqz v8, :cond_9

    .line 455
    invoke-static {v8}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    .line 457
    :cond_9
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/qh/libexcavator/Excavator;->getHeightStdev(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)D

    move-result-wide v8

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    const-string v1, "-stdevAfterRotate"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 p0, v1

    move-wide/from16 p5, v8

    move/from16 p1, v11

    move-wide/from16 p2, v12

    move-object/from16 p4, v14

    invoke-static/range {p0 .. p6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterGetHeightStdev(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;D)V

    move-wide/from16 v22, p5

    .line 460
    invoke-virtual {v0, v4, v12, v13, v2}, Lcom/qh/libexcavator/Excavator;->adjustHeight(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)I

    move-result v1

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-HA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 p6, v0

    move/from16 p5, v1

    move-object/from16 p4, v2

    move/from16 p1, v4

    move-object/from16 p0, v8

    invoke-static/range {p0 .. p6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterAdjustHeight(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;ILcom/qh/libexcavator/Excavator;)V

    move/from16 v2, p1

    move-object/from16 v1, p4

    move/from16 v4, p5

    if-eqz v4, :cond_a

    .line 463
    invoke-static {v4}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    .line 465
    :cond_a
    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/qh/libexcavator/Excavator;->getHeightStdev(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)D

    move-result-wide v8

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-stdevAfterHa"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p0, v4

    move-wide/from16 p5, v8

    move/from16 p1, v11

    move-wide/from16 p2, v12

    move-object/from16 p4, v14

    invoke-static/range {p0 .. p6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterGetHeightStdev(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;D)V

    move-wide/from16 v24, p5

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    move v4, v2

    move-object v0, v3

    move v3, v5

    const/4 v5, 0x5

    move-object v2, v1

    move-object/from16 v1, v19

    goto/16 :goto_3

    :cond_b
    move-object v0, v8

    .line 469
    invoke-virtual {v0}, Lcom/qh/libexcavator/Excavator;->getTool()Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object v28

    .line 471
    invoke-static/range {v28 .. v28}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParamAfterSymmetrize(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_d

    .line 473
    iget v0, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    if-eqz v0, :cond_c

    move v4, v0

    goto :goto_4

    :cond_c
    const/4 v4, -0x1

    :goto_4
    invoke-static {v4}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    .line 476
    :cond_d
    new-instance v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;-><init>(Lcom/qh/libexcavator/Excavator;)V

    invoke-static {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->encodeBinary(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_e

    .line 478
    iget v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    .line 481
    :cond_e
    new-instance v18, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    iget-object v0, v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iget-object v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-wide/from16 v20, v15

    invoke-direct/range {v18 .. v28}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;-><init>(IDDDLjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v18

    .line 399
    :goto_5
    invoke-static/range {v17 .. v17}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    :catch_0
    const/16 v17, -0x1

    .line 396
    invoke-static/range {v17 .. v17}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0

    .line 390
    :goto_6
    invoke-static/range {v17 .. v17}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    move-result-object v0

    return-object v0
.end method

.method private static appendNativeSample(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)V
    .locals 3

    .line 572
    const-string v0, "\n"

    if-nez p2, :cond_0

    .line 573
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 576
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "phase_to_hang="

    .line 577
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_to_hang:D

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", phase_center=("

    .line 578
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v0, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 579
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v0, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phase_center_stde=("

    .line 580
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 581
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", world_from_device(qx,qy,qz)=("

    .line 582
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 583
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", world_from_device_stde=("

    .line 584
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 585
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device_stde:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", world_from_sensor(qx,qy,qz)=("

    .line 586
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 587
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v1, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", world_from_sensor_valid="

    .line 588
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor_valid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendNativeSamples(Ljava/lang/StringBuilder;[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)V
    .locals 3

    if-nez p1, :cond_0

    .line 562
    const-string p1, "\nsamples->null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 565
    :cond_0
    const-string v0, "\tsampleCount->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 566
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sample["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {p0, v1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->appendNativeSample(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static applyResolvedTool(Lcom/qh/libexcavator/CalibrationMode2_1;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    .line 1140
    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->resolveTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1144
    :cond_0
    iget-wide v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolAB:D

    .line 1145
    iget-object p0, p0, Lcom/qh/libexcavator/CalibrationMode2_1;->toolTeeth:[[D

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->copyToolTeeth([[DLcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-void
.end method

.method public static applyTool(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 3

    .line 170
    invoke-static {}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logLibraryVersion()V

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 178
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    .line 182
    array-length v0, p0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    new-instance v0, Lcom/qh/libexcavator/Excavator;

    invoke-direct {v0}, Lcom/qh/libexcavator/Excavator;-><init>()V

    .line 186
    invoke-virtual {v0, p0}, Lcom/qh/libexcavator/Excavator;->fromBinary([B)I

    move-result p0

    if-eqz p0, :cond_2

    .line 188
    new-instance p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p1, p0, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 190
    :cond_2
    new-instance p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {p0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    .line 191
    invoke-static {p0, p1}, Lcom/qh/libexcavator/Excavator;->toolFromBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[B)I

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, p1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 195
    :cond_3
    invoke-virtual {v0, p0}, Lcom/qh/libexcavator/Excavator;->setTool(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I

    move-result p0

    if-eqz p0, :cond_4

    .line 197
    new-instance p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p1, p0, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 199
    :cond_4
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;-><init>(Lcom/qh/libexcavator/Excavator;)V

    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->encodeBinary(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0

    .line 183
    :cond_5
    :goto_0
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 180
    :catch_0
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 172
    :cond_6
    :goto_1
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method private static buildCalibration(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/qh/libexcavator/Calibration;
    .locals 3

    .line 858
    iget v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 859
    new-instance p2, Lcom/qh/libexcavator/CalibrationMode1;

    invoke-direct {p2}, Lcom/qh/libexcavator/CalibrationMode1;-><init>()V

    .line 860
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v0, p2, Lcom/qh/libexcavator/CalibrationMode1;->deviceRoll:D

    .line 861
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v0, p2, Lcom/qh/libexcavator/CalibrationMode1;->devicePitch:D

    .line 862
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v0, p2, Lcom/qh/libexcavator/CalibrationMode1;->deviceHeading:D

    .line 863
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    iput-wide v0, p2, Lcom/qh/libexcavator/CalibrationMode1;->GL:D

    .line 864
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    iput-wide v0, p2, Lcom/qh/libexcavator/CalibrationMode1;->GR:D

    .line 865
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    iput-wide v0, p2, Lcom/qh/libexcavator/CalibrationMode1;->LR:D

    .line 866
    iget-wide p0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    iput-wide p0, p2, Lcom/qh/libexcavator/CalibrationMode1;->HG:D

    return-object p2

    .line 869
    :cond_0
    iget v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_1

    return-object v2

    .line 874
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesCalibrationMode21()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 875
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildCalibrationMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/Calibration;

    move-result-object p0

    return-object p0

    .line 877
    :cond_2
    new-instance v0, Lcom/qh/libexcavator/CalibrationMode2;

    invoke-direct {v0}, Lcom/qh/libexcavator/CalibrationMode2;-><init>()V

    .line 878
    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillDeviceAttitude(Lcom/qh/libexcavator/CalibrationMode2;Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 879
    iget-wide v1, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorRoll:D

    .line 880
    iget-wide v1, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorPitch:D

    .line 881
    iget-wide p1, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    iput-wide p1, v0, Lcom/qh/libexcavator/CalibrationMode2;->sensorHeading:D

    .line 882
    invoke-static {v0, p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillLinkageAndTool(Lcom/qh/libexcavator/CalibrationMode2;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-object v0

    .line 885
    :cond_3
    iget p2, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 886
    new-instance p2, Lcom/qh/libexcavator/CalibrationMode3;

    invoke-direct {p2}, Lcom/qh/libexcavator/CalibrationMode3;-><init>()V

    .line 887
    invoke-static {p2, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillDeviceAttitude(Lcom/qh/libexcavator/CalibrationMode3;Lcom/qianhe/baselib/bean/InsNavi;)V

    .line 888
    invoke-static {p2, p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillLinkageAndTool(Lcom/qh/libexcavator/CalibrationMode3;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-object p2

    :cond_4
    return-object v2
.end method

.method private static buildCalibrationMode21(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/Calibration;
    .locals 3

    .line 1109
    new-instance v0, Lcom/qh/libexcavator/CalibrationMode2_1;

    invoke-direct {v0}, Lcom/qh/libexcavator/CalibrationMode2_1;-><init>()V

    .line 1110
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->phaseToHang:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->phaseToHang:D

    .line 1111
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->HA:D

    .line 1112
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->Hy:D

    .line 1113
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->Dx:D

    .line 1114
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->AD:D

    .line 1115
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->CD:D

    .line 1116
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BC:D

    .line 1118
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reDeviceAttitudes:[[D

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->filterReAttitudesExcludingDc([[DI)[[D

    move-result-object v1

    iput-object v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->REDeviceAttitudes:[[D

    .line 1119
    iget-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->reSensorAttitudes:[[D

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->filterReAttitudesExcludingDc([[DI)[[D

    move-result-object v1

    iput-object v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->RESensorAttitudes:[[D

    .line 1120
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceRoll:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADeviceRoll:D

    .line 1121
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDevicePitch:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADevicePitch:D

    .line 1122
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->aDeviceHeading:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->ADeviceHeading:D

    .line 1123
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceRoll:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDeviceRoll:D

    .line 1124
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDevicePitch:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDevicePitch:D

    .line 1125
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bDeviceHeading:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BDeviceHeading:D

    .line 1126
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorRoll:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorRoll:D

    .line 1127
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorPitch:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorPitch:D

    .line 1128
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->bSensorHeading:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->BSensorHeading:D

    .line 1129
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceRoll:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDeviceRoll:D

    .line 1130
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDevicePitch:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDevicePitch:D

    .line 1131
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcDeviceHeading:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcDeviceHeading:D

    .line 1132
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorRoll:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorRoll:D

    .line 1133
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorPitch:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorPitch:D

    .line 1134
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->dcSensorHeading:D

    iput-wide v1, v0, Lcom/qh/libexcavator/CalibrationMode2_1;->dcSensorHeading:D

    .line 1135
    invoke-static {v0, p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->applyResolvedTool(Lcom/qh/libexcavator/CalibrationMode2_1;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-object v0
.end method

.method public static buildSetToolCmd(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    .line 1042
    const-string p0, "LOCAL,setTool"

    return-object p0

    .line 1044
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOCAL,setTool,AB="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1046
    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    const-string v2, ")"

    const-string v3, ", "

    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    .line 1047
    const-string v1, ",T0=Point3D("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object v1, v1, v4

    iget-wide v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 1048
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object v1, v1, v4

    iget-wide v5, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 1049
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object v1, v1, v4

    iget-wide v4, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    .line 1050
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    :cond_1
    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    if-eqz v1, :cond_2

    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    aget-object v1, v1, v5

    if-eqz v1, :cond_2

    .line 1053
    const-string v1, ",T1=Point3D("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object v1, v1, v5

    iget-wide v6, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 1054
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object v1, v1, v5

    iget-wide v6, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 1055
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object p0, p0, v5

    iget-wide v3, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    .line 1056
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static buildTool(DDDDD)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 3

    .line 814
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    .line 815
    iput-wide p8, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    sub-double/2addr p0, p2

    const-wide p8, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr p0, p8

    neg-double p0, p0

    neg-double p6, p6

    const-wide v1, 0x3fb999999999999aL    # 0.1

    sub-double/2addr p2, v1

    add-double/2addr p2, p8

    sub-double/2addr p2, p4

    .line 819
    iget-object p4, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    const/4 p5, 0x0

    aget-object p5, p4, p5

    iput-wide p0, p5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 820
    iput-wide p6, p5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 821
    iput-wide p2, p5, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    const/4 p5, 0x1

    .line 822
    aget-object p4, p4, p5

    iput-wide p0, p4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    neg-double p0, p6

    .line 823
    iput-wide p0, p4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 824
    iput-wide p2, p4, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    return-object v0
.end method

.method static buildTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 13

    if-eqz p0, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v11

    invoke-static/range {v1 .. v10}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildToolFromDistance(DDDDD)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    return-object p0

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildTool(DDDDD)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    return-object p0

    .line 796
    :cond_1
    new-instance p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {p0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    return-object p0
.end method

.method static buildToolFromAuto(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 8

    .line 836
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 840
    :cond_0
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    iput-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    .line 841
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    const/4 v1, 0x0

    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->setTooth(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;IDDD)V

    .line 842
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    const/4 v1, 0x1

    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->setTooth(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;IDDD)V

    .line 843
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    const/4 v1, 0x2

    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->setTooth(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;IDDD)V

    .line 844
    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    const/4 v1, 0x3

    invoke-static/range {v0 .. v7}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->setTooth(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;IDDD)V

    return-object v0
.end method

.method static buildToolFromDistance(DDDDD)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 11

    .line 830
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 831
    invoke-static/range {v0 .. v10}, Lcom/qh/libexcavator/Excavator;->toolFromDistance(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;DDDDD)I

    return-object v0
.end method

.method public static buildToolInputJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/google/gson/JsonObject;
    .locals 3

    .line 1065
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->resolveTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    .line 1066
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    if-eqz p0, :cond_0

    .line 1067
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "ab"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const/4 v1, 0x0

    .line 1068
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toothToJsonArray(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;I)Lcom/google/gson/JsonArray;

    move-result-object v1

    const-string/jumbo v2, "t0"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v1, 0x1

    .line 1069
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toothToJsonArray(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;I)Lcom/google/gson/JsonArray;

    move-result-object p0

    const-string/jumbo v1, "t1"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static calibrate(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 1

    const/4 v0, 0x1

    .line 677
    invoke-static {p0, p1, p2, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->calibrate(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Z)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method public static calibrate(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Z)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logShovelMeasureParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    if-eqz p3, :cond_1

    .line 690
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->captureSoInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V

    .line 692
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildCalibration(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/qh/libexcavator/Calibration;

    move-result-object p1

    if-nez p1, :cond_2

    .line 694
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 696
    :cond_2
    new-instance p2, Lcom/qh/libexcavator/Excavator;

    invoke-direct {p2}, Lcom/qh/libexcavator/Excavator;-><init>()V

    .line 697
    invoke-virtual {p2}, Lcom/qh/libexcavator/Excavator;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logLibraryVersion(Ljava/lang/String;)V

    .line 698
    invoke-interface {p1, p2}, Lcom/qh/libexcavator/Calibration;->apply(Lcom/qh/libexcavator/Excavator;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 700
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 702
    :cond_3
    new-instance p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda1;-><init>(Lcom/qh/libexcavator/Excavator;)V

    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->encodeBinary(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p1

    .line 703
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->stampExistingToolParam(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0

    .line 686
    :cond_4
    :goto_0
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static calibrateFromSavedInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 11

    if-nez p0, :cond_0

    .line 725
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 728
    new-instance v0, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    .line 729
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    .line 730
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    .line 731
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    .line 732
    new-instance v3, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    iget-wide v9, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;-><init>(IDDD)V

    const/4 v1, 0x0

    .line 733
    invoke-static {p0, v0, v3, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->calibrate(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;Z)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method private static captureSoInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 738
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesCalibrationMode21()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 743
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceRoll:D

    .line 744
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->devicePitch:D

    .line 745
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeading:D

    :cond_1
    if-eqz p2, :cond_2

    .line 747
    iget p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 748
    invoke-virtual {v0}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 749
    iget-wide v0, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorRoll:D

    .line 750
    iget-wide v0, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorPitch:D

    .line 751
    iget-wide p1, p2, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    iput-wide p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->sensorHeading:D

    .line 754
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->markCalibSoInputsCaptured()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static copyToolTeeth([[DLcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V
    .locals 8

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1205
    iget-object v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1208
    :cond_0
    array-length v1, p0

    const/4 v2, 0x4

    array-length v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1210
    iget-object v3, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 1213
    :cond_1
    aget-object v4, p0, v2

    iget-wide v5, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    aput-wide v5, v4, v1

    .line 1214
    iget-wide v5, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    const/4 v7, 0x1

    aput-wide v5, v4, v7

    const/4 v5, 0x2

    .line 1215
    iget-wide v6, v3, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    aput-wide v6, v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static encodeBinary(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 3

    const/16 v0, 0x80

    .line 1241
    new-array v1, v0, [B

    .line 1242
    invoke-interface {p0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;->write([B)I

    move-result p0

    if-lez p0, :cond_1

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 1246
    :cond_0
    new-array v0, p0, [B

    const/4 v2, 0x0

    .line 1247
    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1248
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1244
    :cond_1
    :goto_0
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static encodeToolBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 2

    if-nez p0, :cond_0

    .line 217
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 219
    :cond_0
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$$ExternalSyntheticLambda0;-><init>(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->encodeBinary(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$BinaryWriter;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method public static existingToolParamFromExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 2

    if-nez p0, :cond_0

    .line 938
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 940
    :cond_0
    iget-object p0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->extractToolParamFromCalibParams(Ljava/lang/String;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extractToolParamFromCalibParams(Ljava/lang/String;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 2

    .line 945
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromCalibParams(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    if-nez p0, :cond_0

    .line 947
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 949
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->encodeToolBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method private static fillDeviceAttitude(Lcom/qh/libexcavator/CalibrationMode2;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 1149
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->deviceRoll:D

    .line 1150
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->devicePitch:D

    .line 1151
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->deviceHeading:D

    return-void
.end method

.method private static fillDeviceAttitude(Lcom/qh/libexcavator/CalibrationMode3;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 2

    .line 1155
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->deviceRoll:D

    .line 1156
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->devicePitch:D

    .line 1157
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->deviceHeading:D

    return-void
.end method

.method private static fillLinkageAndTool(Lcom/qh/libexcavator/CalibrationMode2;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    .line 1161
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->HA:D

    .line 1162
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->Hy:D

    .line 1163
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->Ay:D

    .line 1164
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->Ax:D

    .line 1165
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->Dx:D

    .line 1166
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->AD:D

    .line 1167
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->BD:D

    .line 1168
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->CD:D

    .line 1169
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->BC:D

    .line 1170
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillToolFields(Lcom/qh/libexcavator/CalibrationMode2;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method private static fillLinkageAndTool(Lcom/qh/libexcavator/CalibrationMode3;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    .line 1174
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->HA:D

    .line 1175
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->Hy:D

    .line 1176
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->Ay:D

    .line 1177
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->Ax:D

    .line 1178
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->Dx:D

    .line 1179
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->AD:D

    .line 1180
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->BD:D

    .line 1181
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->CD:D

    .line 1182
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->BC:D

    .line 1183
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillToolFields(Lcom/qh/libexcavator/CalibrationMode3;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    return-void
.end method

.method private static fillSample(Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    iput-wide v2, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_to_hang:D

    .line 661
    iget-object v2, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->phase_center:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v3, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    iput-wide v3, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 662
    iget-wide v3, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    iput-wide v3, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 663
    iget-wide v3, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    iput-wide v3, v2, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    .line 664
    iget-object v5, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_device:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v6, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    iget-wide v8, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    iget-wide v10, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    invoke-static/range {v5 .. v11}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 665
    iget-object v12, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor:Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    iget-wide v13, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    iget-wide v2, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    iget-wide v4, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-static/range {v12 .. v18}, Lcom/qh/libexcavator/GeoQuaternion;->fillPointFromAngleZyx(Lcom/qh/libexcavator/nativelib/LibExcavator$Point;DDD)V

    .line 666
    iget-boolean v1, v1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorValid:Z

    iput v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;->world_from_sensor_valid:I

    :cond_1
    :goto_0
    return-void
.end method

.method private static fillToolFields(Lcom/qh/libexcavator/CalibrationMode2;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    .line 1187
    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->resolveTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1191
    :cond_0
    iget-wide v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode2;->toolAB:D

    .line 1192
    iget-object p0, p0, Lcom/qh/libexcavator/CalibrationMode2;->toolTeeth:[[D

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->copyToolTeeth([[DLcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-void
.end method

.method private static fillToolFields(Lcom/qh/libexcavator/CalibrationMode3;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    .line 1196
    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->resolveTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1200
    :cond_0
    iget-wide v0, p1, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    iput-wide v0, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolAB:D

    .line 1201
    iget-object p0, p0, Lcom/qh/libexcavator/CalibrationMode3;->toolTeeth:[[D

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->copyToolTeeth([[DLcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-void
.end method

.method public static filterReAttitudesExcludingDc([[DI)[[D
    .locals 5

    if-eqz p0, :cond_4

    .line 1091
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p1, :cond_4

    .line 1094
    array-length v0, p0

    if-lt p1, v0, :cond_1

    goto :goto_2

    .line 1097
    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1099
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 1103
    aget-object v4, p0, v1

    aput-object v4, v0, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static getHeightStdevBeforeAdjust(Ljava/lang/String;Ljava/util/List;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;)D"
        }
    .end annotation

    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 345
    array-length v3, p0

    if-nez v3, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    new-instance v3, Lcom/qh/libexcavator/Excavator;

    invoke-direct {v3}, Lcom/qh/libexcavator/Excavator;-><init>()V

    .line 349
    invoke-virtual {v3, p0}, Lcom/qh/libexcavator/Excavator;->fromBinary([B)I

    move-result p0

    if-eqz p0, :cond_2

    return-wide v1

    .line 352
    :cond_2
    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->toNativeSamples(Ljava/util/List;)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    move-result-object v8

    const-wide/16 p0, 0x0

    .line 353
    invoke-virtual {v3, v0, p0, p1, v8}, Lcom/qh/libexcavator/Excavator;->getHeightStdev(ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)D

    move-result-wide v9

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 354
    const-string/jumbo v4, "\u5fae\u8c03-stdevBefore"

    invoke-static/range {v4 .. v10}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logAfterGetHeightStdev(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;D)V

    return-wide v9

    :catch_0
    :cond_3
    :goto_0
    return-wide v1
.end method

.method public static getMode(Ljava/lang/String;)I
    .locals 2

    .line 899
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 903
    :cond_0
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 904
    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_0

    .line 907
    :cond_1
    new-instance v0, Lcom/qh/libexcavator/Excavator;

    invoke-direct {v0}, Lcom/qh/libexcavator/Excavator;-><init>()V

    .line 908
    invoke-virtual {v0, p0}, Lcom/qh/libexcavator/Excavator;->fromBinary([B)I

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 911
    :cond_2
    invoke-virtual {v0}, Lcom/qh/libexcavator/Excavator;->getMode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method public static knownBucketParams(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;
    .locals 4

    .line 992
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    .line 997
    iget-object p0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    if-eqz p0, :cond_2

    .line 998
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p0, v1

    if-eqz v1, :cond_1

    .line 999
    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    .line 1000
    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    .line 1001
    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    .line 1003
    :cond_1
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    aget-object p0, p0, v2

    if-eqz p0, :cond_2

    .line 1004
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    .line 1005
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    .line 1006
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/GGAEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 3

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6307\u4ee4\u53c2\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GGA\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0c\u7ecf\u5ea6\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0c\u7eac\u5ea6\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\uff0c\u9ad8\u7a0b\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "GGA\uff1anull"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 1259
    :goto_0
    const-string/jumbo p1, "\uff0c\u822a\u5411\u89d2="

    const-string/jumbo p2, "\uff0c\u4fef\u4ef0\u89d2="

    if-eqz p3, :cond_1

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INS\uff1a\u6a2a\u6eda\u89d2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/qianhe/baselib/bean/InsNavi;->rollDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/qianhe/baselib/bean/InsNavi;->headingDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1262
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "INS\uff1anull"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    :goto_1
    if-eqz p4, :cond_2

    .line 1265
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u4f20\u611f\u5668\uff1a\u6a2a\u6eda\u89d2="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p4, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->rollAngle:D

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p4, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->pitchAngle:D

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p4, Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;->headingAngle:D

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 1267
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u4f20\u611f\u5668\uff1anull"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static logAfterAdjustHeight(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;ILcom/qh/libexcavator/Excavator;)V
    .locals 0

    .line 537
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\uff1aadjustHeight"

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string p0, "\tflags="

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    const-string p0, "\theight="

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 541
    const-string p0, "\tcode="

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    invoke-static {p6, p4}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->appendNativeSamples(Ljava/lang/StringBuilder;[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)V

    .line 546
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static logAfterGetHeightStdev(Ljava/lang/String;ID[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;D)V
    .locals 1

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\uff1agetHeightStdev"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string p0, "\tflags="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    const-string p0, "\theight="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 555
    const-string p0, "\tstdev="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 556
    invoke-static {v0, p4}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->appendNativeSamples(Ljava/lang/StringBuilder;[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;)V

    .line 557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static logLibraryVersion()V
    .locals 1

    .line 1222
    invoke-static {}, Lcom/qh/libexcavator/Excavator;->libraryVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logLibraryVersion(Ljava/lang/String;)V

    return-void
.end method

.method private static logLibraryVersion(Ljava/lang/String;)V
    .locals 2

    .line 1226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->setXexcavatorVersion(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_2

    .line 1229
    sget-object v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->loggedVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1232
    :cond_1
    sput-object p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->loggedVersion:Ljava/lang/String;

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libexcavator \u6316\u673a\u6821\u51c6\u5e93\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static logShovelMeasureParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 7

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p0

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u94f2\u6597\u53c2\u6570(\u667a\u80fd\u751f\u6210)\uff1aAB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " T0=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") T1=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") T2=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") T3=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 769
    :cond_1
    iget v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const-string v3, " LR="

    if-ne v0, v2, :cond_2

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6a21\u5f0f1\u53c2\u6570\uff1aAH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " AR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " AL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 774
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v0

    const-string v2, " AB="

    if-eqz v0, :cond_3

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u94f2\u6597\u53c2\u6570(\u4e09\u89d2\u6d4b\u91cf\u6cd5)\uff1aNT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNT()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " AT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAT()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " NA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getNA()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLR()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 775
    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 780
    :cond_3
    iget v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u94f2\u6597\u53c2\u6570(\u4e09\u70b9\u8bfb\u6570\u6cd5)\uff1aG1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " G2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " G3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 781
    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static logShovelMeasureParams(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u94f2\u6597\u53c2\u6570(\u667a\u80fd\u751f\u6210)\uff1aAB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " T0=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") T1=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") T2=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") T3=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesDistanceMeasure()Z

    move-result v0

    const-string v1, " AB="

    const-string v2, " LR="

    if-eqz v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u94f2\u6597\u53c2\u6570(\u4e09\u89d2\u6d4b\u91cf\u6cd5)\uff1aNT="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNT()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " AT="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAT()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " NA="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNA()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLR()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u94f2\u6597\u53c2\u6570(\u4e09\u70b9\u8bfb\u6570\u6cd5)\uff1aG1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG1()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " G2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG2()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " G3="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG3()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static makeToolParam(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 2

    .line 203
    invoke-static {}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logLibraryVersion()V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 205
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/qh/libexcavator/Excavator;->toolCheck(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    invoke-direct {p0, v1, v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 211
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->encodeToolBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method public static makeToolParam(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 2

    if-nez p0, :cond_0

    .line 111
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logShovelMeasureParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 114
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method public static makeToolParam(Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 13

    if-nez p0, :cond_0

    .line 122
    new-instance p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->logShovelMeasureParams(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 126
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildToolFromAuto(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesDistanceMeasure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAT()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNA()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getNT()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v11

    invoke-static/range {v1 .. v10}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildToolFromDistance(DDDDD)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG2()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getG3()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getLy()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAB()D

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildTool(DDDDD)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    .line 133
    :goto_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method private static makeToolParamAfterSymmetrize(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 0

    .line 240
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->symmetrizeRightToothFromLeft(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    .line 241
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 630
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lat:D

    .line 631
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->lon:D

    .line 632
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->elev:D

    .line 633
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->phaseToHang:D

    .line 634
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->north:D

    .line 635
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->east:D

    .line 636
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->down:D

    .line 637
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceRoll:D

    .line 638
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->devicePitch:D

    .line 639
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->deviceHeading:D

    .line 640
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorRoll:D

    .line 641
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorPitch:D

    .line 642
    iget-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;->sensorHeading:D

    return-void
.end method

.method public static normalizeFineTuneSamples(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    .line 651
    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static parseParamsType(Ljava/lang/String;)I
    .locals 2

    .line 919
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 923
    :cond_0
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 924
    array-length v0, p0

    if-lez v0, :cond_1

    .line 925
    aget-byte p0, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method public static parseToolFromCalibParams(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 2

    .line 972
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 976
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 977
    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_0

    .line 980
    :cond_1
    new-instance v0, Lcom/qh/libexcavator/Excavator;

    invoke-direct {v0}, Lcom/qh/libexcavator/Excavator;-><init>()V

    .line 981
    invoke-virtual {v0, p0}, Lcom/qh/libexcavator/Excavator;->fromBinary([B)I

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    .line 984
    :cond_2
    invoke-virtual {v0}, Lcom/qh/libexcavator/Excavator;->getTool()Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static parseToolFromParam(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 2

    .line 954
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 958
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 959
    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_0

    .line 962
    :cond_1
    new-instance v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    invoke-direct {v0}, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;-><init>()V

    .line 963
    invoke-static {v0, p0}, Lcom/qh/libexcavator/Excavator;->toolFromBinary(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;[B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method static resolveTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;
    .locals 1

    if-eqz p0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 804
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromParam(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 810
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->buildTool(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    return-object p0
.end method

.method private static setTooth(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;IDDD)V
    .locals 1

    if-eqz p0, :cond_1

    .line 849
    iget-object p0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 852
    :cond_0
    aget-object p0, p0, p1

    iput-wide p2, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 853
    iput-wide p4, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 854
    iput-wide p6, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    :cond_1
    :goto_0
    return-void
.end method

.method private static shouldExtractTool(I)Z
    .locals 1

    .line 0
    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static stampExistingToolParam(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
    .locals 1

    if-eqz p0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 712
    invoke-virtual {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p1, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    iget-object p0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object p0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->applyTool(Ljava/lang/String;Ljava/lang/String;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object p0

    .line 716
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static symmetrizeRightToothFromLeft(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 227
    iget-object p0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    aget-object p0, p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    iput-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    .line 231
    iget-wide v1, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    neg-double v1, v1

    iput-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    .line 232
    iget-wide v0, v0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    iput-wide v0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    :cond_1
    :goto_0
    return-void
.end method

.method private static toNativeSamples(Ljava/util/List;)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;)[",
            "Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;"
        }
    .end annotation

    .line 527
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/qh/libexcavator/Excavator;->samples(I)[Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;

    move-result-object v0

    const/4 v1, 0x0

    .line 528
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 529
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->normalizeFineTuneSample(Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    .line 530
    aget-object v2, v0, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->fillSample(Lcom/qh/libexcavator/nativelib/LibExcavator$Sample;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toolToAutoGenerateParams(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;
    .locals 4

    .line 595
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->AB:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    .line 600
    iget-object p0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    if-eqz p0, :cond_4

    .line 601
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 602
    aget-object v1, p0, v1

    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    .line 603
    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    .line 604
    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    .line 606
    :cond_1
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 607
    aget-object v1, p0, v2

    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    .line 608
    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    .line 609
    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    .line 611
    :cond_2
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 612
    aget-object v1, p0, v2

    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    .line 613
    iget-wide v2, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    iput-wide v2, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    .line 614
    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    .line 616
    :cond_3
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 617
    aget-object p0, p0, v2

    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    .line 618
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    .line 619
    iget-wide v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static toothToJsonArray(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;I)Lcom/google/gson/JsonArray;
    .locals 3

    .line 1074
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    if-eqz p0, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1076
    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1077
    iget-object v1, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object v1, v1, p1

    iget-wide v1, v1, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1078
    iget-object p0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;->TT:[Lcom/qh/libexcavator/nativelib/LibExcavator$Point;

    aget-object p0, p0, p1

    iget-wide p0, p0, Lcom/qh/libexcavator/nativelib/LibExcavator$Point;->z:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 1080
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1081
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    .line 1082
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    return-object v0
.end method
