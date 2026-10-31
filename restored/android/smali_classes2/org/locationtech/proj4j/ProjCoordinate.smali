.class public Lorg/locationtech/proj4j/ProjCoordinate;
.super Ljava/lang/Object;
.source "ProjCoordinate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static DECIMAL_FORMAT:Ljava/text/DecimalFormat; = null

.field public static DECIMAL_FORMAT_PATTERN:Ljava/lang/String; = "0.0###############"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lorg/locationtech/proj4j/ProjCoordinate;->DECIMAL_FORMAT_PATTERN:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/locationtech/proj4j/ProjCoordinate;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 74
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/locationtech/proj4j/ProjCoordinate;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 105
    iput-wide p3, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 106
    iput-wide p1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 92
    iput-wide p3, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 93
    iput-wide p5, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "ProjCoordinate: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 119
    const-string v1, "The input string was not in the proper format."

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    .line 136
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 141
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 147
    array-length v0, p1

    const/4 v4, 0x3

    if-eq v0, v2, :cond_1

    .line 148
    array-length v0, p1

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p1

    .line 157
    :cond_1
    :goto_0
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 158
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 161
    array-length v0, p1

    if-ne v0, v4, :cond_2

    .line 162
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    :cond_2
    return-void

    .line 120
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1
.end method

.method private static hashCode(D)I
    .locals 2

    .line 337
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method


# virtual methods
.method public areXOrdinatesEqual(Lorg/locationtech/proj4j/ProjCoordinate;D)Z
    .locals 4

    .line 222
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    sub-double/2addr v0, v2

    cmpl-double p1, v0, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public areYOrdinatesEqual(Lorg/locationtech/proj4j/ProjCoordinate;D)Z
    .locals 4

    .line 243
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    sub-double/2addr v0, v2

    cmpl-double p1, v0, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public areZOrdinatesEqual(Lorg/locationtech/proj4j/ProjCoordinate;D)Z
    .locals 7

    .line 267
    iget-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 268
    iget-wide p1, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 280
    :cond_1
    iget-wide v3, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 294
    :cond_2
    iget-wide v3, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    iget-wide v5, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    sub-double/2addr v3, v5

    cmpl-double p1, v3, p2

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public clearZ()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 207
    iput-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 304
    instance-of v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    check-cast p1, Lorg/locationtech/proj4j/ProjCoordinate;

    .line 308
    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    return v1

    .line 311
    :cond_1
    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public hasValidXandYOrdinates()Z
    .locals 5

    .line 403
    iget-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 405
    :cond_0
    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 409
    :cond_1
    iget-wide v3, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 411
    :cond_2
    iget-wide v3, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public hasValidZOrdinate()Z
    .locals 2

    .line 390
    iget-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 325
    iget-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    invoke-static {v0, v1}, Lorg/locationtech/proj4j/ProjCoordinate;->hashCode(D)I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 326
    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-static {v2, v3}, Lorg/locationtech/proj4j/ProjCoordinate;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public setValue(DD)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 188
    iput-wide p3, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 189
    iput-wide p1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public setValue(DDD)V
    .locals 0

    .line 201
    iput-wide p1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 202
    iput-wide p3, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 203
    iput-wide p5, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public setValue(Lorg/locationtech/proj4j/ProjCoordinate;)V
    .locals 2

    .line 173
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    .line 174
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    .line 175
    iget-wide v0, p1, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    iput-wide v0, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 7

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    sget-object v1, Lorg/locationtech/proj4j/ProjCoordinate;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    sget-object v4, Lorg/locationtech/proj4j/ProjCoordinate;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    iget-wide v5, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-wide v1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 384
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    const-string v1, "ProjCoordinate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-wide v1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-wide v2, p0, Lorg/locationtech/proj4j/ProjCoordinate;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-wide v1, p0, Lorg/locationtech/proj4j/ProjCoordinate;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
