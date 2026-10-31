.class public Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;
.super Ljava/lang/Object;
.source "OnePointPlaneChecker.java"


# instance fields
.field private A:D

.field private B:D

.field private C:D

.field private D:D

.field private meterPerLat:D

.field private meterPerLon:D

.field private refAlt:D

.field private refLat:D

.field private refLon:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculatePlane(DDDDD)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->refLon:D

    .line 26
    iput-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->refLat:D

    .line 27
    iput-wide p5, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->refAlt:D

    .line 30
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    const-wide p3, 0x40fb2d7800000000L    # 111319.5

    .line 31
    iput-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->meterPerLat:D

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double p1, p1, p3

    iput-wide p1, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->meterPerLon:D

    .line 37
    iput-wide p7, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->A:D

    .line 38
    iput-wide p9, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->B:D

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 39
    iput-wide p1, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->C:D

    .line 40
    iput-wide p5, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->D:D

    .line 42
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u5e73\u9762\u65b9\u7a0b\u4e3a: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->A:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x + "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->B:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "y + "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->C:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "z + "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->D:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " = 0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public calculateSignedDistance([D)D
    .locals 8

    const/4 v0, 0x0

    .line 52
    aget-wide v0, p1, v0

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->refLon:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->meterPerLon:D

    mul-double v0, v0, v2

    const/4 v2, 0x1

    .line 53
    aget-wide v2, p1, v2

    iget-wide v4, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->refLat:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->meterPerLat:D

    mul-double v2, v2, v4

    const/4 v4, 0x2

    .line 54
    aget-wide v4, p1, v4

    .line 57
    iget-wide v6, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->A:D

    mul-double v6, v6, v0

    iget-wide v0, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->B:D

    mul-double v0, v0, v2

    add-double/2addr v6, v0

    iget-wide v0, p0, Lcom/qianhe/baselib/utils/workchecker/OnePointPlaneChecker;->D:D

    add-double/2addr v6, v0

    sub-double/2addr v4, v6

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v0

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public calculateSlopes([D[D)[D
    .locals 18

    const/4 v0, 0x0

    .line 73
    aget-wide v1, p2, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const/4 v3, 0x1

    .line 74
    aget-wide v4, p2, v3

    aget-wide v6, p1, v3

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    .line 75
    aget-wide v7, p2, v6

    aget-wide v9, p1, v6

    sub-double/2addr v7, v9

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const-wide/16 v13, 0x0

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v17, v9, v15

    if-lez v17, :cond_0

    div-double v1, v7, v1

    mul-double v1, v1, v11

    goto :goto_0

    :cond_0
    move-wide v1, v13

    .line 84
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v17, v9, v15

    if-lez v17, :cond_1

    div-double/2addr v7, v4

    mul-double v13, v7, v11

    :cond_1
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v4

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v4

    mul-double v13, v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v4

    new-array v4, v6, [D

    aput-wide v1, v4, v0

    aput-wide v7, v4, v3

    return-object v4
.end method
