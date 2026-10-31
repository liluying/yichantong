.class public abstract Lcom/qianhe/yct/utils/PointLibCoordUtils;
.super Ljava/lang/Object;
.source "PointLibCoordUtils.java"


# direct methods
.method public static normalizeGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 37
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 38
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 39
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 40
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 41
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 42
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 43
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundDop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    .line 44
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundDop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    return-void
.end method

.method public static round(DI)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 31
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p2, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static roundDop(D)D
    .locals 1

    const/4 v0, 0x3

    .line 26
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->round(DI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static roundElev(D)D
    .locals 1

    const/4 v0, 0x3

    .line 22
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->round(DI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static roundLonLat(D)D
    .locals 1

    const/16 v0, 0x8

    .line 18
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->round(DI)D

    move-result-wide p0

    return-wide p0
.end method
