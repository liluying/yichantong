.class public final Lorg/locationtech/proj4j/datum/CTABLEV2;
.super Ljava/lang/Object;
.source "CTABLEV2.java"


# static fields
.field private static final magic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "CTABLE V2"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/locationtech/proj4j/datum/CTABLEV2;->magic:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsAt([B[BI)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 77
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

    .line 79
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

    .line 86
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method private static floatFromBytes([BI)F
    .locals 1

    const/4 v0, 0x4

    .line 94
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0
.end method

.method public static init(Ljava/io/DataInputStream;)Lorg/locationtech/proj4j/datum/Grid$ConversionTable;
    .locals 8

    const/16 v0, 0xa0

    .line 38
    new-array v0, v0, [B

    .line 39
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 40
    sget-object p0, Lorg/locationtech/proj4j/datum/CTABLEV2;->magic:[B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/locationtech/proj4j/datum/CTABLEV2;->containsAt([B[BI)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    const/16 v2, 0x60

    .line 41
    invoke-static {v0, p0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 42
    new-instance v3, Lorg/locationtech/proj4j/util/PolarCoordinate;

    invoke-static {v0, v2}, Lorg/locationtech/proj4j/datum/CTABLEV2;->doubleFromBytes([BI)D

    move-result-wide v4

    const/16 v2, 0x68

    invoke-static {v0, v2}, Lorg/locationtech/proj4j/datum/CTABLEV2;->doubleFromBytes([BI)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 43
    new-instance v2, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/16 v4, 0x70

    invoke-static {v0, v4}, Lorg/locationtech/proj4j/datum/CTABLEV2;->doubleFromBytes([BI)D

    move-result-wide v4

    const/16 v6, 0x78

    invoke-static {v0, v6}, Lorg/locationtech/proj4j/datum/CTABLEV2;->doubleFromBytes([BI)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 44
    new-instance v4, Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    const/16 v5, 0x80

    invoke-static {v0, v5}, Lorg/locationtech/proj4j/datum/CTABLEV2;->intFromBytes([BI)I

    move-result v5

    const/16 v6, 0x84

    invoke-static {v0, v6}, Lorg/locationtech/proj4j/datum/CTABLEV2;->intFromBytes([BI)I

    move-result v0

    invoke-direct {v4, v5, v0}, Lorg/locationtech/proj4j/util/IntPolarCoordinate;-><init>(II)V

    .line 47
    iget v0, v4, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    const/4 v5, 0x1

    if-lt v0, v5, :cond_1

    const v6, 0x186a0

    if-gt v0, v6, :cond_1

    iget v0, v4, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    if-lt v0, v5, :cond_1

    if-gt v0, v6, :cond_1

    const/4 v0, 0x0

    .line 52
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    aget-byte v5, p0, v0

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    invoke-direct {v5}, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;-><init>()V

    .line 54
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v1, v0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    .line 55
    iput-object v3, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    .line 56
    iput-object v2, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    .line 57
    iput-object v4, v5, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    return-object v5

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grid position counts outside of acceptable parameters for CTABLE file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Not a CTABLE V2 file"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static intFromBytes([BI)I
    .locals 1

    const/4 v0, 0x4

    .line 90
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static load(Ljava/io/DataInputStream;Lorg/locationtech/proj4j/datum/Grid;)V
    .locals 8

    .line 62
    iget-object p1, p1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    .line 63
    iget-object v0, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v1, v0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    iget v0, v0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    mul-int v1, v1, v0

    .line 64
    new-array v0, v1, [Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    const/16 v2, 0x8

    .line 65
    new-array v2, v2, [B

    const/16 v3, 0xa0

    .line 66
    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 69
    new-instance v5, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    invoke-static {v2, v3}, Lorg/locationtech/proj4j/datum/CTABLEV2;->floatFromBytes([BI)F

    move-result v6

    const/4 v7, 0x4

    invoke-static {v2, v7}, Lorg/locationtech/proj4j/datum/CTABLEV2;->floatFromBytes([BI)F

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;-><init>(FF)V

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iput-object v0, p1, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    return-void
.end method

.method public static testHeader([B)Z
    .locals 2

    .line 34
    sget-object v0, Lorg/locationtech/proj4j/datum/CTABLEV2;->magic:[B

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/locationtech/proj4j/datum/CTABLEV2;->containsAt([B[BI)Z

    move-result p0

    return p0
.end method
