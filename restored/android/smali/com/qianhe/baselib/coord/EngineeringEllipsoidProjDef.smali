.class public abstract Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef;
.super Ljava/lang/Object;
.source "EngineeringEllipsoidProjDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;
    }
.end annotation


# direct methods
.method public static ellipsoidLabel(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672a\u77e5("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    const-string/jumbo p0, "\u5317\u4eac54"

    return-object p0

    .line 115
    :cond_1
    const-string/jumbo p0, "\u897f\u5b8980"

    return-object p0

    .line 113
    :cond_2
    const-string p0, "CGCS2000"

    return-object p0

    .line 111
    :cond_3
    const-string p0, "WGS-84"

    return-object p0

    .line 109
    :cond_4
    const-string/jumbo p0, "\u81ea\u5b9a\u4e49"

    return-object p0
.end method

.method public static projectionLabel(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u672a\u77e5("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    const-string/jumbo p0, "\u6a2a\u8f74\u58a8\u5361\u6258\u6295\u5f71"

    return-object p0

    .line 128
    :cond_1
    const-string p0, "UTM\u6295\u5f71"

    return-object p0

    .line 126
    :cond_2
    const-string/jumbo p0, "\u9ad8\u65af\u6295\u5f71"

    return-object p0
.end method

.method public static resolveEllipsoidParams(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 151
    :cond_0
    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-eqz p0, :cond_3

    .line 153
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->a:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    return-object v0

    .line 156
    :cond_1
    iget-wide v3, p0, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->f:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v3, v5

    if-lez p0, :cond_2

    div-double v3, v5, v3

    .line 157
    :cond_2
    new-instance p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;-><init>(DD)V

    return-object p0

    :cond_3
    const/4 p0, 0x1

    const-wide v2, 0x415854a640000000L    # 6378137.0

    if-eq v1, p0, :cond_7

    const/4 p0, 0x2

    const-wide v4, 0x3f6b775a87362105L    # 0.003352810681182319

    if-eq v1, p0, :cond_6

    const/4 p0, 0x3

    if-eq v1, p0, :cond_5

    const/4 p0, 0x4

    if-eq v1, p0, :cond_4

    .line 169
    new-instance p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;-><init>(DD)V

    return-object p0

    .line 167
    :cond_4
    new-instance p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;

    const-wide v0, 0x415854c140000000L    # 6378245.0

    const-wide v2, 0x3f6b765864ec84d9L    # 0.003352329869259135

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;-><init>(DD)V

    return-object p0

    .line 165
    :cond_5
    new-instance p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;

    const-wide v0, 0x415854a700000000L    # 6378140.0

    const-wide v2, 0x3f6b775bde5b76ddL    # 0.0033528131778969143

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;-><init>(DD)V

    return-object p0

    .line 163
    :cond_6
    new-instance p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;-><init>(DD)V

    return-object p0

    .line 161
    :cond_7
    new-instance p0, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;

    const-wide v0, 0x3f6b775a84f3e128L    # 0.0033528106647474805

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/qianhe/baselib/coord/EngineeringEllipsoidProjDef$EllipsoidParams;-><init>(DD)V

    return-object p0
.end method
