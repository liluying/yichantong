.class public abstract Lcom/qianhe/yct/utils/PointLibSyncHelper;
.super Ljava/lang/Object;
.source "PointLibSyncHelper.java"


# direct methods
.method private static applyPlatformEngineeringBinding(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 4

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 344
    invoke-static {p1, p3}, Lcom/qianhe/yct/db/DatabaseManager;->applyEngineeringBinding(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    return-void

    .line 347
    :cond_1
    iget-wide v0, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->belongEngineeringId:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    .line 348
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    .line 350
    :cond_2
    iget-object p3, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->engineeringUuid:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 351
    iget-object p2, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->engineeringUuid:Ljava/lang/String;

    iput-object p2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    :cond_3
    if-eqz p0, :cond_4

    .line 354
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->applyPlatformEngineeringLocalId(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void

    .line 356
    :cond_4
    iput-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    :cond_5
    :goto_0
    return-void
.end method

.method private static applyServerGroupToLocal(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 10

    .line 290
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    .line 291
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    .line 292
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 293
    :goto_1
    iget-wide v6, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->id:J

    iput-wide v6, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    .line 294
    iget-object v0, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->uuid:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    .line 295
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    iget-object v6, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->name:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    .line 296
    iget-object v0, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->remark:Ljava/lang/String;

    iput-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    .line 297
    iget-wide v6, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->version:J

    long-to-int v0, v6

    iput v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->version:I

    .line 298
    iget-wide v6, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->createEpoch:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    iput-wide v6, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    .line 299
    :cond_1
    iget-wide v6, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->updateEpoch:J

    iput-wide v6, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->updateTime:J

    .line 300
    invoke-static {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->applyPlatformEngineeringBinding(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)I

    move-object v0, p1

    .line 302
    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->logPointGroupBindingCorrection(Lcom/qianhe/baselib/bean/PointGroupEntity;JLjava/lang/String;J)V

    return-void
.end method

.method private static applyServerPointToLocal(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)V
    .locals 6

    .line 371
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 372
    iget-wide v1, p3, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->id:J

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    .line 373
    iget-wide v1, p3, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    :goto_0
    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupId:J

    .line 374
    iget-wide v1, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    .line 375
    invoke-static {p1, p3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->fillPointFromServerItem(Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)V

    .line 376
    iget-object p2, p3, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/qianhe/yct/utils/SyncNameHelper;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 377
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updatePoint(Lcom/qianhe/baselib/bean/PointlibEntity;)I

    return-void
.end method

.method private static buildPointFromServer(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 3

    .line 361
    new-instance v0, Lcom/qianhe/baselib/bean/PointlibEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/PointlibEntity;-><init>()V

    .line 362
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->id:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    .line 363
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->groupId:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->groupId:J

    .line 364
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->groupLocalId:J

    .line 365
    invoke-static {v0, p1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->fillPointFromServerItem(Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)V

    return-object v0
.end method

.method private static fillPointFromServerItem(Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)V
    .locals 6

    .line 389
    iget-object v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 390
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->collectedAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    :goto_0
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    .line 392
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->longitude:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    .line 393
    iget-wide v2, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->latitude:D

    iput-wide v2, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    .line 394
    iget-wide v4, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->altitude:D

    iput-wide v4, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    .line 395
    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    .line 396
    iput-wide v2, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    .line 397
    iput-wide v4, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->alt:D

    .line 399
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->x:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    .line 400
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->y:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    .line 401
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->z:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    .line 402
    iget v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->solution:I

    iput v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    .line 403
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->hdop:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    .line 404
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->vdop:D

    iput-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    .line 405
    invoke-static {p0}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->normalizeGeodetic(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void
.end method

.method private static findGlobalMatches(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/db/DatabaseManager;",
            "Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 191
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 192
    iget-wide v2, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    const/4 v6, 0x0

    .line 193
    invoke-virtual {p0, v2, v3, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsByServerId(JLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz v3, :cond_1

    .line 194
    iget-wide v6, v3, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_2
    iget-object v2, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->uuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 198
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsByServerId(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz p1, :cond_3

    .line 199
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static findLocalPoint(Ljava/util/List;JLjava/util/Set;)Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/qianhe/baselib/bean/PointlibEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 242
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 243
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    invoke-static {v1, p3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->isClaimed(Lcom/qianhe/baselib/bean/PointlibEntity;Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static findLocalPointByName(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/qianhe/baselib/bean/PointlibEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 258
    invoke-static {v1, p2}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->isClaimed(Lcom/qianhe/baselib/bean/PointlibEntity;Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 259
    :cond_2
    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    return-object v1

    :cond_3
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static findUnsyncedLocalGroupByName(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Lcom/qianhe/baselib/bean/PointGroupEntity;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 231
    iget-object v1, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupsForEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz p1, :cond_1

    .line 233
    iget v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->editState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    iget-object v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 235
    :cond_3
    iget-object v1, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static insertGroupFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 3

    .line 275
    new-instance v0, Lcom/qianhe/baselib/bean/PointGroupEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/PointGroupEntity;-><init>()V

    .line 276
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    .line 277
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    .line 278
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->id:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    .line 279
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    .line 280
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->version:J

    long-to-int v2, v1

    iput v2, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->version:I

    .line 281
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->createEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    .line 282
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->updateEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->updateTime:J

    .line 283
    invoke-static {p0, v0, p1, p2}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->applyPlatformEngineeringBinding(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->insertPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J

    return-void
.end method

.method private static isClaimed(Lcom/qianhe/baselib/bean/PointlibEntity;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 270
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSamePointName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static logPointGroupBindingCorrection(Lcom/qianhe/baselib/bean/PointGroupEntity;JLjava/lang/String;J)V
    .locals 4

    if-nez p0, :cond_0

    goto :goto_2

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, v1

    .line 327
    :goto_1
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    cmp-long v3, p4, v1

    if-nez v3, :cond_3

    .line 329
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    return-void

    .line 332
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u540c\u6b65\u7ea0\u6b63\u70b9\u5e93\u7ec4\u5de5\u7a0b\u5f52\u5c5e\u2014\u2014>name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cuuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cbelong:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff0cengUuid:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff0clocalId:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static mergePointGroupsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/db/DatabaseManager;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->mergePointGroupsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static mergePointGroupsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/db/DatabaseManager;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->applyLatestCurrentEngineeringParams()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;

    if-nez v1, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    iget-object v3, v1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->uuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->uuid:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_3
    invoke-static {p0, v1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->resolveOwnerEngineering(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 48
    iget v4, v3, Lcom/qianhe/baselib/bean/EngineeringEntity;->editState:I

    if-ne v4, v2, :cond_4

    goto :goto_0

    .line 50
    :cond_4
    invoke-static {p0, v3, v1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->resolveLocalGroupForSync(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v2

    if-nez v2, :cond_6

    .line 52
    invoke-static {v1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->shouldInsertGroupFromServer(Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 53
    :cond_5
    invoke-static {p0, v1, v3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->insertGroupFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_0

    .line 54
    :cond_6
    invoke-static {v2, v1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->shouldApplyServerGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 55
    invoke-static {p0, v2, v1, v3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->applyServerGroupToLocal(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    goto :goto_0

    .line 57
    :cond_7
    invoke-static {p0, v2, v1, v3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->reconcilePointGroupBindingFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 58
    invoke-static {v2}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->uploadLocalGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    goto :goto_0

    .line 63
    :cond_8
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 64
    iget v3, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->editState:I

    if-ne v3, v2, :cond_a

    goto :goto_1

    .line 65
    :cond_a
    iget-object v3, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_1

    .line 66
    :cond_b
    iget-object v3, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 67
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->deletePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J

    goto :goto_1

    .line 71
    :cond_c
    invoke-static {p0, p2}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->uploadPendingGroups(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->bindOrphanDataToDefaultEngineering()V

    return-void
.end method

.method public static mergePointsFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/db/DatabaseManager;",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/QueryPointResponse$PointItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p2, :cond_1

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :cond_1
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 81
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 83
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;

    if-eqz v4, :cond_2

    .line 84
    iget-wide v7, v4, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->id:J

    cmp-long v9, v7, v5

    if-gtz v9, :cond_3

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-wide v7, v4, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->id:J

    invoke-static {v0, v7, v8, v3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->findLocalPoint(Ljava/util/List;JLjava/util/Set;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v7

    if-nez v7, :cond_5

    .line 91
    iget-object v7, v4, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->name:Ljava/lang/String;

    invoke-static {v0, v7, v3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->findLocalPointByName(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 94
    :cond_5
    iget-object v8, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    iget-object v9, v4, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->isSamePointName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    :goto_1
    if-eqz v7, :cond_6

    .line 96
    iget-wide v9, v7, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    cmp-long v11, v9, v5

    if-lez v11, :cond_6

    .line 97
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v7, :cond_7

    .line 101
    invoke-static {p1, v4}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->buildPointFromServer(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v4

    .line 102
    invoke-virtual {p0, v4}, Lcom/qianhe/yct/db/DatabaseManager;->insertPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_2

    .line 104
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    if-nez v8, :cond_9

    .line 106
    invoke-static {v7, v4}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->shouldApplyServerPoint(Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    .line 110
    :cond_8
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V

    goto :goto_0

    .line 108
    :cond_9
    :goto_2
    invoke-static {p0, v7, p1, v4}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->applyServerPointToLocal(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)V

    goto :goto_0

    .line 114
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 115
    iget-wide v2, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long v4, v2, v5

    if-lez v4, :cond_b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 116
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deletePoint(Lcom/qianhe/baselib/bean/PointlibEntity;)J

    goto :goto_3

    .line 120
    :cond_c
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->uploadPendingPoints(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    :cond_d
    :goto_4
    return-void
.end method

.method static needsPointGroupBindingReconcile(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/lang/String;JJ)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    .line 154
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_2

    .line 156
    :cond_3
    iget-wide v1, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    cmp-long p1, v1, p2

    if-eqz p1, :cond_5

    return v3

    .line 155
    :cond_4
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    .line 159
    :cond_5
    iget-wide p0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    cmp-long p2, p0, p4

    if-eqz p2, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method private static pickCanonicalGroup(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/PointGroupEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/db/DatabaseManager;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ")",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 207
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-nez v2, :cond_2

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0, p2, v2}, Lcom/qianhe/yct/db/DatabaseManager;->belongsToEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/baselib/bean/PointGroupEntity;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 213
    iget-wide v3, v2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    return-object v0

    .line 220
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 222
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iget-wide v3, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    cmp-long p2, v1, v3

    if-gez p2, :cond_6

    :cond_8
    move-object v0, p1

    goto :goto_1

    :cond_9
    :goto_2
    return-object v0
.end method

.method private static reconcilePointGroupBindingFromServer(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 11

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 309
    :cond_0
    iget-wide v0, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->belongEngineeringId:J

    iget-object v2, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->engineeringUuid:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->isEngineeringBound(JJLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    .line 310
    iget-wide v3, p3, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    :cond_2
    move-wide v9, v3

    .line 311
    iget-object v6, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->engineeringUuid:Ljava/lang/String;

    iget-wide v7, p2, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->belongEngineeringId:J

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->needsPointGroupBindingReconcile(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/lang/String;JJ)Z

    move-result p1

    move-object v0, v5

    if-nez p1, :cond_3

    goto :goto_2

    .line 314
    :cond_3
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    .line 315
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringLocalId:J

    .line 316
    iget-object p1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz p1, :cond_4

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_4
    const-string p1, ""

    goto :goto_0

    .line 317
    :goto_1
    invoke-static {p0, v0, p2, p3}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->applyPlatformEngineeringBinding(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 318
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)I

    .line 319
    invoke-static/range {v0 .. v5}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->logPointGroupBindingCorrection(Lcom/qianhe/baselib/bean/PointGroupEntity;JLjava/lang/String;J)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static resolveLocalGroupForSync(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Lcom/qianhe/baselib/bean/PointGroupEntity;
    .locals 6

    .line 174
    invoke-static {p0, p2}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->findGlobalMatches(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    invoke-static {p0, v0, p1}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->pickCanonicalGroup(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;Lcom/qianhe/baselib/bean/EngineeringEntity;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object p1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 178
    iget-wide v1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iget-wide v3, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 179
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/db/DatabaseManager;->deletePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)J

    goto :goto_0

    :cond_1
    return-object p1

    .line 184
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/utils/PointLibSyncHelper;->findUnsyncedLocalGroupByName(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object p0

    return-object p0
.end method

.method private static resolveOwnerEngineering(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-wide v3, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->belongEngineeringId:J

    iget-object v5, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->engineeringUuid:Ljava/lang/String;

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/db/DatabaseManager;->resolveEngineeringByBinding(JJLjava/lang/String;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static shouldApplyServerGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Z
    .locals 7

    .line 124
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    return v4

    .line 125
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->version:J

    iget v2, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->version:I

    int-to-long v5, v2

    cmp-long v3, v0, v5

    if-lez v3, :cond_1

    return v4

    :cond_1
    int-to-long v2, v2

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    return v5

    .line 127
    :cond_2
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->updateTime:J

    iget-wide v2, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveTime(JJ)J

    move-result-wide v0

    .line 128
    iget-wide v2, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->updateEpoch:J

    iget-wide p0, p1, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->createEpoch:J

    invoke-static {v2, v3, p0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->effectiveTime(JJ)J

    move-result-wide p0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_3

    return v4

    :cond_3
    return v5
.end method

.method private static shouldApplyServerPoint(Lcom/qianhe/baselib/bean/PointlibEntity;Lcom/qianhe/yct/event/QueryPointResponse$PointItem;)Z
    .locals 6

    .line 133
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return v2

    .line 134
    :cond_0
    iget-wide v0, p1, Lcom/qianhe/yct/event/QueryPointResponse$PointItem;->collectedAt:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    move-wide v3, v0

    .line 135
    :cond_1
    iget-wide p0, p0, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    cmp-long v0, v3, p0

    if-ltz v0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static shouldInsertGroupFromServer(Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 145
    :cond_0
    iget-wide v1, p0, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->belongEngineeringId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    iget-object p0, p0, Lcom/qianhe/yct/event/QueryPointGroupResponse$PointGroupItem;->engineeringUuid:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static uploadLocalGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-wide v0, p0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 411
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void

    .line 413
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void
.end method

.method private static uploadPendingGroups(Lcom/qianhe/yct/db/DatabaseManager;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/yct/db/DatabaseManager;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/qianhe/yct/db/DatabaseManager;->queryAllPointGroups()Ljava/util/List;

    move-result-object v0

    .line 420
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz v1, :cond_1

    .line 421
    iget-object v2, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    iget-wide v2, v1, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongUid:J

    .line 422
    invoke-virtual {p0, v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->isLoginSyncBelongUid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static uploadPendingPoints(Lcom/qianhe/yct/db/DatabaseManager;Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 429
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryPoint(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 432
    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v4

    iget-wide v5, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-virtual {v4, v5, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isPointUploading(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 437
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->addPoints(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method
