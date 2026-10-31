.class public Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;
.super Ljava/lang/Object;
.source "ApkListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/ApkListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkInfo"
.end annotation


# instance fields
.field public abis:Ljava/lang/String;

.field public diff_apk_id:I

.field public diff_file_md5:Ljava/lang/String;

.field public diff_file_size:J

.field public forced:Z

.field public full_apk_id:I

.field public full_file_md5:Ljava/lang/String;

.field public full_file_size:J

.field public pkg_name:Ljava/lang/String;

.field public update_log:Ljava/lang/String;

.field public update_log_ex:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalizedUpdateLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 46
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getCurrentLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 47
    const-string/jumbo v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 48
    iget-object p1, p0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->update_log:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->update_log_ex:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object p1, p0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->update_log:Ljava/lang/String;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v1

    .line 54
    :cond_3
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->update_log_ex:Ljava/lang/String;

    new-instance v3, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo$1;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo$1;-><init>(Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;)V

    .line 56
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 54
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;

    .line 59
    iget-object v4, v3, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;->lan:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 60
    iget-object p1, v3, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;->content:Ljava/lang/String;

    return-object p1

    :catch_0
    nop

    goto :goto_0

    .line 63
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;

    .line 64
    const-string v2, "en"

    iget-object v3, v0, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;->lan:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 65
    iget-object p1, v0, Lcom/qianhe/yct/event/ApkListResponse$UpdateLogExItem;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 71
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/event/ApkListResponse$ApkInfo;->update_log:Ljava/lang/String;

    if-eqz p1, :cond_8

    move-object v1, p1

    :cond_8
    return-object v1
.end method
