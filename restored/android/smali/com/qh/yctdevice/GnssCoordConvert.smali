.class public Lcom/qh/yctdevice/GnssCoordConvert;
.super Ljava/lang/Object;
.source "GnssCoordConvert.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;,
        Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;,
        Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;
    }
.end annotation


# instance fields
.field private mFn:D

.field private mHandle:J

.field private mLat0:D

.field private mLat0OffsetEnabled:Z

.field private mLon0:D

.field private mOriginNorthing:D

.field private mOriginNorthingValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 280
    const-string/jumbo v0, "yctdevice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLon0:D

    .line 21
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0:D

    .line 22
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mFn:D

    .line 23
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthing:D

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0OffsetEnabled:Z

    .line 25
    iput-boolean v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthingValid:Z

    .line 29
    invoke-static {}, Lcom/qh/yctdevice/GnssCoordConvert;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    return-void
.end method

.method private applyLat0AfterForward([D)Z
    .locals 6

    .line 200
    iget-boolean v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0OffsetEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/qh/yctdevice/GnssCoordConvert;->ensureOriginNorthing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_1
    aget-wide v2, p1, v1

    iget-wide v4, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthing:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mFn:D

    add-double/2addr v2, v4

    aput-wide v2, p1, v1

    return v1
.end method

.method private static native blhToXyz(J[D[D)Z
.end method

.method private configureLat0(DDD)V
    .locals 0

    .line 176
    iput-wide p1, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLon0:D

    .line 177
    iput-wide p3, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0:D

    .line 178
    iput-wide p5, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mFn:D

    .line 179
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x3d719799812dea11L    # 1.0E-12

    const/4 p5, 0x0

    cmpl-double p6, p1, p3

    if-lez p6, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0OffsetEnabled:Z

    .line 180
    iput-boolean p5, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthingValid:Z

    return-void
.end method

.method private static native create()J
.end method

.method private static native destory(J)V
.end method

.method private ensureOriginNorthing()Z
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 185
    iget-boolean v2, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0OffsetEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 186
    :cond_0
    iget-boolean v2, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthingValid:Z

    if-eqz v2, :cond_1

    return v3

    .line 187
    :cond_1
    iget-wide v4, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    return v1

    .line 188
    :cond_2
    new-array v2, v0, [D

    .line 189
    iget-wide v6, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLon0:D

    iget-wide v8, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0:D

    new-array v0, v0, [D

    aput-wide v6, v0, v1

    aput-wide v8, v0, v3

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    aput-wide v6, v0, v8

    invoke-static {v4, v5, v0, v2}, Lcom/qh/yctdevice/GnssCoordConvert;->geoToProj(J[D[D)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 192
    :cond_3
    aget-wide v0, v2, v3

    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthing:D

    .line 193
    iput-boolean v3, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthingValid:Z

    return v3
.end method

.method private static native geoToProj(J[D[D)Z
.end method

.method private static native getFlattening(J)D
.end method

.method private static native getSemiMajorAxis(J)D
.end method

.method private static native getSemiMinorAxis(J)D
.end method

.method private static native hasProjection(J)Z
.end method

.method private static native projToGeo(J[D[D)Z
.end method

.method private static native projToXyz(J[D[D)Z
.end method

.method private static native setEllipsoidByType(JI)V
.end method

.method private static native setEllipsoidByValue(JDD)V
.end method

.method private static native setGaussKrugerProjection(JDDDDDI)V
.end method

.method private static native setTransverseMercatorProjection(JDDDDDI)V
.end method

.method private static native setUtmProjection(JIZDI)V
.end method

.method private toNativeProj([D)[D
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-boolean v3, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mLat0OffsetEnabled:Z

    if-nez v3, :cond_0

    return-object p1

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/qh/yctdevice/GnssCoordConvert;->ensureOriginNorthing()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 210
    :cond_1
    aget-wide v3, p1, v2

    aget-wide v5, p1, v1

    iget-wide v7, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthing:D

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mFn:D

    sub-double/2addr v5, v7

    aget-wide v7, p1, v0

    const/4 p1, 0x3

    new-array p1, p1, [D

    aput-wide v3, p1, v2

    aput-wide v5, p1, v1

    aput-wide v7, p1, v0

    return-object p1
.end method

.method private static native xyzToBlh(J[D[D)Z
.end method

.method private static native xyzToProj(J[D[D)Z
.end method


# virtual methods
.method public blhToXyz([D[D)Z
    .locals 6

    .line 122
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    array-length v2, p2

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v0, v1, p1, p2}, Lcom/qh/yctdevice/GnssCoordConvert;->blhToXyz(J[D[D)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v4
.end method

.method public close()V
    .locals 5

    .line 35
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 37
    invoke-static {v0, v1}, Lcom/qh/yctdevice/GnssCoordConvert;->destory(J)V

    const-wide/16 v0, -0x1

    .line 38
    iput-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    :cond_0
    return-void
.end method

.method public geoToProj([D[D)Z
    .locals 6

    .line 138
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    array-length v2, p2

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {v0, v1, p1, p2}, Lcom/qh/yctdevice/GnssCoordConvert;->geoToProj(J[D[D)Z

    move-result p1

    if-nez p1, :cond_2

    return v4

    .line 141
    :cond_2
    invoke-direct {p0, p2}, Lcom/qh/yctdevice/GnssCoordConvert;->applyLat0AfterForward([D)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v4
.end method

.method public projToGeo([D[D)Z
    .locals 6

    .line 147
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    array-length v0, p2

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0, p1}, Lcom/qh/yctdevice/GnssCoordConvert;->toNativeProj([D)[D

    move-result-object p1

    if-nez p1, :cond_2

    return v4

    .line 151
    :cond_2
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/qh/yctdevice/GnssCoordConvert;->projToGeo(J[D[D)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v4
.end method

.method public setEllipsoid(DD)V
    .locals 6

    .line 55
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    move-wide v2, p1

    move-wide v4, p3

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoidByValue(JDD)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthingValid:Z

    return-void
.end method

.method public setEllipsoid(I)V
    .locals 5

    .line 47
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/qh/yctdevice/GnssCoordConvert;->setEllipsoidByType(JI)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mOriginNorthingValid:Z

    return-void
.end method

.method public setProjection(Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 63
    iget-wide v2, v0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-wide v4, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lon0:D

    iget-wide v6, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fe:D

    iget-wide v8, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fn:D

    iget-wide v10, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->k0:D

    iget-wide v12, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->projectionHeight:D

    iget v14, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->deformationMethod:I

    invoke-static/range {v2 .. v14}, Lcom/qh/yctdevice/GnssCoordConvert;->setGaussKrugerProjection(JDDDDDI)V

    .line 66
    iget-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lon0:D

    move-wide v5, v2

    iget-wide v3, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->lat0:D

    iget-wide v1, v1, Lcom/qh/yctdevice/GnssCoordConvert$GaussKrugerParams;->fn:D

    move-wide v15, v5

    move-wide v5, v1

    move-wide v1, v15

    invoke-direct/range {v0 .. v6}, Lcom/qh/yctdevice/GnssCoordConvert;->configureLat0(DDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProjection(Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 81
    iget-wide v2, v0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-wide v4, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->lon0:D

    iget-wide v6, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->fe:D

    iget-wide v8, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->fn:D

    iget-wide v10, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->k0:D

    iget-wide v12, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->projectionHeight:D

    iget v14, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->deformationMethod:I

    invoke-static/range {v2 .. v14}, Lcom/qh/yctdevice/GnssCoordConvert;->setTransverseMercatorProjection(JDDDDDI)V

    .line 84
    iget-wide v2, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->lon0:D

    move-wide v5, v2

    iget-wide v3, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->lat0:D

    iget-wide v1, v1, Lcom/qh/yctdevice/GnssCoordConvert$TransverseMercatorParams;->fn:D

    move-wide v15, v5

    move-wide v5, v1

    move-wide v1, v15

    invoke-direct/range {v0 .. v6}, Lcom/qh/yctdevice/GnssCoordConvert;->configureLat0(DDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProjection(Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;)V
    .locals 14

    .line 72
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget v2, p1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->zone:I

    iget-boolean v3, p1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->isNorth:Z

    iget-wide v4, p1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->projectionHeight:D

    iget v6, p1, Lcom/qh/yctdevice/GnssCoordConvert$UTMParams;->deformationMethod:I

    invoke-static/range {v0 .. v6}, Lcom/qh/yctdevice/GnssCoordConvert;->setUtmProjection(JIZDI)V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v8, 0x0

    move-object v7, p0

    .line 75
    invoke-direct/range {v7 .. v13}, Lcom/qh/yctdevice/GnssCoordConvert;->configureLat0(DDD)V

    :cond_1
    :goto_0
    return-void
.end method

.method public xyzToBlh([D[D)Z
    .locals 6

    .line 130
    iget-wide v0, p0, Lcom/qh/yctdevice/GnssCoordConvert;->mHandle:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    array-length v2, p2

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {v0, v1, p1, p2}, Lcom/qh/yctdevice/GnssCoordConvert;->xyzToBlh(J[D[D)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v4
.end method
