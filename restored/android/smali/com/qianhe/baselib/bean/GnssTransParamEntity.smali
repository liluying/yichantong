.class public Lcom/qianhe/baselib/bean/GnssTransParamEntity;
.super Ljava/lang/Object;
.source "GnssTransParamEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;,
        Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;
    }
.end annotation


# static fields
.field private static final CONTROL_POINT_LIST_TYPE:Ljava/lang/reflect/Type;

.field private static final GSON:Lcom/google/gson/Gson;

.field private static final SCALE_PPM_FACTOR:D = 1000000.0


# instance fields
.field public belongUid:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "belong_uid"
    .end annotation
.end field

.field public transient controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;",
            ">;"
        }
    .end annotation
.end field

.field public controlPointsJson:Ljava/lang/String;

.field public createTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_epoch"
    .end annotation
.end field

.field public localId:J

.field public name:Ljava/lang/String;

.field public paramType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "param_type"
    .end annotation
.end field

.field public paramsDetail:Ljava/lang/String;

.field public state:I

.field public transParamId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public transParamUuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field public updateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_epoch"
    .end annotation
.end field

.field public version:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->GSON:Lcom/google/gson/Gson;

    .line 26
    new-instance v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$1;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity$1;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->CONTROL_POINT_LIST_TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public static formatControlPointCsvLine(Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 226
    invoke-static {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasMeasurePoint(Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    .line 228
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v8, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-wide v9, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v3

    aput-object v6, v10, v2

    aput-object v7, v10, v1

    aput-object v8, v10, v0

    const/4 v0, 0x4

    aput-object v9, v10, v0

    const/4 v0, 0x5

    aput-object p0, v10, v0

    .line 227
    const-string p0, "%.4f,%.4f,%.4f,%.4f,%.4f,%.4f"

    invoke-static {v4, p0, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v3

    aput-object v6, v0, v2

    aput-object p0, v0, v1

    const-string p0, "%.4f,%.4f,%.4f"

    invoke-static {v4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatControlPointsCsv(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 216
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0xa

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    invoke-static {v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->formatControlPointCsvLine(Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 216
    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static hasMeasurePoint(Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;)Z
    .locals 5

    .line 272
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidScaleK(D)Z
    .locals 3

    .line 136
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidScalePpm(D)Z
    .locals 3

    .line 131
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x3ee17b8000000000L    # -500000.0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, 0x411e848000000000L    # 500000.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static normalizeScaleToK(D)D
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scaleStoredToK(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static normalizeScaleToPpm(D)D
    .locals 3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 124
    invoke-static {p0, p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scaleKToPpm(D)D

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method public static parseControlPointCsvLine(Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;
    .locals 8

    .line 246
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 247
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    array-length v0, p0

    if-eq v0, v2, :cond_0

    return-object v1

    .line 250
    :cond_0
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 251
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_1

    .line 253
    :try_start_0
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    return-object v1

    .line 258
    :cond_1
    new-instance v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;-><init>()V

    .line 260
    aget-wide v4, v0, v4

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    const/4 v4, 0x1

    .line 261
    aget-wide v4, v0, v4

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    const/4 v4, 0x2

    .line 262
    aget-wide v4, v0, v4

    iput-wide v4, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    .line 263
    array-length p0, p0

    if-ne p0, v2, :cond_2

    .line 264
    aget-wide v2, v0, v3

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    const/4 p0, 0x4

    .line 265
    aget-wide v2, v0, p0

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    const/4 p0, 0x5

    .line 266
    aget-wide v2, v0, p0

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    :cond_2
    return-object v1
.end method

.method public static parseControlPointsCsv(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 236
    :cond_0
    const-string v1, "\\r?\\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 237
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    invoke-static {v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->parseControlPointCsvLine(Ljava/lang/String;)Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 240
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static scaleKToPpm(D)D
    .locals 2

    .line 0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static scalePpmToK(D)D
    .locals 2

    .line 0
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static scaleStoredToK(D)D
    .locals 3

    .line 0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    return-wide p0

    :cond_0
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public applyToTransform(Lcom/qh/yctdevice/GnssParamTransform;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    new-instance v1, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;

    invoke-direct {v1}, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;-><init>()V

    .line 167
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dx:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dx:D

    .line 168
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->dy:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->dy:D

    .line 169
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->rotation:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->r:D

    .line 170
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    invoke-static {v2, v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scaleStoredToK(D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$FourParameter;->scale:D

    .line 171
    invoke-virtual {p1, v1}, Lcom/qh/yctdevice/GnssParamTransform;->setFourParameter(Lcom/qh/yctdevice/GnssParamTransform$FourParameter;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 175
    :cond_3
    new-instance v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;

    invoke-direct {v1}, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;-><init>()V

    .line 176
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dx:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dx:D

    .line 177
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dy:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dy:D

    .line 178
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->dz:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->dz:D

    .line 179
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rx:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rx:D

    .line 180
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->ry:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->ry:D

    .line 181
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->rz:D

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->rz:D

    .line 182
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    invoke-static {v2, v3}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->scaleStoredToK(D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;->scale:D

    .line 183
    invoke-virtual {p1, v1}, Lcom/qh/yctdevice/GnssParamTransform;->setSevenParameter(Lcom/qh/yctdevice/GnssParamTransform$SevenParameter;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public buildControlPointsJsonArray()Lorg/json/JSONArray;
    .locals 8

    .line 277
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 278
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v1

    .line 280
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    .line 281
    iget v3, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-virtual {v2, v3}, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->applyParamType(I)V

    .line 282
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 283
    const-string/jumbo v4, "src_x"

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcX:D

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 284
    const-string/jumbo v4, "src_y"

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcY:D

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 285
    const-string v4, "dst_x"

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstX:D

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 286
    const-string v4, "dst_y"

    iget-wide v5, v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstY:D

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 287
    iget v4, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const-string v6, "dst_z"

    const-string/jumbo v7, "src_z"

    if-ne v4, v5, :cond_0

    const/4 v2, 0x0

    .line 288
    :try_start_1
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 291
    :cond_0
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->srcZ:D

    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 292
    iget-wide v4, v2, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->dstZ:D

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 294
    :goto_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public buildParamsDetailJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    .line 314
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    iget v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    iget v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    .line 317
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    .line 318
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getControlPointList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    sget-object v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->CONTROL_POINT_LIST_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    goto :goto_0

    .line 197
    :cond_2
    invoke-static {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->parseControlPointsCsv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    .line 201
    iget v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-virtual {v1, v2}, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->applyParamType(I)V

    goto :goto_1

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    return-object v0

    .line 190
    :cond_5
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;
    .locals 3

    .line 75
    iget v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;
    .locals 3

    .line 80
    iget v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasParamsDetail()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 14

    .line 323
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    iget v9, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    iget-object v11, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    invoke-static {v12}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public normalizeParamsDetailScaleToK()V
    .locals 6

    .line 141
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getFourParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    invoke-static {v1, v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToK(D)D

    move-result-wide v1

    .line 146
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_4

    .line 147
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;->scale:D

    .line 148
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getSevenParamsDetail()Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 153
    :cond_3
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    invoke-static {v1, v2}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeScaleToK(D)D

    move-result-wide v1

    .line 154
    iget-wide v3, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_4

    .line 155
    iput-wide v1, v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;->scale:D

    .line 156
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->setSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setControlPointList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;

    .line 209
    iget v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/bean/GnssTransParamControlPointEntity;->applyParamType(I)V

    goto :goto_1

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    invoke-static {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->formatControlPointsCsv(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    return-void
.end method

.method public setFourParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$FourParamsDetail;)V
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-eqz p1, :cond_0

    .line 86
    sget-object v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    return-void
.end method

.method public setSevenParamsDetail(Lcom/qianhe/baselib/bean/GnssTransParamEntity$SevenParamsDetail;)V
    .locals 1

    const/4 v0, 0x2

    .line 90
    iput v0, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    if-eqz p1, :cond_0

    .line 91
    sget-object v0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssTransParamEntity{localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transParamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transParamUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", belongUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->belongUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", paramType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", paramsDetail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", controlPointsJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", controlPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, p0, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
