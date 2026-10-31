.class public abstract Lcom/qianhe/yct/utils/EngineeringProjectionParser;
.super Ljava/lang/Object;
.source "EngineeringProjectionParser.java"


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method private static applyCustomEllipsoidParams(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V
    .locals 7

    .line 51
    const-string v0, "a"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string p1, "ellipsoid"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "f"

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;-><init>()V

    const-wide/16 v3, 0x0

    .line 57
    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->a:D

    .line 58
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->f:D

    .line 59
    iput-object v1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static applyParamsDetail(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_4

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->applyCustomEllipsoidParams(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->unwrapProjectionParamsDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    :try_start_0
    iget v0, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    iput-object p1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    return-void

    .line 36
    :cond_2
    sget-object v0, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    iput-object p1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    return-void

    .line 33
    :cond_3
    sget-object v0, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    iput-object p1, p0, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u89e3\u6790\u6295\u5f71\u53c2\u6570\u5931\u8d25: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static unwrapProjectionParamsDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v1, "projection"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method
