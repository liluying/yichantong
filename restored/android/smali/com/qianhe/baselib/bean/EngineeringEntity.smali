.class public Lcom/qianhe/baselib/bean/EngineeringEntity;
.super Ljava/lang/Object;
.source "EngineeringEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;,
        Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;,
        Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;,
        Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;
    }
.end annotation


# instance fields
.field public transient belongUid:J

.field public conversionParamsType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversionParams_type"
    .end annotation
.end field

.field public transient createTime:J

.field public currentUsage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_current"
    .end annotation
.end field

.field public customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_ellipsoid_params"
    .end annotation
.end field

.field public editState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "edit_state"
    .end annotation
.end field

.field public ellipsoidType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ellipsoid_type"
    .end annotation
.end field

.field public engineeringId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "engineering_id"
    .end annotation
.end field

.field public engineeringUuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "engineering_uuid"
    .end annotation
.end field

.field public gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gaussKruger_params"
    .end annotation
.end field

.field public id:J

.field public name:Ljava/lang/String;

.field public projectionType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "projection_type"
    .end annotation
.end field

.field public transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trans_param"
    .end annotation
.end field

.field public transParamId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trans_param_id"
    .end annotation
.end field

.field public transParamLocalId:J

.field public transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transverseMercator_params"
    .end annotation
.end field

.field public transient updateTime:J

.field public utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "utm_params"
    .end annotation
.end field

.field public transient version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 121
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 122
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    iget v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public hasConversionParams()Z
    .locals 5

    .line 115
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->hasParamsDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 22

    move-object/from16 v0, p0

    .line 127
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    iget v7, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    iget v9, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    iget-object v11, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    iget-object v12, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    iget v13, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    move-object/from16 v17, v1

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v18, v1

    iget v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    iget-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x13

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v15, v2, v21

    const/4 v15, 0x1

    aput-object v16, v2, v15

    const/4 v15, 0x2

    aput-object v3, v2, v15

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v6, v2, v3

    const/4 v3, 0x6

    aput-object v7, v2, v3

    const/4 v3, 0x7

    aput-object v8, v2, v3

    const/16 v3, 0x8

    aput-object v9, v2, v3

    const/16 v3, 0x9

    aput-object v10, v2, v3

    const/16 v3, 0xa

    aput-object v11, v2, v3

    const/16 v3, 0xb

    aput-object v12, v2, v3

    const/16 v3, 0xc

    aput-object v13, v2, v3

    const/16 v3, 0xd

    aput-object v14, v2, v3

    const/16 v3, 0xe

    aput-object v17, v2, v3

    const/16 v3, 0xf

    aput-object v19, v2, v3

    const/16 v3, 0x10

    aput-object v18, v2, v3

    const/16 v3, 0x11

    aput-object v20, v2, v3

    const/16 v3, 0x12

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineeringEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", engineeringId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", engineeringUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ellipsoidType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customEllipsoidParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", projectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gaussKrugerParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", utmParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transverseMercatorParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conversionParamsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transParamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transParamLocalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", editState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
