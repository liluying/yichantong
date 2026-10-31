.class public abstract Lcom/qianhe/yct/utils/PointGroupExcelExporter;
.super Ljava/lang/Object;
.source "PointGroupExcelExporter.java"


# direct methods
.method private static appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 312
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 313
    const-string v0, "; "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-nez p2, :cond_2

    .line 318
    const-string p2, ""

    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .line 94
    sget v0, Lcom/qianhe/yct/R$string;->create_time:I

    .line 95
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/qianhe/yct/R$string;->point_group_name:I

    .line 96
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/qianhe/yct/R$string;->point_name:I

    .line 97
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/qianhe/yct/R$string;->easting:I

    .line 98
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/qianhe/yct/R$string;->northing:I

    .line 99
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/qianhe/yct/R$string;->elev:I

    .line 100
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/qianhe/yct/R$string;->solution_state:I

    .line 101
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    sget v0, Lcom/qianhe/yct/R$string;->antenna_height:I

    .line 104
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    sget v0, Lcom/qianhe/yct/R$string;->ellipsoid:I

    .line 105
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    sget v0, Lcom/qianhe/yct/R$string;->projection_type:I

    .line 106
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    sget v0, Lcom/qianhe/yct/R$string;->conversion_params:I

    .line 107
    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    const-string v8, "HDOP"

    const-string v9, "VDOP"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->joinCsv([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildRow(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/baselib/bean/PointlibEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    if-nez p2, :cond_0

    .line 115
    const-string v7, ""

    const-string v8, ""

    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v1, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v9, p6

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->joinCsv([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    invoke-static {p2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->resolveEnh(Lcom/qianhe/baselib/bean/PointlibEntity;)[D

    move-result-object v1

    .line 119
    iget-wide v2, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    .line 120
    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatCreateTime(J)Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v3, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const/4 v4, 0x0

    aget-wide v4, v1, v4

    .line 123
    invoke-static {v4, v5}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatCoord(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    .line 124
    invoke-static {v5, v6}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatCoord(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    .line 125
    invoke-static {v6, v7}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatCoord(D)Ljava/lang/String;

    move-result-object v1

    iget v6, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    .line 126
    invoke-static {p0, v6}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatSolution(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    .line 127
    invoke-static {v7, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatDop(D)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p2, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    .line 128
    invoke-static {v8, v9}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatDop(D)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v9, p6

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, p1

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->joinCsv([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static csvEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 364
    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2c

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x22

    .line 366
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0xa

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0xd

    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 370
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static deformationLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 307
    sget p1, Lcom/qianhe/yct/R$string;->none_deformation:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "none"

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 304
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->expansion_deformation:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "expansion"

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 302
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->scale_deformation:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "scale"

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static export(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/util/List;D)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;D)",
            "Ljava/io/File;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/qianhe/baselib/utils/LanguagePrefs;->wrapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    .line 47
    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p0

    goto :goto_2

    .line 48
    :cond_1
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p0

    .line 49
    :goto_2
    invoke-static {v0, p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatEllipsoid(Landroid/content/Context;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v0, p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatProjectionParams(Landroid/content/Context;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v0, p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatTransParam(Landroid/content/Context;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_2

    .line 52
    const-string p0, ""

    move-object v1, p0

    goto :goto_3

    :cond_2
    move-object v1, p2

    .line 53
    :goto_3
    invoke-static {p4, p5}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatCoord(D)Ljava/lang/String;

    move-result-object v6

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".csv"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->uniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 56
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance p2, Ljava/io/OutputStreamWriter;

    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p4, p5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const p2, 0xfeff

    .line 58
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(I)V

    .line 59
    invoke-static {v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->buildHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 60
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(I)V

    if-eqz p3, :cond_3

    .line 62
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 63
    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->buildRow(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/baselib/bean/PointlibEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 68
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    return-object p0

    .line 56
    :goto_5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    .line 43
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid folder"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 322
    invoke-static {p0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method static formatCoord(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 155
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatDecimal(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatCreateTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 163
    const-string p0, ""

    return-object p0

    .line 164
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    .line 165
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatDecimal(DI)Ljava/lang/String;
    .locals 1

    .line 392
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    .line 392
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatDop(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 159
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatDecimal(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatEllipsoid(Landroid/content/Context;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    .line 197
    const-string p0, ""

    return-object p0

    .line 199
    :cond_0
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-eqz v2, :cond_1

    .line 201
    sget v0, Lcom/qianhe/yct/R$string;->customize:I

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "Custom"

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 218
    invoke-static {v0}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef;->ellipsoidLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "BEIJING 54"

    goto :goto_0

    .line 213
    :cond_3
    const-string v0, "XIAN 80"

    goto :goto_0

    .line 210
    :cond_4
    const-string v0, "CGCS2000"

    goto :goto_0

    .line 207
    :cond_5
    const-string v0, "WGS-84"

    .line 223
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef;->resolveEllipsoidParams(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v0

    .line 227
    :cond_7
    sget v2, Lcom/qianhe/yct/R$string;->half_axis:I

    invoke-static {p0, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    sget v3, Lcom/qianhe/yct/R$string;->flatness:I

    invoke-static {p0, v3}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "f"

    invoke-static {p0, v3}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;->a:D

    .line 230
    invoke-static {v4, v5, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;->f:D

    const/16 v0, 0xc

    .line 231
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatPlain(DI)Ljava/lang/String;
    .locals 1

    .line 397
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 p0, 0x0

    .line 398
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/yct/activity/EngineeringCreateActivity$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatProjectionParams(Landroid/content/Context;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/lang/String;
    .locals 13

    if-eqz p1, :cond_5

    .line 239
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    sget v1, Lcom/qianhe/yct/R$string;->projection_type:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "projection"

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    .line 244
    invoke-static {p0, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->projectionTypeLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v2, 0x1

    const-string v3, "k0"

    const-string v4, "fn"

    const-string v5, "fe"

    const-string v6, "lat0"

    const-string v7, "lon0"

    const-string v8, "projection_height"

    const-string v9, "deformation"

    const/16 v10, 0x9

    if-ne v1, v2, :cond_1

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz v2, :cond_1

    .line 247
    sget p1, Lcom/qianhe/yct/R$string;->central_meridian:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v11, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lon0:D

    invoke-static {v11, v12, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget p1, Lcom/qianhe/yct/R$string;->origin_latitude:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v6, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->lat0:D

    invoke-static {v6, v7, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget p1, Lcom/qianhe/yct/R$string;->east_offset:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fe:D

    invoke-static {v5, v6, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget p1, Lcom/qianhe/yct/R$string;->north_offset:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->fn:D

    invoke-static {v4, v5, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget p1, Lcom/qianhe/yct/R$string;->scale_factor:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->k0:D

    invoke-static {v3, v4, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget p1, Lcom/qianhe/yct/R$string;->deformation_compensation:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->deformationMethod:I

    .line 253
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->deformationLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget p1, Lcom/qianhe/yct/R$string;->projection_elevation:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-wide v1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->projectionHeight:D

    .line 255
    invoke-static {v1, v2, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {v0, p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 256
    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz v2, :cond_3

    .line 258
    sget p1, Lcom/qianhe/yct/R$string;->utm_zone:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "zone"

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->zone:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget p1, Lcom/qianhe/yct/R$string;->is_north:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "is_north"

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->isNorth:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget p1, Lcom/qianhe/yct/R$string;->deformation_compensation:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->deformationMethod:I

    .line 261
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->deformationLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget p1, Lcom/qianhe/yct/R$string;->projection_elevation:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-wide v1, v2, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->projectionHeight:D

    .line 263
    invoke-static {v1, v2, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {v0, p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 264
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz p1, :cond_4

    .line 266
    sget v1, Lcom/qianhe/yct/R$string;->central_meridian:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v11, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lon0:D

    invoke-static {v11, v12, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget v1, Lcom/qianhe/yct/R$string;->origin_latitude:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v6, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->lat0:D

    invoke-static {v6, v7, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget v1, Lcom/qianhe/yct/R$string;->east_offset:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fe:D

    invoke-static {v5, v6, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget v1, Lcom/qianhe/yct/R$string;->north_offset:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->fn:D

    invoke-static {v4, v5, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget v1, Lcom/qianhe/yct/R$string;->scale_factor:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->k0:D

    invoke-static {v2, v3, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget v1, Lcom/qianhe/yct/R$string;->deformation_compensation:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->deformationMethod:I

    .line 272
    invoke-static {p0, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->deformationLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget v1, Lcom/qianhe/yct/R$string;->projection_elevation:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->projectionHeight:D

    .line 274
    invoke-static {v1, v2, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {v0, p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->appendKv(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_4
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->projectionTypeLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_5
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method static formatSolution(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    if-gez p1, :cond_1

    .line 191
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/qianhe/yct/R$string;->unknown_solution:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :pswitch_0
    sget p1, Lcom/qianhe/yct/R$string;->sbas_solution:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 187
    :pswitch_1
    sget p1, Lcom/qianhe/yct/R$string;->UWL:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 185
    :pswitch_2
    sget p1, Lcom/qianhe/yct/R$string;->base_fixed:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 183
    :pswitch_3
    sget p1, Lcom/qianhe/yct/R$string;->calcul_solution:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :pswitch_4
    sget p1, Lcom/qianhe/yct/R$string;->float_solution:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :pswitch_5
    sget p1, Lcom/qianhe/yct/R$string;->fixed_solution:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 177
    :pswitch_6
    sget p1, Lcom/qianhe/yct/R$string;->diff_solution:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 175
    :pswitch_7
    sget p1, Lcom/qianhe/yct/R$string;->singlepoint_solution:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :pswitch_8
    sget p1, Lcom/qianhe/yct/R$string;->invalid_solution:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static formatTransParam(Landroid/content/Context;Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/lang/String;
    .locals 12

    .line 326
    const-string v0, ""

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 329
    :cond_0
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 330
    iget v1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v2, 0x1

    const-string v3, " dy="

    const-string v4, " dx="

    const-string v5, "scale(PPM)"

    const-string v6, "="

    const-string v7, " "

    const/16 v8, 0x9

    if-ne v1, v2, :cond_2

    .line 331
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 334
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->four_params:I

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4-param"

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    sget v1, Lcom/qianhe/yct/R$string;->param_rotation:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rotation"

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    sget v2, Lcom/qianhe/yct/R$string;->scale_ppm:I

    invoke-static {p0, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    .line 338
    invoke-static {v4, v5, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    .line 339
    invoke-static {v3, v4, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    .line 340
    invoke-static {v0, v1, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    .line 341
    invoke-static {p0, p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToPpm(D)D

    move-result-wide p0

    invoke-static {p0, p1, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 344
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 346
    :cond_3
    sget v0, Lcom/qianhe/yct/R$string;->seven_params:I

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7-param"

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    sget v1, Lcom/qianhe/yct/R$string;->param_rx:I

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rx"

    invoke-static {v1, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    sget v2, Lcom/qianhe/yct/R$string;->param_ry:I

    invoke-static {p0, v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "ry"

    invoke-static {v2, v9}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    sget v9, Lcom/qianhe/yct/R$string;->param_rz:I

    invoke-static {p0, v9}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "rz"

    invoke-static {v9, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    sget v10, Lcom/qianhe/yct/R$string;->scale_ppm:I

    invoke-static {p0, v10}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    .line 352
    invoke-static {v10, v11, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    .line 353
    invoke-static {v3, v4, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dz="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    .line 354
    invoke-static {v3, v4, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    .line 355
    invoke-static {v0, v1, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    .line 356
    invoke-static {v0, v1, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    .line 357
    invoke-static {v0, v1, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    .line 358
    invoke-static {p0, p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToPpm(D)D

    move-result-wide p0

    invoke-static {p0, p1, v8}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->formatPlain(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

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

.method private static varargs joinCsv([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 375
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->csvEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static projectionTypeLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 295
    invoke-static {p1}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef;->projectionLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->transverse_mercator:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 293
    const-string p1, "Transverse Mercator"

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->utm:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 290
    const-string p1, "UTM"

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_2
    sget p1, Lcom/qianhe/yct/R$string;->gauss_kruger:I

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string p1, "Gauss-Kruger"

    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointGroupExcelExporter;->fallbackLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static resolveEnh(Lcom/qianhe/baselib/bean/PointlibEntity;)[D
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    if-nez v0, :cond_0

    .line 137
    new-array v0, v4, [D

    fill-array-data v0, :array_0

    return-object v0

    .line 138
    :cond_0
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    cmpl-double v9, v7, v5

    if-nez v9, :cond_9

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    cmpl-double v11, v9, v5

    if-nez v11, :cond_9

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    cmpl-double v11, v9, v5

    if-eqz v11, :cond_1

    goto/16 :goto_7

    .line 141
    :cond_1
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    cmpl-double v9, v7, v5

    if-nez v9, :cond_3

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v11, v9, v5

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    move-wide v12, v9

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v12, v7

    :goto_1
    cmpl-double v9, v7, v5

    if-nez v9, :cond_5

    .line 142
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    cmpl-double v9, v7, v5

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    :goto_2
    move-wide v14, v7

    goto :goto_4

    :cond_5
    :goto_3
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    goto :goto_2

    .line 143
    :goto_4
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    cmpl-double v9, v7, v5

    if-eqz v9, :cond_6

    :goto_5
    move-wide/from16 v16, v7

    goto :goto_6

    :cond_6
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    goto :goto_5

    :goto_6
    cmpl-double v7, v12, v5

    if-nez v7, :cond_7

    cmpl-double v7, v14, v5

    if-nez v7, :cond_7

    cmpl-double v7, v16, v5

    if-nez v7, :cond_7

    .line 145
    new-array v0, v4, [D

    fill-array-data v0, :array_1

    return-object v0

    .line 147
    :cond_7
    new-array v5, v4, [D

    .line 148
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v11

    move-object/from16 v18, v5

    invoke-virtual/range {v11 .. v18}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedProj(DDD[D)Z

    move-result v5

    if-eqz v5, :cond_8

    return-object v18

    .line 151
    :cond_8
    iget-wide v5, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    new-array v0, v4, [D

    aput-wide v5, v0, v3

    aput-wide v7, v0, v2

    aput-wide v9, v0, v1

    return-object v0

    .line 139
    :cond_9
    :goto_7
    iget-wide v5, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    new-array v0, v4, [D

    aput-wide v7, v0, v3

    aput-wide v5, v0, v2

    aput-wide v9, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 73
    const-string v0, "point_group"

    if-nez p0, :cond_0

    return-object v0

    .line 74
    :cond_0
    const-string v1, "[\\\\/:*?\"<>|]"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".."

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static str(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 383
    const-string p0, ""

    return-object p0

    .line 384
    :cond_0
    invoke-static {p0, p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static uniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-lez v1, :cond_2

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 86
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v3, v1

    goto :goto_2

    :cond_3
    return-object v0
.end method
