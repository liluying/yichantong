.class public final Lorg/locationtech/proj4j/datum/NTV2;
.super Ljava/lang/Object;
.source "NTV2.java"


# static fields
.field private static final E_LONG:I = 0x68

.field private static final HEADER_SIZE:I = 0xb0

.field private static final LAT_INC:I = 0x88

.field private static final LONG_INC:I = 0x98

.field private static final MAGIC:[B

.field private static final NUM_OREC:I = 0x8

.field private static final N_LAT:I = 0x58

.field private static final SEC_RAD:D = 4.84813681109536E-6

.field private static final SUB_HEADER_SIZE:I = 0xb0

.field private static final S_LAT:I = 0x48

.field private static final VALUES_PER_CELL:I = 0x4

.field private static final W_LONG:I = 0x78


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    const-string v0, "NUM_OREC"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/locationtech/proj4j/datum/NTV2;->MAGIC:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doubleFromBytes([BILjava/nio/ByteOrder;)D
    .locals 1

    const/16 v0, 0x8

    .line 199
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method private static guessByteOrder([B)Ljava/nio/ByteOrder;
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x4

    .line 187
    invoke-static {p0, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 188
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_0

    return-object v3

    .line 191
    :cond_0
    invoke-static {p0, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 192
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-ne p0, v4, :cond_1

    return-object v0

    .line 195
    :cond_1
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Could not determine endianness"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Ljava/io/DataInputStream;)Lorg/locationtech/proj4j/datum/Grid$ConversionTable;
    .locals 9

    const/16 v0, 0xb0

    .line 116
    new-array v1, v0, [B

    .line 117
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 119
    invoke-static {v1}, Lorg/locationtech/proj4j/datum/NTV2;->testHeader([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v1}, Lorg/locationtech/proj4j/datum/NTV2;->guessByteOrder([B)Ljava/nio/ByteOrder;

    move-result-object v1

    .line 124
    new-array v0, v0, [B

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 127
    new-instance p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    invoke-direct {p0}, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;-><init>()V

    .line 128
    const-string v2, "NTv2 Grid Shift File"

    iput-object v2, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->id:Ljava/lang/String;

    .line 130
    new-instance v2, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/16 v3, 0x78

    invoke-static {v0, v3, v1}, Lorg/locationtech/proj4j/datum/NTV2;->doubleFromBytes([BILjava/nio/ByteOrder;)D

    move-result-wide v3

    neg-double v3, v3

    const-wide v5, 0x3ed455a5b2ff8f9dL    # 4.84813681109536E-6

    mul-double v3, v3, v5

    const/16 v7, 0x48

    .line 131
    invoke-static {v0, v7, v1}, Lorg/locationtech/proj4j/datum/NTV2;->doubleFromBytes([BILjava/nio/ByteOrder;)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-direct {v2, v3, v4, v7, v8}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    iput-object v2, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    .line 133
    new-instance v2, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/16 v3, 0x68

    invoke-static {v0, v3, v1}, Lorg/locationtech/proj4j/datum/NTV2;->doubleFromBytes([BILjava/nio/ByteOrder;)D

    move-result-wide v3

    neg-double v3, v3

    mul-double v3, v3, v5

    const/16 v7, 0x58

    .line 134
    invoke-static {v0, v7, v1}, Lorg/locationtech/proj4j/datum/NTV2;->doubleFromBytes([BILjava/nio/ByteOrder;)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-direct {v2, v3, v4, v7, v8}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    .line 136
    new-instance v3, Lorg/locationtech/proj4j/util/PolarCoordinate;

    const/16 v4, 0x98

    invoke-static {v0, v4, v1}, Lorg/locationtech/proj4j/datum/NTV2;->doubleFromBytes([BILjava/nio/ByteOrder;)D

    move-result-wide v7

    mul-double v7, v7, v5

    const/16 v4, 0x88

    .line 137
    invoke-static {v0, v4, v1}, Lorg/locationtech/proj4j/datum/NTV2;->doubleFromBytes([BILjava/nio/ByteOrder;)D

    move-result-wide v0

    mul-double v0, v0, v5

    invoke-direct {v3, v7, v8, v0, v1}, Lorg/locationtech/proj4j/util/PolarCoordinate;-><init>(DD)V

    iput-object v3, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    .line 138
    new-instance v0, Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget-wide v3, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v5, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    sub-double/2addr v3, v5

    .line 139
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v1, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v5, v1, Lorg/locationtech/proj4j/util/PolarCoordinate;->lam:D

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v1, v3

    add-int/lit8 v1, v1, 0x1

    iget-wide v2, v2, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    iget-object v4, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->ll:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v7, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    sub-double/2addr v2, v7

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v4, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->del:Lorg/locationtech/proj4j/util/PolarCoordinate;

    iget-wide v7, v4, Lorg/locationtech/proj4j/util/PolarCoordinate;->phi:D

    div-double/2addr v2, v7

    add-double/2addr v2, v5

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/locationtech/proj4j/util/IntPolarCoordinate;-><init>(II)V

    iput-object v0, p0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    return-object p0

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Not a NTv2 file"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static load(Ljava/io/DataInputStream;Lorg/locationtech/proj4j/datum/Grid;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 153
    iget-object v2, v1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    iget-object v2, v2, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->lim:Lorg/locationtech/proj4j/util/IntPolarCoordinate;

    iget v3, v2, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->lam:I

    .line 154
    iget v2, v2, Lorg/locationtech/proj4j/util/IntPolarCoordinate;->phi:I

    const/16 v4, 0xb0

    .line 156
    new-array v5, v4, [B

    .line 157
    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 158
    invoke-static {v5}, Lorg/locationtech/proj4j/datum/NTV2;->guessByteOrder([B)Ljava/nio/ByteOrder;

    move-result-object v5

    .line 160
    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    mul-int v4, v3, v2

    .line 162
    new-array v4, v4, [Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    mul-int/lit8 v6, v3, 0x4

    .line 164
    new-array v6, v6, [F

    mul-int/lit8 v7, v3, 0x10

    .line 165
    new-array v7, v7, [B

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v2, :cond_1

    .line 168
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 169
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_0

    mul-int v11, v9, v3

    sub-int v12, v3, v10

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v11, v12

    .line 172
    new-instance v12, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    mul-int/lit8 v13, v10, 0x4

    add-int/lit8 v14, v13, 0x1

    aget v14, v6, v14

    float-to-double v14, v14

    const-wide v16, 0x3ed455a5b2ff8f9dL    # 4.84813681109536E-6

    mul-double v14, v14, v16

    double-to-float v14, v14

    aget v13, v6, v13

    move/from16 v18, v9

    float-to-double v8, v13

    mul-double v8, v8, v16

    double-to-float v8, v8

    invoke-direct {v12, v14, v8}, Lorg/locationtech/proj4j/util/FloatPolarCoordinate;-><init>(FF)V

    aput-object v12, v4, v11

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v18

    goto :goto_1

    :cond_0
    move/from16 v18, v9

    add-int/lit8 v9, v18, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, v1, Lorg/locationtech/proj4j/datum/Grid;->table:Lorg/locationtech/proj4j/datum/Grid$ConversionTable;

    iput-object v4, v0, Lorg/locationtech/proj4j/datum/Grid$ConversionTable;->cvs:[Lorg/locationtech/proj4j/util/FloatPolarCoordinate;

    return-void
.end method

.method public static testHeader([B)Z
    .locals 3

    .line 104
    sget-object v0, Lorg/locationtech/proj4j/datum/NTV2;->MAGIC:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 105
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method
