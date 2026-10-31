.class public Lorg/locationtech/proj4j/units/Angle;
.super Ljava/lang/Object;
.source "Angle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)D
    .locals 13

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v4, 0x45

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x53

    if-eq v3, v4, :cond_0

    const/16 v4, 0x57

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    const/16 v0, 0x64

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    const/16 v0, 0xb0

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_3
    if-eq v0, v4, :cond_e

    .line 66
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v1

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/16 v0, 0x6d

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    const/16 v0, 0x27

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_4
    const-wide/16 v7, 0x0

    if-eq v0, v4, :cond_b

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    goto :goto_3

    :cond_5
    move-wide v9, v7

    .line 77
    :goto_3
    const-string v4, "s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "\""

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 78
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 79
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v0, v2, :cond_8

    add-int/2addr v0, v1

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_4

    :cond_8
    move-wide v0, v7

    :goto_4
    cmpg-double p0, v9, v7

    if-ltz p0, :cond_a

    const-wide v11, 0x404d800000000000L    # 59.0

    cmpl-double p0, v9, v11

    if-gtz p0, :cond_a

    cmpg-double p0, v0, v7

    if-ltz p0, :cond_9

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double p0, v0, v7

    if-gez p0, :cond_9

    move-wide v7, v9

    move-wide v9, v0

    goto :goto_5

    .line 86
    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Seconds must be between 0 and 59"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_a
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Minutes must be between 0 and 59"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-eqz v0, :cond_c

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    move-wide v9, v7

    goto :goto_5

    .line 91
    :cond_d
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v9, v7

    move-wide v7, v0

    .line 92
    :goto_5
    invoke-static/range {v5 .. v10}, Lorg/locationtech/proj4j/util/ProjectionMath;->dmsToDeg(DDD)D

    move-result-wide v0

    goto :goto_6

    .line 94
    :cond_e
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_6
    if-eqz v3, :cond_f

    neg-double v0, v0

    :cond_f
    return-wide v0
.end method
