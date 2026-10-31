.class public abstract Lcom/qianhe/yct/utils/BucketSwitchHelper;
.super Ljava/lang/Object;
.source "BucketSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;
    }
.end annotation


# direct methods
.method public static buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mergeBucketForSync(Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 5

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 280
    :cond_3
    iget v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-nez v0, :cond_4

    iget v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    if-lez v0, :cond_4

    .line 281
    iput v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 283
    :cond_4
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 284
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 286
    :cond_5
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    .line 287
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 290
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_uuid:Ljava/lang/String;

    :cond_7
    :goto_0
    return-object p0
.end method

.method private static parseParamsType(Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)I
    .locals 2

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 252
    iget-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 253
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    return v0

    .line 257
    :cond_2
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 258
    array-length p1, p0

    if-lez p1, :cond_3

    .line 259
    aget-byte p0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    return p0

    :catch_0
    move-exception p0

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u89e3\u6790\u6821\u51c6\u53c2\u6570\u7c7b\u578b\u5931\u8d25\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public static refreshCalibParamsIdAfterBucketRenamed(Landroid/content/Context;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 12

    if-eqz p0, :cond_9

    if-eqz p2, :cond_9

    .line 71
    iget-object v0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 75
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 78
    :cond_2
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 80
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 83
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 84
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v5, :cond_4

    .line 85
    invoke-static {v5}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->isMode1Excavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 86
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 89
    :cond_5
    iget-object v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketNameFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 94
    :cond_6
    invoke-static {v5, p2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;

    move-result-object v6

    .line 95
    iput-object v6, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 96
    iput-wide v3, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 97
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 98
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v9, v7, v0

    if-lez v9, :cond_7

    .line 99
    invoke-virtual {p0, v5}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    .line 100
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 102
    iget-wide v7, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v9, v7, v0

    if-lez v9, :cond_8

    iget-wide v9, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_8

    .line 104
    iput-object v6, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 105
    iput-wide v3, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 106
    iget-wide v7, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    iput-wide v7, p3, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 108
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u94f2\u6597\u6539\u540d\u540e\u66f4\u65b0 calibParamsId\uff1aexcavator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cbucket="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff0cid="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method public static refreshCalibParamsIdAfterExcavatorRenamed(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    if-eqz v0, :cond_1

    .line 56
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->resolveBucketFromCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    .line 59
    :cond_2
    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;

    move-result-object p0

    .line 60
    iput-object p0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6316\u673a\u6539\u540d\u540e\u66f4\u65b0 calibParamsId\uff1aname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0cid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static refreshExcavatorCalibParamsIdAfterBucketApplied(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;
    .locals 8

    .line 145
    new-instance v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;-><init>()V

    .line 146
    iput-object p1, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 147
    iput-object p2, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 148
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->resolveLocalExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 154
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    .line 156
    invoke-static {p1, p3}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->parseParamsType(Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 158
    iput v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 160
    :cond_1
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseExcavatorNameFromCalibParamsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 164
    :cond_2
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->resolveLocalExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    .line 165
    const-string/jumbo v2, "\uff0cname="

    if-eqz v1, :cond_3

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5207\u6362\u94f2\u6597\u5173\u8054\u5230\u5df2\u6709\u6316\u673a localId="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    .line 170
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6316\u673a\u672a\u5173\u8054\u672c\u5730\u8bb0\u5f55\uff0c\u89e3\u6790 paramsType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0c\u7ee7\u7eed\u540c\u6b65"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 174
    :cond_4
    :goto_0
    iget-object v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    const-string/jumbo p0, "\u5207\u6362\u94f2\u6597\u540c\u6b65\u5931\u8d25\uff1a\u94f2\u6597\u4fe1\u606f\u4e0d\u5b8c\u6574"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 176
    iput-object p1, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0

    .line 179
    :cond_5
    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->isMode1Excavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 180
    const-string/jumbo p0, "\u6a21\u5f0f1\u6316\u673a\u4e0d\u652f\u6301\u5207\u6362\u94f2\u6597\u540c\u6b65 calibParamsId"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 181
    iput-object p1, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0

    .line 184
    :cond_6
    invoke-static {p0, p2}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->reloadBucketFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->mergeBucketForSync(Lcom/qianhe/baselib/bean/ShovelEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p2

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    .line 186
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 187
    iput-object p3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 189
    :cond_7
    iput-wide v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    .line 190
    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 191
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long p3, v1, v3

    if-gtz p3, :cond_8

    .line 192
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->resolveUniqueNameBeforeInsert(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 194
    :cond_8
    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->buildCalibParamsId(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)Ljava/lang/String;

    move-result-object p3

    .line 195
    iput-object p3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 196
    iget v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    iput v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 197
    invoke-virtual {p1, p2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncBucketParamsFrom(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 198
    invoke-virtual {p2}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5207\u6362\u667a\u80fd\u6821\u51c6\u94f2\u6597\uff0c\u540c\u6b65 autoGenerateParams \u5230\u6316\u673a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 201
    :cond_9
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 202
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v7, v1, v3

    if-gtz v7, :cond_a

    .line 203
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    .line 204
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    goto :goto_1

    .line 206
    :cond_a
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    .line 207
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    :goto_1
    if-eqz p4, :cond_b

    .line 209
    iget-wide v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    cmp-long p4, v1, v3

    if-lez p4, :cond_b

    .line 210
    iget-wide v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    add-long/2addr v1, v5

    iput-wide v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    .line 211
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/db/DatabaseManager;->updateShovelById(Lcom/qianhe/baselib/bean/ShovelEntity;)I

    .line 212
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    .line 214
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "\u5207\u6362\u94f2\u6597\u540e\u66f4\u65b0 calibParamsId\uff1a"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 215
    iput-object p3, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->calibParamsId:Ljava/lang/String;

    .line 216
    iput-object p2, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 217
    iput-object p1, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0

    .line 150
    :cond_c
    :goto_2
    const-string/jumbo p0, "\u5207\u6362\u94f2\u6597\u540c\u6b65\u5931\u8d25\uff1a\u6316\u673a\u6216\u94f2\u6597\u4e3a\u7a7a"

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    .line 151
    iput-object p1, v0, Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;->excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object v0
.end method

.method public static reloadBucketFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ShovelEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 5

    if-eqz p1, :cond_1

    .line 29
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByLocalId(J)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static resolveBucketFromCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 3

    const/4 v0, 0x0

    .line 114
    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketNameFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 118
    :cond_0
    new-instance v2, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {v2}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 119
    iput-object v1, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 120
    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketParamFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 122
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 123
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 125
    iget-object p1, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    iput-object p1, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 128
    :cond_1
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    iput-wide v0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    .line 129
    iget p0, p0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    iput p0, v2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    :cond_2
    return-object v2
.end method

.method private static resolveUniqueNameBeforeInsert(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 232
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    .line 236
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 239
    iget-object p0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 240
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6316\u673a\u540d\u79f0\u5df2\u5b58\u5728\uff0c\u91cd\u547d\u540d\u4e3a\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    .line 242
    iput-object p0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public static syncExcavatorWithSwitchedBucket(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;
    .locals 0

    .line 224
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/utils/BucketSwitchHelper;->refreshExcavatorCalibParamsIdAfterBucketApplied(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/ShovelEntity;Ljava/lang/String;Z)Lcom/qianhe/yct/utils/BucketSwitchHelper$SyncResult;

    move-result-object p0

    return-object p0
.end method
