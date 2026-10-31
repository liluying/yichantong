.class public abstract Lcom/qianhe/baselib/utils/parser/GGAParser;
.super Ljava/lang/Object;
.source "GGAParser.java"


# direct methods
.method public static ddmToDm(Ljava/lang/String;Ljava/lang/String;)D
    .locals 6

    const/16 v0, 0x2e

    const-wide/16 v1, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double v2, v3

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v4

    add-double v1, v2, v0

    .line 82
    const-string p0, "S"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v1

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    neg-double p0, v1

    return-wide p0

    .line 86
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ddmToDm\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-wide v1
.end method

.method public static dmToDdm(DZ)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 99
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 100
    sget-object p1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/16 v3, 0x3c

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/16 v6, 0x8

    invoke-virtual {p0, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 102
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 103
    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 104
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v6, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x2e

    .line 109
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 110
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 118
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p0, v1, v0

    const-string p0, "%03d%s"

    invoke-static {p2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_2
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p0, v1, v0

    const-string p0, "%02d%s"

    invoke-static {p2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseGGA(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GGAEntity;
    .locals 5

    const/4 v0, 0x0

    .line 39
    :try_start_0
    const-string v1, "$GPGGA,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 40
    :cond_0
    const-string v1, ","

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 41
    array-length v2, v1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    return-object v0

    .line 42
    :cond_1
    new-instance v2, Lcom/qianhe/baselib/bean/GGAEntity;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/GGAEntity;-><init>()V

    .line 43
    iput-object p1, v2, Lcom/qianhe/baselib/bean/GGAEntity;->ggaStr:Ljava/lang/String;

    const/4 v3, 0x1

    .line 44
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->utc:Ljava/lang/String;

    const/4 v3, 0x2

    .line 45
    aget-object v3, v1, v3

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v3, v4}, Lcom/qianhe/baselib/utils/parser/GGAParser;->ddmToDm(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->latitude:D

    const/4 v3, 0x4

    .line 46
    aget-object v3, v1, v3

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-static {v3, v4}, Lcom/qianhe/baselib/utils/parser/GGAParser;->ddmToDm(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->longitude:D

    const/4 v3, 0x6

    .line 47
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    const/4 v3, 0x7

    .line 48
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->useStarNum:I

    const/16 v3, 0x8

    .line 49
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v3, v1, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-string v3, "0"

    :goto_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->hdop:D

    const/16 v3, 0x9

    .line 50
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    .line 51
    array-length v3, v1

    const/16 v4, 0xb

    if-le v3, v4, :cond_3

    aget-object v3, v1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->geodeticHeight:D

    .line 52
    :cond_3
    array-length v3, v1

    const/16 v4, 0xd

    if-le v3, v4, :cond_4

    aget-object v3, v1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v2, Lcom/qianhe/baselib/bean/GGAEntity;->age:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_4
    iget-wide v0, v2, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    iget-wide v3, v2, Lcom/qianhe/baselib/bean/GGAEntity;->geodeticHeight:D

    add-double/2addr v0, v3

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/GGAEntity;->elevation:D

    .line 59
    iput-object p0, v2, Lcom/qianhe/baselib/bean/GGAEntity;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-object v2

    .line 54
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gga\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v0
.end method
