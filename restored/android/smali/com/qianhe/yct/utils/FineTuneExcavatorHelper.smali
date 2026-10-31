.class public abstract Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;
.super Ljava/lang/Object;
.source "FineTuneExcavatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;,
        Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$AzVkpKBoQECZznlTcwq1BtpC83o(Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 216
    invoke-interface {p0, p1}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;->onSaved(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$HTnhJRAyZyTq2IPgroDZKeAevGQ(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V
    .locals 5

    .line 207
    :try_start_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 209
    invoke-static {p0, p2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->postFailure(Landroid/content/Context;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 212
    :cond_0
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 213
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 214
    new-instance v0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->runOnMain(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 220
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u667a\u80fd\u6821\u51c6\u65b0\u5efa\u6316\u673a\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 221
    invoke-static {p0, p2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->postFailure(Landroid/content/Context;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYQmSyXYhpulVF6dkEnwsKCw6YM(Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 229
    invoke-interface {p0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;->onFailed()V

    :cond_0
    return-void
.end method

.method public static alreadyHasFineTuneMark(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "-?\\d+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public static buildFineTuneExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 3

    .line 180
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    .line 181
    const-string v1, ""

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {p0, v2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->generateFineTuneExcavatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    .line 182
    :goto_1
    iput-object p3, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 183
    iget p0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    iget p0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    iput p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-eqz p1, :cond_4

    .line 184
    iget-wide p0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    goto :goto_3

    :cond_4
    const-wide/16 p0, 0x0

    :goto_3
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->userId:J

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    .line 186
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    .line 187
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    const-wide/16 p0, 0x1

    .line 188
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    const-wide/16 p0, 0x0

    .line 189
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 190
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 191
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    .line 192
    iput-wide p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    .line 193
    new-instance p0, Lcom/qianhe/baselib/bean/ExcavatorParams;

    invoke-direct {p0}, Lcom/qianhe/baselib/bean/ExcavatorParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setExcavatorParamsObj(Lcom/qianhe/baselib/bean/ExcavatorParams;)V

    .line 194
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearMeasureParams()V

    .line 195
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearAutoGenerateParams()V

    if-eqz p2, :cond_5

    .line 198
    invoke-virtual {v0, p2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncBucketParamsFrom(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 200
    :cond_5
    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    return-object v0
.end method

.method public static fineTuneNameMark(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qianhe/yct/R$string;->bucket_fine_tune:I

    invoke-static {p0, v1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFineTuneBucketName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 74
    invoke-static {p0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->fineTuneNameMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    sget v1, Lcom/qianhe/yct/R$string;->shovel:I

    invoke-static {p0, v1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v4, :cond_0

    .line 81
    iget-object v5, v4, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    iget-object v4, v4, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    new-instance v3, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/db/DatabaseManager;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->generateMarkedSerialName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFineTuneExcavatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 58
    invoke-static {p0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->fineTuneNameMark(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    sget v1, Lcom/qianhe/yct/R$string;->excavator:I

    invoke-static {p0, v1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    .line 62
    invoke-virtual {p0, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v4, :cond_0

    .line 65
    iget-object v5, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    iget-object v4, v4, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    new-instance v3, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/db/DatabaseManager;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->generateMarkedSerialName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateMarkedSerialName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 95
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p2

    .line 98
    :cond_1
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->stripFineTuneNameMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p0

    :goto_1
    if-nez p2, :cond_3

    .line 103
    const-string p2, ""

    .line 105
    :cond_3
    const-string p0, "_"

    const-string v0, "-"

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p3, :cond_6

    .line 109
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 110
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 113
    :cond_5
    invoke-static {p3, p0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->parseFineTuneSerial(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-lt p3, p1, :cond_4

    add-int/lit8 p3, p3, 0x1

    move p1, p3

    goto :goto_2

    .line 119
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    :goto_3
    if-eqz p4, :cond_7

    .line 121
    invoke-interface {p4, p2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x32

    if-ge p3, v1, :cond_7

    add-int/lit8 p1, p1, 0x1

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_7
    if-eqz p4, :cond_8

    .line 126
    invoke-interface {p4, p2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$NameExistsChecker;->exists(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 p3, 0x3e8

    div-long/2addr p0, p3

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object p2
.end method

.method private static parseFineTuneSerial(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_4
    :goto_1
    return v1
.end method

.method private static postFailure(Landroid/content/Context;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V
    .locals 1

    .line 227
    new-instance v0, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper;->runOnMain(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runOnMain(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .line 235
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 236
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 238
    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static saveFineTuneExcavatorAsync(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/yct/utils/FineTuneExcavatorHelper$SaveCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static stripFineTuneNameMark(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_3

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "-?\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 147
    :cond_3
    :goto_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    :goto_3
    return-object p0
.end method
