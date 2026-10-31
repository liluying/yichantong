.class public Lcom/qianhe/baselib/bean/ShovelEntity;
.super Ljava/lang/Object;
.source "ShovelEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field public autoGenerateParams:Ljava/lang/String;

.field private transient autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

.field public belong_uid:J

.field public bucket_id:J

.field public bucket_uuid:Ljava/lang/String;

.field public createTime:J

.field public localId:J

.field public measureParams:Ljava/lang/String;

.field private transient measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

.field public mode:I

.field public name:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public showUnit:I

.field public updateTime:J

.field public version:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    return-void
.end method

.method public static resolveSourceDistanceMeasure(Lcom/qianhe/baselib/bean/ShovelEntity;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p0

    iget-object p0, p0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    return v0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesDistanceMeasure()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearAutoGenerateParams()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    return-void
.end method

.method public clearMeasureParams()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    return-void
.end method

.method public ensureParamsSerialized()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    if-eqz v0, :cond_0

    .line 232
    sget-object v1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 236
    sget-object v1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    return-void

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    if-eqz v0, :cond_3

    .line 241
    sget-object v1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    :cond_4
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 245
    sget-object v1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 254
    :cond_0
    check-cast p1, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 255
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    iget v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    iget v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getAB()D
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    return-wide v0
.end method

.method public getAT()D
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    return-wide v0
.end method

.method public getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    return-object v0
.end method

.method public getG1()D
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    return-wide v0
.end method

.method public getG2()D
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    return-wide v0
.end method

.method public getG3()D
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    return-wide v0
.end method

.method public getLR()D
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->resolveLR()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLy()D
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    return-wide v0
.end method

.method public getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    return-object v0
.end method

.method public getNA()D
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    return-wide v0
.end method

.method public getNT()D
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    return-wide v0
.end method

.method public getRy()D
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 15

    .line 260
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iget-object v7, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    iget-object v8, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    iget v9, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iget v11, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-wide v12, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v13, 0xd

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v12, v13, v0

    invoke-static {v13}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public resolveDiagramDistanceMeasure()Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesDistanceMeasure()Z

    move-result v0

    return v0
.end method

.method public setAB(D)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    .line 134
    sget-object p1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object p2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearMeasureParams()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    .line 65
    sget-object v0, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    return-void
.end method

.method public setDistanceMeasureValues(DDDDDD)V
    .locals 1

    .line 150
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 151
    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    .line 152
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    .line 153
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    .line 154
    iput-wide p7, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 155
    iput-wide p9, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 156
    iput-wide p11, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    const-wide/16 p1, 0x0

    cmpl-double p3, p9, p1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p9, p7

    :goto_0
    add-double/2addr p7, p9

    .line 157
    iput-wide p7, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    .line 158
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 159
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method public setG1(D)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    .line 89
    sget-object p1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object p2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public setG2(D)V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    .line 98
    sget-object p1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object p2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public setG3(D)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    .line 107
    sget-object p1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object p2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public setLy(D)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 116
    sget-object p1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object p2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearAutoGenerateParams()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {p1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    .line 47
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 48
    sget-object p1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public setMeasureValues(DDDDDD)V
    .locals 1

    .line 138
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 139
    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    .line 140
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    .line 141
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    .line 142
    iput-wide p7, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 143
    iput-wide p9, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 144
    iput-wide p11, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    .line 145
    invoke-virtual {p0, v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method public setRy(D)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 125
    sget-object p1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object p2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void
.end method

.method public syncParamsToJson()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearMeasureParams()V

    .line 215
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParamsCache:Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    if-eqz v0, :cond_2

    .line 216
    sget-object v1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearAutoGenerateParams()V

    .line 220
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    if-eqz v0, :cond_1

    .line 221
    sget-object v1, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    sget-object v0, Lcom/qianhe/baselib/bean/ShovelEntity;->GSON:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    const-class v2, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParamsCache:Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShovelEntity{localId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", belong_uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->belong_uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", bucket_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", bucket_uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", measureParams=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", autoGenerateParams=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", param=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", showUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->showUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesAutoGenerateParams()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getAutoGenerateParamsObj()Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public usesDistanceMeasure()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->getMeasureParamsObj()Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->usesDistanceMeasure()Z

    move-result v0

    return v0
.end method
