.class public final Lorg/locationtech/proj4j/datum/NTV1;
.super Ljava/lang/Object;
.source "NTV1.java"


# static fields
.field private static final magic1:[B

.field private static final magic2:[B

.field private static final magic3:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "HEADER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lorg/locationtech/proj4j/datum/NTV1;->magic1:[B

    .line 34
    const-string v1, "W GRID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lorg/locationtech/proj4j/datum/NTV1;->magic2:[B

    .line 35
    const-string v1, "TO      NAD83   "

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/locationtech/proj4j/datum/NTV1;->magic3:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsAt([B[BI)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    array-length v3, p1

    sub-int/2addr v3, p2

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 95
    aget-byte v4, p0, v3

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    if-eq v4, v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method private static doubleFromBytes([BI)D
    .locals 1

    const/16 v0, 0x8

    .line 102
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static init(Ljava/io/DataInputStream;)Lorg/locationtech/proj4j/datum/Grid$ConversionTable;
    .locals 11

    const/4 v0, 0x1

    const/16 v1, 0xa0

    .line 44
    new-array v1, v1, [B

    .line 45
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 46
    invoke-static {v1}, Lorg/locationtech/proj4j/datum/NTV1;->testHeader([B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    .line 49
    invoke-static {v1, p0}, Lorg/locationtech/proj4j/datum/NTV1;->intFromBytes([BI)I

    move-result p0

    const/16 v2, 0xc

    if-ne p0, v2, :cond_0

    .line 54
    new-instance p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    invoke-direct {p0}, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;-><init>()V

    .line 55
    const-string v2, "NTv1 Grid Shift File"

    iput-object v2, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    .line 56
    new-instance v2, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/16 v3, 0x48

    invoke-static {v1, v3}, Lorg/locationtech/proj4j/datum/NTV1;->doubleFromBytes([BI)D

    move-result-wide v3

    neg-double v3, v3

    const/16 v5, 0x18

    invoke-static {v1, v5}, Lorg/locationtech/proj4j/datum/NTV1;->doubleFromBytes([BI)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    iput-object v2, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    .line 57
    new-instance v2, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/16 v3, 0x38

    invoke-static {v1, v3}, Lorg/locationtech/proj4j/datum/NTV1;->doubleFromBytes([BI)D

    move-result-wide v3

    neg-double v3, v3

    const/16 v5, 0x28

    invoke-static {v1, v5}, Lorg/locationtech/proj4j/datum/NTV1;->doubleFromBytes([BI)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 58
    new-instance v3, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/16 v4, 0x68

    invoke-static {v1, v4}, Lorg/locationtech/proj4j/datum/NTV1;->doubleFromBytes([BI)D

    move-result-wide v4

    const/16 v6, 0x58

    invoke-static {v1, v6}, Lorg/locationtech/proj4j/datum/NTV1;->doubleFromBytes([BI)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    iput-object v3, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    .line 59
    new-instance v1, Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget-wide v3, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-object v5, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v5, v5, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double/2addr v3, v5

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v5, v5, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v3, v0

    iget-wide v7, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-object v2, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v9, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double/2addr v7, v9

    .line 61
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-object v2, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v9, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    div-double/2addr v7, v9

    add-double/2addr v7, v5

    double-to-int v2, v7

    add-int/2addr v2, v0

    invoke-direct {v1, v3, v2}, Lorg/locationtech/proj4j/util/IntPolarCoordinate;-><init>(II)V

    iput-object v1, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    .line 62
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    const-wide v3, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 63
    iget-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    .line 64
    iget-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    .line 65
    iget-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    mul-double v1, v1, v3

    iput-wide v1, v0, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    return-object p0

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/Error;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string p0, "NTv1 grid shift file has wrong record count, corrupt? $0%08X $0"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Not a NTV1 file"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static intFromBytes([BI)I
    .locals 1

    const/4 v0, 0x4

    .line 106
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static load(Ljava/io/DataInputStream;Lorg/locationtech/proj4j/datum/Grid;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0xb0

    .line 70
    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 71
    iget-object v2, v1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    iget-object v2, v2, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v3, v2, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [D

    .line 72
    iget v2, v2, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    mul-int v2, v2, v3

    new-array v2, v2, [Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 75
    :goto_0
    iget-object v7, v1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    iget-object v8, v7, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v8, v8, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    if-ge v6, v8, :cond_1

    mul-int/lit8 v7, v3, 0x10

    .line 76
    new-array v7, v7, [B

    .line 77
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 78
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    const/4 v7, 0x0

    .line 79
    :goto_1
    iget-object v8, v1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    iget-object v8, v8, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v8, v8, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    if-ge v7, v8, :cond_0

    mul-int v9, v6, v8

    add-int/2addr v9, v8

    sub-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    .line 80
    new-instance v8, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    mul-int/lit8 v10, v7, 0x2

    aget-wide v11, v4, v10

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double v11, v11, v13

    const-wide v15, 0x4066800000000000L    # 180.0

    div-double/2addr v11, v15

    const-wide v17, 0x40ac200000000000L    # 3600.0

    div-double v11, v11, v17

    double-to-float v11, v11

    add-int/lit8 v10, v10, 0x1

    aget-wide v19, v4, v10

    mul-double v19, v19, v13

    div-double v19, v19, v15

    div-double v12, v19, v17

    double-to-float v10, v12

    invoke-direct {v8, v11, v10}, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;-><init>(FF)V

    aput-object v8, v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iput-object v2, v7, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    return-void
.end method

.method public static testHeader([B)Z
    .locals 3

    .line 38
    sget-object v0, Lorg/locationtech/proj4j/datum/NTV1;->magic1:[B

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/locationtech/proj4j/datum/NTV1;->containsAt([B[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/locationtech/proj4j/datum/NTV1;->magic2:[B

    const/16 v2, 0x60

    .line 39
    invoke-static {v0, p0, v2}, Lorg/locationtech/proj4j/datum/NTV1;->containsAt([B[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/locationtech/proj4j/datum/NTV1;->magic3:[B

    const/16 v2, 0x90

    .line 40
    invoke-static {v0, p0, v2}, Lorg/locationtech/proj4j/datum/NTV1;->containsAt([B[BI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
