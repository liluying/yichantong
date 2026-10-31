.class public Lorg/locationtech/proj4j/units/AngleFormat;
.super Ljava/text/NumberFormat;
.source "AngleFormat.java"


# static fields
.field public static final CH_DEG_ABBREV:C = 'd'

.field public static final CH_DEG_SYMBOL:C = '\u00b0'

.field public static final CH_E:C = 'E'

.field public static final CH_MIN_ABBREV:C = 'm'

.field public static final CH_MIN_SYMBOL:C = '\''

.field public static final CH_N:C = 'N'

.field public static final CH_S:C = 'S'

.field public static final CH_W:C = 'W'

.field public static final STR_SEC_ABBREV:Ljava/lang/String; = "s"

.field public static final STR_SEC_SYMBOL:Ljava/lang/String; = "\""

.field public static final ddmmssLatPattern:Ljava/lang/String; = "DdM\'S\"N"

.field public static final ddmmssLongPattern:Ljava/lang/String; = "DdM\'S\"W"

.field public static final ddmmssPattern:Ljava/lang/String; = "DdM"

.field public static final ddmmssPattern2:Ljava/lang/String; = "DdM\'S\""

.field public static final ddmmssPattern4:Ljava/lang/String; = "DdMmSs"

.field public static final decimalPattern:Ljava/lang/String; = "D.F"


# instance fields
.field private format:Ljava/text/DecimalFormat;

.field private isDegrees:Z

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const-string v0, "DdM"

    invoke-direct {p0, v0}, Lorg/locationtech/proj4j/units/AngleFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/locationtech/proj4j/units/AngleFormat;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/locationtech/proj4j/units/AngleFormat;->pattern:Ljava/lang/String;

    .line 64
    iput-boolean p2, p0, Lorg/locationtech/proj4j/units/AngleFormat;->isDegrees:Z

    .line 65
    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1}, Ljava/text/DecimalFormat;-><init>()V

    iput-object p1, p0, Lorg/locationtech/proj4j/units/AngleFormat;->format:Ljava/text/DecimalFormat;

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 67
    iget-object p1, p0, Lorg/locationtech/proj4j/units/AngleFormat;->format:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    return-void
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 75
    iget-object v4, v0, Lorg/locationtech/proj4j/units/AngleFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x4e

    const/16 v8, 0x57

    const/4 v9, 0x0

    cmpg-double v10, v1, v5

    if-gez v10, :cond_2

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_2

    .line 81
    iget-object v6, v0, Lorg/locationtech/proj4j/units/AngleFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    neg-double v1, v1

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 90
    :goto_2
    iget-boolean v6, v0, Lorg/locationtech/proj4j/units/AngleFormat;->isDegrees:Z

    if-eqz v6, :cond_3

    move-wide v10, v1

    goto :goto_3

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    :goto_3
    const-wide v12, 0x40ac200000000000L    # 3600.0

    mul-double v12, v12, v10

    .line 91
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v6, v12

    if-gez v6, :cond_4

    neg-int v6, v6

    .line 94
    :cond_4
    rem-int/lit16 v6, v6, 0xe10

    :goto_4
    if-ge v9, v4, :cond_10

    .line 97
    iget-object v12, v0, Lorg/locationtech/proj4j/units/AngleFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x44

    if-eq v12, v13, :cond_f

    const/16 v13, 0x46

    if-eq v12, v13, :cond_e

    if-eq v12, v8, :cond_c

    const/16 v13, 0x4d

    const/16 v14, 0x30

    const/16 v15, 0xa

    if-eq v12, v13, :cond_a

    const/16 v13, 0x53

    if-eq v12, v7, :cond_8

    const/16 v8, 0x52

    if-eq v12, v8, :cond_7

    if-eq v12, v13, :cond_5

    .line 133
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    const/16 v8, 0x57

    goto :goto_6

    .line 112
    :cond_5
    rem-int/lit8 v8, v6, 0x3c

    if-ge v8, v15, :cond_6

    .line 114
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 100
    :cond_7
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    .line 128
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 130
    :cond_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 106
    :cond_a
    div-int/lit8 v8, v6, 0x3c

    if-ge v8, v15, :cond_b

    .line 108
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    :cond_b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    if-eqz v5, :cond_d

    const/16 v8, 0x57

    .line 122
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_d
    const/16 v8, 0x57

    const/16 v12, 0x45

    .line 124
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 118
    :cond_e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_f
    double-to-int v12, v10

    .line 103
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_10
    return-object v3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    long-to-double p1, p1

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/locationtech/proj4j/units/AngleFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 12

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

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

    .line 161
    :goto_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    const/16 v0, 0x64

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    const/16 v0, 0xb0

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_3
    if-eq v0, v4, :cond_e

    .line 169
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v1

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/16 v5, 0x6d

    .line 172
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v5, 0x27

    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    :cond_4
    const-wide/16 v8, 0x0

    if-eq v5, v4, :cond_b

    if-eqz v5, :cond_5

    .line 177
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    goto :goto_3

    :cond_5
    move-wide v10, v8

    .line 180
    :goto_3
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 181
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v5, v2, :cond_8

    add-int/2addr v5, v1

    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_4

    :cond_8
    move-wide v0, v8

    :goto_4
    cmpg-double v2, v10, v8

    if-ltz v2, :cond_a

    const-wide v4, 0x404d800000000000L    # 59.0

    cmpl-double v2, v10, v4

    if-gtz v2, :cond_a

    cmpg-double v2, v0, v8

    if-ltz v2, :cond_9

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v2, v0, v4

    if-gez v2, :cond_9

    move-wide v8, v10

    move-wide v10, v0

    goto :goto_5

    .line 189
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Seconds must be between 0 and 59"

    invoke-direct {p1, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Minutes must be between 0 and 59"

    invoke-direct {p1, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz v5, :cond_c

    .line 191
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v10, v8

    move-wide v8, v0

    goto :goto_5

    :cond_c
    move-wide v10, v8

    .line 192
    :goto_5
    iget-boolean v0, p0, Lorg/locationtech/proj4j/units/AngleFormat;->isDegrees:Z

    if-eqz v0, :cond_d

    .line 193
    invoke-static/range {v6 .. v11}, Lorg/locationtech/proj4j/util/ProjectionMath;->dmsToDeg(DDD)D

    move-result-wide v0

    goto :goto_6

    .line 195
    :cond_d
    invoke-static/range {v6 .. v11}, Lorg/locationtech/proj4j/util/ProjectionMath;->dmsToRad(DDD)D

    move-result-wide v0

    goto :goto_6

    .line 197
    :cond_e
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 198
    iget-boolean v2, p0, Lorg/locationtech/proj4j/units/AngleFormat;->isDegrees:Z

    if-nez v2, :cond_f

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    :cond_f
    :goto_6
    if-eqz p2, :cond_10

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_10
    if-eqz v3, :cond_11

    neg-double v0, v0

    .line 205
    :cond_11
    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1
.end method
