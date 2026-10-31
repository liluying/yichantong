.class Lcom/qianhe/yct/utils/NetworkUserLoader$21;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"

# interfaces
.implements Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

.field final synthetic val$requestBelongId:J

.field final synthetic val$requestEngUuid:Ljava/lang/String;

.field final synthetic val$requestFilterByEng:Z

.field final synthetic val$requestType:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/Integer;ZJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1487
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iput-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    iput-wide p4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestBelongId:J

    iput-object p6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestEngUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 10

    .line 1490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure() queryProjectByType \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 1491
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1492
    const-string/jumbo p1, "timeout"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1493
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 1494
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputtimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u8d85\u65f6"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgettimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u6b21"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1496
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    iget-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    invoke-virtual {p1, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V

    return-void

    .line 1498
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    iget-boolean v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    iget-wide v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestBelongId:J

    iget-object v9, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestEngUuid:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mpostQueryProjectResponse(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V

    .line 1499
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputtimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    return-void

    :cond_1
    move-object v2, p2

    .line 1502
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    iget-boolean v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    iget-wide v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestBelongId:J

    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestEngUuid:Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mpostQueryProjectResponse(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 13

    .line 1509
    const-string/jumbo v0, "type"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputtimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u67e5\u8be2\u9879\u76ee\u54cd\u5e94(type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", filterEng="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", belong="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestBelongId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 1511
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1512
    const-string/jumbo p1, "state"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1513
    const-string/jumbo p1, "total_count"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v5, :cond_0

    .line 1515
    const-string p1, "err_msg"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1516
    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    iget-boolean v9, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    iget-wide v10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestBelongId:J

    iget-object v12, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestEngUuid:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v4 .. v12}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mpostQueryProjectResponse(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V

    .line 1517
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    .line 1519
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    const-string v6, "results"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1520
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 1521
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1522
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1523
    const-string v7, "details"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1524
    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v8, v6, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mcreateEntry(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1526
    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    .line 1527
    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    .line 1528
    const-string/jumbo v7, "version"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    .line 1529
    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 1530
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    .line 1531
    const-string v7, "create_epoch"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->createTime:J

    .line 1532
    const-string/jumbo v7, "update_epoch"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 1533
    iget-object v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v7, v2, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mapplyProjectBelongEngineeringFromServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1534
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetentityList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1537
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetentityList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 1538
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1539
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    iget-boolean v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    invoke-virtual {p1, v0, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V

    return-void

    .line 1541
    :cond_3
    iget-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    const-string v6, ""

    new-instance v7, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fgetentityList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v8, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestType:Ljava/lang/Integer;

    iget-boolean v9, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestFilterByEng:Z

    iget-wide v10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestBelongId:J

    iget-object v12, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->val$requestEngUuid:Ljava/lang/String;

    invoke-static/range {v4 .. v12}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$mpostQueryProjectResponse(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V

    .line 1542
    iget-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1546
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;->this$0:Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->-$$Nest$fputproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method
