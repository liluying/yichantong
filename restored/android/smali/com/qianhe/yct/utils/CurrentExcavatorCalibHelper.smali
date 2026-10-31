.class public abstract Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;
.super Ljava/lang/Object;
.source "CurrentExcavatorCalibHelper.java"


# direct methods
.method public static applyGetCalibrateParam(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 140
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    .line 144
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {v0, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v1

    .line 147
    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchExcavatorFromList(Ljava/lang/String;Ljava/util/List;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 150
    iget-object p0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    return-object p0

    .line 152
    :cond_2
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p0

    .line 153
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->preferCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v1

    .line 154
    iput-object v1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 155
    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 156
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    iput-object p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 158
    :cond_3
    iget-wide v4, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_4

    .line 159
    invoke-virtual {v0, p0}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    :cond_4
    return-object v1

    .line 141
    :cond_5
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static buildBucketFromDeviceParam(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 269
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketNameFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketParamFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isShovelNameExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromParam(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    if-nez p0, :cond_2

    .line 279
    iget-object p0, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromCalibParams(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object p0

    .line 281
    :cond_2
    invoke-static {p0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->knownBucketParams(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p0

    .line 282
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseParamsType(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_3

    if-eqz p2, :cond_3

    .line 283
    iget p2, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez p2, :cond_3

    move p1, p2

    .line 286
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 287
    new-instance p2, Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p2}, Lcom/qianhe/baselib/bean/ShovelEntity;-><init>()V

    .line 288
    iput-object v1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 289
    iput-object v2, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 290
    iput-wide v3, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->createTime:J

    .line 291
    iput-wide v3, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->updateTime:J

    const-wide/16 v0, 0x1

    .line 292
    iput-wide v0, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->version:J

    if-lez p1, :cond_4

    .line 294
    iput p1, p2, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    :cond_4
    if-eqz p0, :cond_5

    .line 296
    invoke-virtual {p0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 297
    invoke-virtual {p2, p0}, Lcom/qianhe/baselib/bean/ShovelEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V

    :cond_5
    return-object p2

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static createLocalBucketIfMissing(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Lcom/qianhe/baselib/bean/ShovelEntity;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createLocalFromDeviceParam(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 194
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 197
    :cond_0
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseExcavatorNameFromCalibParamsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 201
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    .line 202
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    :goto_0
    return-object v0

    .line 210
    :cond_3
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    .line 211
    invoke-static {v2, v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseBucketParamFromCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromParam(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object v2

    if-nez v2, :cond_4

    .line 213
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseToolFromCalibParams(Ljava/lang/String;)Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    move-result-object v2

    .line 215
    :cond_4
    invoke-static {v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->knownBucketParams(Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 216
    invoke-virtual {v2}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v3, 0x1

    .line 217
    :cond_5
    iget-object v4, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    invoke-static {v4}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->parseParamsType(Ljava/lang/String;)I

    move-result v4

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 220
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->buildBucketFromDeviceParam(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v7

    .line 221
    new-instance v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v8}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    .line 222
    iput-object v1, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 223
    iget-object v9, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    iput-object v9, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    .line 224
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParams:Ljava/lang/String;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, ""

    :goto_1
    iput-object p1, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 225
    iput-wide v5, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->createTime:J

    .line 226
    iput-wide v5, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    const-wide/16 v5, 0x1

    .line 227
    iput-wide v5, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    if-lez v4, :cond_7

    .line 229
    iput v4, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    :cond_7
    if-eqz v7, :cond_8

    .line 232
    invoke-virtual {v8, v7}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncBucketParamsFrom(Lcom/qianhe/baselib/bean/ShovelEntity;)V

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 234
    invoke-virtual {v8, v2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V

    .line 236
    :cond_9
    :goto_2
    invoke-virtual {p0, v8}, Lcom/qianhe/yct/db/DatabaseManager;->insertExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)J

    move-result-wide p0

    iput-wide p0, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gtz v4, :cond_a

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "\u4e3b\u673a\u6821\u51c6\u53c2\u6570\u65e0\u5339\u914d\u6316\u673a\uff0c\u65b0\u5efa\u6316\u673a\u5931\u8d25 name="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->e(Ljava/lang/String;)V

    return-object v0

    .line 242
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "\u4e3b\u673a\u6821\u51c6\u53c2\u6570\u65e0\u5339\u914d\u6316\u673a\uff0c\u5df2\u65b0\u5efa name="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0clocalId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0cmode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v8, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->i(Ljava/lang/String;)V

    return-object v8

    :cond_b
    :goto_3
    return-object v0
.end method

.method public static findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    .line 40
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByCalibParamsId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 42
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0

    :cond_1
    const-wide/16 v1, 0x0

    .line 44
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchExcavatorFromList(Ljava/lang/String;Ljava/util/List;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 49
    :cond_2
    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseExcavatorNameFromCalibParamsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static preferCalibParamsId(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    .line 110
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object p0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    return-object p0

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    .line 120
    invoke-static {p0}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseTimestamp(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 122
    iget-object p0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    return-object p0

    .line 124
    :cond_3
    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->isMode1Excavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->supportsBucketCurrentUsage(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v0

    .line 126
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->supportsBucketCurrentUsage(Ljava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 128
    iget-object p0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    :cond_4
    :goto_0
    return-object p0

    .line 111
    :cond_5
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    return-object p0

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method public static reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 99
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByLocalId(J)Ljava/util/List;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static resolveLocalExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 5

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 66
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p0

    return-object p0

    .line 68
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    .line 70
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 74
    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 76
    iget-object v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseExcavatorNameFromCalibParamsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 79
    invoke-virtual {v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    :cond_4
    if-nez v1, :cond_5

    return-object p1

    .line 88
    :cond_5
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->reloadExcavatorFromDb(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p0

    .line 89
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 90
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    .line 92
    :cond_6
    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-lez p1, :cond_7

    .line 93
    iput p1, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    :cond_7
    return-object p0

    :cond_8
    :goto_1
    return-object p1
.end method

.method public static shouldPromptAddFromDeviceParam(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 166
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->findExcavatorByDeviceCalibParamsId(Landroid/content/Context;Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    return v0

    .line 172
    :cond_1
    invoke-static {p0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 173
    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v1

    .line 174
    iget-object v2, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->matchExcavatorFromList(Ljava/lang/String;Ljava/util/List;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    return v0

    .line 177
    :cond_2
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {p1}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->parseExcavatorNameFromCalibParamsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isExcavatorNameExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method
