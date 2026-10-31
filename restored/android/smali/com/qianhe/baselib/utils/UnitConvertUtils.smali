.class public abstract Lcom/qianhe/baselib/utils/UnitConvertUtils;
.super Ljava/lang/Object;
.source "UnitConvertUtils.java"


# direct methods
.method public static fromMeter(IDI)D
    .locals 2

    .line 45
    invoke-static {p0}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p0

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 49
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->CM:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p0, v0, :cond_1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    .line 50
    invoke-static {p1, p2, p3}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->round(DI)D

    move-result-wide p0

    return-wide p0

    .line 52
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-wide v0, 0x4043af5ebd7af5ecL    # 39.37007874015748

    mul-double p1, p1, v0

    .line 53
    invoke-static {p1, p2, p3}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->round(DI)D

    move-result-wide p0

    return-wide p0

    :cond_2
    if-nez p3, :cond_3

    return-wide p1

    .line 58
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->round(DI)D

    move-result-wide p0

    return-wide p0
.end method

.method private static round(DI)D
    .locals 0

    .line 62
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static toMeter(ID)D
    .locals 3

    .line 28
    invoke-static {p0}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 32
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->CM:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p0, v0, :cond_1

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    :goto_0
    mul-double p1, p1, v0

    return-wide p1

    .line 35
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-wide v0, 0x3f9a027525460aa6L    # 0.0254

    goto :goto_0

    :cond_2
    return-wide p1
.end method
