.class public Lcom/qianhe/yct/utils/NetworkUserLoader;
.super Ljava/lang/Object;
.source "NetworkUserLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;,
        Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/qianhe/yct/utils/NetworkUserLoader; = null

.field private static URL:Ljava/lang/String; = "https://yct-ctrl.xfix-gnss.com/api/request"

.field private static sLastUnknownHostEventTime:J


# instance fields
.field private final MAX_RELINK:I

.field private activeQueryProjectBelongEngineeringId:J

.field private activeQueryProjectEngineeringUuid:Ljava/lang/String;

.field private activeQueryProjectFilterByEngineering:Z

.field private final bucketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private bucketPage:I

.field private final callList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private currentLogUploadTempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private currentLogUploadZip:Ljava/io/File;

.field private currentOssUploadCall:Lokhttp3/Call;

.field private final entityByUuidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final entityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final excavatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ExcavatorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private excavatorPage:I

.field private failCount:I

.field private failUpLogCount:I

.field private isUploadFileToServer:Z

.field private lastModifyEngineeringCurrentUsage:I

.field private lastModifyEngineeringElapsedMs:J

.field private lastModifyEngineeringId:J

.field private volatile logCompressThread:Ljava/lang/Thread;

.field private final logUploadApiCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private volatile logUploadCancelled:Z

.field private final logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mClient:Lokhttp3/OkHttpClient;

.field private final mSp:Landroid/content/SharedPreferences;

.field private final orderRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/OrderRecordEntity;",
            ">;"
        }
    .end annotation
.end field

.field private orderRecordPage:I

.field private proByuuidPage:I

.field private proPage:I

.field private final shareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShareEntity;",
            ">;"
        }
    .end annotation
.end field

.field private sharePage:I

.field private timeoutBucket:I

.field private timeoutExcavator:I

.field private timeoutOrderRecord:I

.field private timeoutQueryProject:I

.field private timeoutQueryShare:I

.field private final uploadingPointLocalIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8KcjnJp3SfDrtXK0ElAPQ6AyC8U(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 255
    const-string v1, "OkHttp"

    invoke-static {v0, v1, p0}, Lcom/qianhe/baselib/utils/LogToFile;->logcat(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CGpW4wyB45-iCyBqyGCZtMGnWqY(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;ILjava/util/List;Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 382
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 384
    :cond_0
    invoke-direct {p0, p3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteLogUploadDecryptTempFiles(Ljava/util/List;)V

    .line 385
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p2, :cond_1

    .line 386
    invoke-static {p4}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteLogdecTempFiles(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$QzvP_TBpwjevMZww64zY0dimp5M(Lcom/qianhe/yct/utils/NetworkUserLoader;I)Z
    .locals 0

    .line 3311
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadSessionActive(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$UDZIqMuBrcC8HcGMFhervU_Fcjk(Lcom/qianhe/yct/utils/NetworkUserLoader;ILcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;I)V
    .locals 0

    .line 3305
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadSessionActive(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3309
    invoke-interface {p2, p3}, Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;->onProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$pupXdWeJ_YvpOw_6BK2rWvDwkeM(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 3442
    const-string p0, "log-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".log"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbucketList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetentityByUuidList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->entityByUuidList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetentityList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->entityList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failUpLogCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlogUploadCancelled(Lcom/qianhe/yct/utils/NetworkUserLoader;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSp(Lcom/qianhe/yct/utils/NetworkUserLoader;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetorderRecordList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proByuuidPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshareList(Lcom/qianhe/yct/utils/NetworkUserLoader;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->shareList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharePage(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sharePage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeoutBucket(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutBucket:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeoutExcavator(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutExcavator:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeoutOrderRecord(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutOrderRecord:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutQueryProject:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeoutQueryShare(Lcom/qianhe/yct/utils/NetworkUserLoader;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutQueryShare:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbucketPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentOssUploadCall(Lcom/qianhe/yct/utils/NetworkUserLoader;Lokhttp3/Call;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentOssUploadCall:Lokhttp3/Call;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputexcavatorPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfailCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfailUpLogCount(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failUpLogCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisUploadFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUploadFileToServer:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputorderRecordPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputproByuuidPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proByuuidPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputproPage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsharePage(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sharePage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeoutBucket(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutBucket:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeoutExcavator(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutExcavator:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeoutOrderRecord(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutOrderRecord:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeoutQueryProject(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutQueryProject:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeoutQueryShare(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->timeoutQueryShare:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyProjectBelongEngineeringFromServer(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->applyProjectBelongEngineeringFromServer(Lorg/json/JSONObject;Lcom/qianhe/baselib/base/BaseProEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearUploadingPointLocalIds(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->clearUploadingPointLocalIds(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertGnssEngineeringItemToEntity(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->convertGnssEngineeringItemToEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateEntry(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;)Lcom/qianhe/baselib/base/BaseProEntity;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createEntry(ILjava/lang/String;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteLogUploadDecryptTempFiles(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteLogUploadDecryptTempFiles(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendLogUploadSession(Lcom/qianhe/yct/utils/NetworkUserLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->endLogUploadSession()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misLogUploadSessionActive(Lcom/qianhe/yct/utils/NetworkUserLoader;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadSessionActive(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyUploadLogFileState(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUploadLogFileState(Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseBucketParamsDetail(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShovelEntity;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseBucketParamsDetail(Lcom/qianhe/baselib/bean/ShovelEntity;Lorg/json/JSONObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseExcavatorFromQueryResult(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseExcavatorFromQueryResult(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseGnssEngineeringItem(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;)Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseGnssEngineeringItem(Lorg/json/JSONObject;)Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostQueryProjectResponse(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->postQueryProjectResponse(ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mputFileToOss(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putFileToOss(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadParamsDetailJson(Lcom/qianhe/yct/utils/NetworkUserLoader;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readParamsDetailJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$muploadLogFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadLogFileToServer(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muploadLogFileToServer(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadLogFileToServer(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smjsonFieldToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->jsonFieldToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnotifyUnknownHostIfNeeded(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUnknownHostIfNeeded(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    .line 158
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sharePage:I

    .line 159
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proPage:I

    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proByuuidPage:I

    .line 160
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorPage:I

    .line 161
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketPage:I

    .line 162
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordPage:I

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->shareList:Ljava/util/List;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->entityList:Ljava/util/List;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->entityByUuidList:Ljava/util/List;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorList:Ljava/util/List;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketList:Ljava/util/List;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordList:Ljava/util/List;

    .line 169
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->MAX_RELINK:I

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadingPointLocalIds:Ljava/util/Set;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectEngineeringUuid:Ljava/lang/String;

    const/high16 v0, -0x80000000

    .line 179
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->lastModifyEngineeringCurrentUsage:I

    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadApiCalls:Ljava/util/List;

    .line 273
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 275
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 276
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 277
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 278
    invoke-static {}, Lcom/qianhe/yct/utils/ServerEnvHelper;->isTestEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->callList:Ljava/util/List;

    return-void
.end method

.method private applyProjectBelongEngineeringFromServer(Lorg/json/JSONObject;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 8

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 1697
    :cond_0
    const-string v0, "belong_engineering_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1698
    const-string v5, "details"

    cmp-long v6, v3, v1

    if-gtz v6, :cond_2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1700
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1701
    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_1

    check-cast v6, Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 1702
    :goto_0
    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    .line 1704
    const-string v0, "belongEngineeringId"

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 1710
    iput-wide v3, p2, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    .line 1712
    :cond_3
    const-string v0, "engineering_uuid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1713
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1715
    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1716
    instance-of v3, p1, Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_2

    :catch_1
    nop

    goto :goto_3

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, v3

    .line 1717
    :goto_2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1718
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1719
    const-string v0, "engineeringUuid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p1

    .line 1724
    :cond_5
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1725
    iput-object v2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    :cond_6
    :goto_4
    return-void
.end method

.method private applyReqSign(IILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 4044
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4045
    const-string/jumbo v0, "sign"

    invoke-static {p1, p2, p3}, Lcom/qianhe/yct/utils/ReqSigner;->sign(IILjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private beginLogUpload(Ljava/io/File;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadApiCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadZip:Ljava/io/File;

    .line 361
    new-instance p1, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadTempFiles:Ljava/util/List;

    return-void
.end method

.method private beginNewLogUploadSession()I
    .locals 3

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logCompressThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-wide/16 v1, 0x1f40

    .line 336
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 340
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string/jumbo v0, "\u4e0a\u4e00\u8f6e\u65e5\u5fd7\u538b\u7f29\u4ecd\u672a\u7ed3\u675f"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cancelLogUploadNetwork()V

    .line 345
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cleanupLogUploadFiles()V

    .line 346
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x0

    .line 347
    iput-boolean v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    .line 348
    iput v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failCount:I

    .line 349
    iput v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failUpLogCount:I

    .line 350
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logCompressThread:Ljava/lang/Thread;

    return v0
.end method

.method private buildBucketParamsDetail(Lcom/qianhe/baselib/bean/ShovelEntity;)Lorg/json/JSONObject;
    .locals 4

    .line 2781
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->ensureParamsSerialized()V

    .line 2782
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2783
    const-string v1, "mode"

    iget v2, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2784
    iget-object v1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "param"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2785
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v1

    const-string v2, "auto_generate_params"

    const-string v3, "measure_params"

    if-eqz v1, :cond_1

    .line 2786
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2787
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->toSnakeCaseAutoGenerateParamsJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 2789
    :cond_1
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->toSnakeCaseMeasureParamsJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2790
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private buildExcavatorParamsJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lorg/json/JSONObject;
    .locals 4

    .line 2520
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2521
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "HA"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2522
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "pq"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2523
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "Ay"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2524
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "Ax"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2525
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "Dx"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2526
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "AD"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2527
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "BD"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2528
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "CD"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2529
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string p1, "BC"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method private buildPointItemsJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 4103
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 4105
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4106
    iget-object v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4107
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    :goto_2
    const-string v5, "collected_at"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4108
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    :goto_3
    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v3

    const-string v7, "latitude"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4109
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    :goto_4
    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v3

    const-string v7, "longitude"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4110
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    :goto_5
    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v3

    const-string v5, "altitude"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4111
    const-string/jumbo v3, "x"

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4112
    const-string/jumbo v3, "y"

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4113
    iget-wide v3, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v3

    const-string/jumbo v5, "z"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4114
    const-string/jumbo v3, "solution"

    iget v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4115
    const-string v3, "hdop"

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4116
    const-string/jumbo v3, "vdop"

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4117
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private buildProjectionJson(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    .line 4613
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4614
    const-string v2, "ellipsoid_type"

    iget v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4615
    const-string v2, "projection_type"

    iget v3, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4617
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4618
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4619
    const-string/jumbo v4, "type"

    iget v5, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4620
    iget-object v4, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    if-eqz v4, :cond_0

    .line 4621
    const-string v5, "a"

    iget-wide v6, v4, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->a:D

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4622
    const-string v4, "f"

    iget-object v5, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->customEllipsoidParams:Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/EngineeringEntity$CustomEllipsoidParams;->f:D

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 4624
    :cond_0
    :goto_0
    const-string v4, "ellipsoid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4626
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 4628
    iget v4, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 4642
    :cond_1
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transverseMercatorParams:Lcom/qianhe/baselib/bean/EngineeringEntity$TransverseMercatorParams;

    if-eqz p1, :cond_4

    .line 4643
    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4644
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 4636
    :cond_2
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->utmParams:Lcom/qianhe/baselib/bean/EngineeringEntity$UTMParams;

    if-eqz p1, :cond_4

    .line 4637
    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4638
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 4630
    :cond_3
    iget-object p1, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->gaussKrugerParams:Lcom/qianhe/baselib/bean/EngineeringEntity$GaussKrugerParams;

    if-eqz p1, :cond_4

    .line 4631
    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4632
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_5

    .line 4649
    const-string p1, "projection"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4650
    const-string p1, "params_detail"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v1

    .line 4654
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6784\u5efa\u6295\u5f71\u53c2\u6570JSON\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method private buildRequestBody(IILjava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4049
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4050
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "task"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4051
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "task_num"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4052
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4053
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 4055
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4056
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4057
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 4058
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4059
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putReqParamValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4061
    :cond_0
    const-string p3, "req_param"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4065
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4063
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private cancelLogUploadNetwork()V
    .locals 3

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadApiCalls:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    if-eqz v1, :cond_0

    .line 319
    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadApiCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentOssUploadCall:Lokhttp3/Call;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentOssUploadCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentOssUploadCall:Lokhttp3/Call;

    return-void
.end method

.method private cleanupLogUploadFiles()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadZip:Ljava/io/File;

    .line 366
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadTempFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 368
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->endLogUploadSession()V

    .line 369
    invoke-direct {p0, v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteLogUploadArtifacts(Ljava/io/File;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private cleanupLogUploadFilesAsync()V
    .locals 7

    .line 374
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 375
    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadZip:Ljava/io/File;

    .line 376
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadTempFiles:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadTempFiles:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 378
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :cond_1
    move-object v6, v1

    .line 379
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->endLogUploadSession()V

    .line 380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;ILjava/util/List;Ljava/io/File;)V

    const-string v2, "log-upload-cleanup"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private clearUploadingPointLocalIds(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 5184
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_1

    .line 5185
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadingPointLocalIds:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private convertGnssEngineeringItemToEntity(Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;)Lcom/qianhe/baselib/bean/EngineeringEntity;
    .locals 7

    .line 4839
    new-instance v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/EngineeringEntity;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 4841
    :cond_0
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    .line 4842
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    .line 4843
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->createEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    .line 4844
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    .line 4845
    iget-wide v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->version:J

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    .line 4846
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    .line 4847
    iget v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    .line 4848
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->projection:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;

    if-eqz v1, :cond_1

    .line 4849
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->ellipsoidType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->ellipsoidType:I

    .line 4850
    iget v2, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->projectionType:I

    iput v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->projectionType:I

    .line 4851
    iget-object v1, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->paramsDetail:Ljava/lang/String;

    .line 4852
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4853
    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/EngineeringProjectionParser;->applyParamsDetail(Lcom/qianhe/baselib/bean/EngineeringEntity;Ljava/lang/String;)V

    .line 4856
    :cond_1
    iget-object v1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    iget-wide v4, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParamId:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    .line 4857
    iput-wide v4, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 4858
    iget v1, v1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramType:I

    iput v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 4859
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    .line 4860
    new-instance v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    invoke-direct {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;-><init>()V

    .line 4861
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    iget-wide v2, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->id:J

    iput-wide v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    .line 4862
    iget-object v2, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->uuid:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamUuid:Ljava/lang/String;

    .line 4863
    iget-object v2, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    .line 4864
    iget v2, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramType:I

    iput v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    .line 4865
    iget-object v2, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramsDetail:Ljava/lang/String;

    iput-object v2, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramsDetail:Ljava/lang/String;

    .line 4866
    iget-object p1, p1, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->controlPoints:Ljava/lang/String;

    iput-object p1, v1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->controlPointsJson:Ljava/lang/String;

    .line 4867
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    .line 4868
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->normalizeParamsDetailScaleToK()V

    .line 4869
    iput-object v1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-object v0

    :cond_2
    const/4 p1, 0x0

    .line 4871
    iput p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    .line 4872
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    .line 4873
    iput-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamLocalId:J

    const/4 p1, 0x0

    .line 4874
    iput-object p1, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParam:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    return-object v0
.end method

.method private createEntry(ILjava/lang/String;)Lcom/qianhe/baselib/base/BaseProEntity;
    .locals 1

    .line 1657
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1658
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1659
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1660
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1661
    :cond_1
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1662
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/WaGouEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1663
    :cond_2
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1664
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/DikeEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1665
    :cond_3
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 1666
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/LineEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1667
    :cond_4
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 1668
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/PolyLineEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1669
    :cond_5
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 1670
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/OnePointAreaEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1671
    :cond_6
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1672
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1673
    :cond_7
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 1674
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1675
    :cond_8
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 1676
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1677
    :cond_9
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 1678
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    .line 1679
    :cond_a
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 1680
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/qianhe/baselib/bean/MultiPointAreaEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private createGnssEngineering(Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;JI)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    .line 4435
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 4436
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v5

    .line 4437
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_0

    .line 4441
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 4442
    const-string/jumbo v7, "token"

    invoke-interface {v14, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4443
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "belong_uid"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4444
    const-string v4, "name"

    move-object/from16 v5, p1

    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4445
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_current"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 4447
    const-string/jumbo v4, "trans_param_id"

    invoke-interface {v14, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    .line 4450
    const-string v0, "projection"

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4453
    :cond_2
    :try_start_0
    const-string/jumbo v11, "\u521b\u5efa\u5de5\u7a0b"

    new-instance v15, Lcom/qianhe/yct/utils/NetworkUserLoader$54;

    move-object/from16 v10, p0

    invoke-direct {v15, v10, v2, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader$54;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;J)V

    const/16 v12, 0x426a

    const/16 v13, 0x583

    invoke-direct/range {v10 .. v15}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u521b\u5efa\u5de5\u7a0b\u5931\u8d25: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4492
    new-instance v1, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    .line 4493
    iput-wide v2, v1, Lcom/qianhe/yct/event/CreateEngineeringResponse;->localDbId:J

    .line 4494
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4438
    :cond_3
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 10

    .line 4167
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 4169
    new-instance p2, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/16 p3, 0x1f40

    const-string/jumbo p4, "token error"

    invoke-direct {p2, p3, p4}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    .line 4170
    iput-object p1, p2, Lcom/qianhe/yct/event/GnssTransParamResponse;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_0

    .line 4171
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    :cond_0
    iput-wide v2, p2, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    .line 4172
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4175
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4176
    const-string/jumbo v1, "token"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4177
    const-string v0, "name"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "param_type"

    invoke-interface {v8, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    .line 4180
    const-string p2, "params_detail"

    invoke-interface {v8, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p5, :cond_3

    .line 4183
    const-string p2, "control_points"

    invoke-interface {v8, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4186
    :cond_3
    :try_start_0
    const-string/jumbo v5, "\u521b\u5efaGNSS\u8f6c\u6362\u53c2\u6570"

    new-instance v9, Lcom/qianhe/yct/utils/NetworkUserLoader$50;

    invoke-direct {v9, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$50;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V

    const/16 v6, 0x426a

    const/16 v7, 0x579

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 4230
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "\u521b\u5efaGNSS\u8f6c\u6362\u53c2\u6570\u5931\u8d25: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4231
    new-instance p3, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/4 p4, -0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    .line 4232
    iput-object p1, p3, Lcom/qianhe/yct/event/GnssTransParamResponse;->entity:Lcom/qianhe/baselib/bean/GnssTransParamEntity;

    if-eqz p1, :cond_4

    .line 4233
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->localId:J

    :cond_4
    iput-wide v2, p3, Lcom/qianhe/yct/event/GnssTransParamResponse;->localDbId:J

    .line 4234
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private deleteLogUploadArtifacts(Ljava/io/File;Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 395
    :cond_0
    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteLogUploadDecryptTempFiles(Ljava/util/List;)V

    .line 396
    invoke-static {p3}, Lcom/qianhe/baselib/utils/ZipUtil;->deleteLogdecTempFiles(Ljava/io/File;)V

    return-void
.end method

.method private deleteLogUploadDecryptTempFiles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadTempFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private endLogUploadSession()V
    .locals 1

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadZip:Ljava/io/File;

    .line 401
    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadTempFiles:Ljava/util/List;

    .line 402
    iput-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentOssUploadCall:Lokhttp3/Call;

    .line 403
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadApiCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getCalibParamsDetailJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lorg/json/JSONObject;
    .locals 4

    .line 2037
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncParamsToJson()V

    .line 2038
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncExcavatorParamsToJson()V

    .line 2039
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2040
    const-string v1, "params_type"

    iget v2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2041
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "left_dist"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2042
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "right_dist"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2043
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "span_dist"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2044
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "device_height"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2045
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putExcavatorBucketParamsToDetail(Lorg/json/JSONObject;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 2046
    const-string v1, "excavator_params"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildExcavatorParamsJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2047
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putCalibSoInputsToDetail(Lorg/json/JSONObject;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    .line 2048
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->stripRedundantExcavatorDetailFields(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;
    .locals 3

    const-class v0, Lcom/qianhe/yct/utils/NetworkUserLoader;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkUserLoader;

    if-nez v1, :cond_0

    .line 196
    const-string v1, "https://yct-ctrl.xfix-gnss.com/api/request"

    invoke-static {v1}, Lcom/qianhe/yct/utils/ServerEnvHelper;->resolveApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    .line 197
    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;-><init>()V

    sput-object v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkUserLoader;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 200
    :cond_0
    :goto_0
    sget-object v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkUserLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private varargs getSha256([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 4123
    const-string v0, ""

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 4126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4128
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 4129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4131
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4134
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 4135
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 4137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4138
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_3

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    .line 4139
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 4140
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_2

    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 4141
    :cond_2
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4143
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4145
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSha256\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object v0
.end method

.method public static getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 5

    const/4 v0, 0x0

    .line 210
    :try_start_0
    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$1;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader$1;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v2, v0

    .line 234
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 235
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 238
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 241
    new-instance v3, Lcom/qianhe/yct/utils/NetworkUserLoader$2;

    invoke-direct {v3}, Lcom/qianhe/yct/utils/NetworkUserLoader$2;-><init>()V

    .line 249
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 251
    aget-object v0, v2, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v4, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 252
    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 255
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 256
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 257
    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 260
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v4, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 261
    invoke-virtual {v4, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 262
    invoke-virtual {v4, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 264
    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u521b\u5efa\u5ffd\u7565SSL\u7684OkHttpClient\u5931\u8d25"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getUtcDateString()Ljava/lang/String;
    .locals 4

    .line 4035
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4036
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4037
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4038
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLogUploadSessionActive(I)Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static isLogUploadTempFile(Ljava/io/File;)Z
    .locals 1

    .line 418
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 419
    const-string v0, ".decrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "logdec_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".tmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

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

.method public static isUnknownHostError(Ljava/lang/String;)Z
    .locals 1

    .line 4026
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UnknownHostException"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to resolve host"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No address associated with hostname"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isUnknownHostError(Ljava/lang/Throwable;)Z
    .locals 3

    :goto_0
    if-eqz p0, :cond_4

    .line 4009
    instance-of v0, p0, Ljava/net/UnknownHostException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4012
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4013
    const-string v2, "Unable to resolve host"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "No address associated with hostname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 4016
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4017
    const-string v2, "UnknownHostException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4020
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static jsonFieldToString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4414
    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4415
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4416
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4419
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4417
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private logBucketUploadRequest(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2748
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2749
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2750
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 2752
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0a\u4f20\u6570\u636e\uff1a\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2754
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u4e0a\u4f20\u6570\u636e\u6253\u5370\u5931\u8d25\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private logExcavatorUploadRequest(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2080
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2081
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2082
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 2084
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0a\u4f20\u6570\u636e\uff1a\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2086
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u4e0a\u4f20\u6570\u636e\u6253\u5370\u5931\u8d25\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method private newOssUploadClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 3459
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x258

    .line 3460
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3461
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3462
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3463
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static notifyUnknownHostIfNeeded(Ljava/lang/Throwable;)V
    .locals 7

    .line 3994
    invoke-static {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUnknownHostError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3997
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3998
    sget-wide v2, Lcom/qianhe/yct/utils/NetworkUserLoader;->sLastUnknownHostEventTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    :goto_0
    return-void

    .line 4001
    :cond_1
    sput-wide v0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sLastUnknownHostEventTime:J

    .line 4002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u63a5\u53e3\u8bf7\u6c42\u57df\u540d\u89e3\u6790\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4003
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/qianhe/yct/event/UnknownHostEvent;

    invoke-direct {v0}, Lcom/qianhe/yct/event/UnknownHostEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyUploadLogFileState(Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 8

    .line 3642
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3645
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3646
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3647
    const-string/jumbo v0, "uuid"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3648
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "upload_state"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    :try_start_0
    const-string/jumbo v2, "\u901a\u77e5\u65e5\u5fd7\u4e0a\u4f20\u7ed3\u679c"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$44;

    invoke-direct {v6, p0, p1, p4, p3}, Lcom/qianhe/yct/utils/NetworkUserLoader$44;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/io/File;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V

    const/4 v7, 0x1

    const/16 v3, 0x426c

    const/16 v4, 0x3ed

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 3705
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4e0a\u4f20\u7ed3\u679c\u901a\u77e5\u5931\u8d25\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3706
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3707
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->endLogUploadSession()V

    if-eqz p4, :cond_2

    const/4 p1, 0x0

    .line 3709
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private optBooleanCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 2685
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2686
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2688
    :cond_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2689
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D
    .locals 1

    .line 2643
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2644
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->sanitizeDouble(D)D

    move-result-wide p1

    return-wide p1

    .line 2646
    :cond_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->sanitizeDouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private parseAutoGenerateParamsFromJsonObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;
    .locals 3

    .line 2666
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;-><init>()V

    .line 2667
    const-string v1, "ab"

    const-string v2, "AB"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    .line 2668
    const-string/jumbo v1, "t0x"

    const-string v2, "T0x"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    .line 2669
    const-string/jumbo v1, "t0y"

    const-string v2, "T0y"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    .line 2670
    const-string/jumbo v1, "t0z"

    const-string v2, "T0z"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    .line 2671
    const-string/jumbo v1, "t1x"

    const-string v2, "T1x"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    .line 2672
    const-string/jumbo v1, "t1y"

    const-string v2, "T1y"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    .line 2673
    const-string/jumbo v1, "t1z"

    const-string v2, "T1z"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    .line 2674
    const-string/jumbo v1, "t2x"

    const-string v2, "T2x"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    .line 2675
    const-string/jumbo v1, "t2y"

    const-string v2, "T2y"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    .line 2676
    const-string/jumbo v1, "t2z"

    const-string v2, "T2z"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    .line 2677
    const-string/jumbo v1, "t3x"

    const-string v2, "T3x"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    .line 2678
    const-string/jumbo v1, "t3y"

    const-string v2, "T3y"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    .line 2679
    const-string/jumbo v1, "t3z"

    const-string v2, "T3z"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    .line 2680
    const-string/jumbo v1, "use_distance_measure"

    const-string/jumbo v2, "useDistanceMeasure"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optBooleanCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    return-object v0
.end method

.method private parseBucketParamsDetail(Lcom/qianhe/baselib/bean/ShovelEntity;Lorg/json/JSONObject;)V
    .locals 3

    .line 2796
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 2797
    const-string v0, "param"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    .line 2798
    const-string v0, "auto_generate_params"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2800
    const-string v0, "autoGenerateParams"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2802
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2804
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseAutoGenerateParamsFromJsonObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qianhe/baselib/bean/ShovelEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2806
    :catch_0
    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->autoGenerateParams:Ljava/lang/String;

    .line 2808
    :goto_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearMeasureParams()V

    return-void

    .line 2811
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelEntity;->clearAutoGenerateParams()V

    .line 2812
    const-string v0, "measure_params"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2813
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2814
    const-string v0, "measureParams"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2816
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2818
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseMeasureParamsFromJsonObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 2820
    :catch_1
    iput-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->measureParams:Ljava/lang/String;

    return-void

    .line 2824
    :cond_3
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 2825
    const-string v1, "ab"

    const-string v2, "AB"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    .line 2826
    const-string v1, "g1"

    const-string v2, "G1"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    .line 2827
    const-string v1, "g2"

    const-string v2, "G2"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    .line 2828
    const-string v1, "g3"

    const-string v2, "G3"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    .line 2829
    const-string v1, "ly"

    const-string v2, "Ly"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 2830
    const-string v1, "ry"

    const-string v2, "Ry"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 2831
    const-string v1, "nt"

    const-string v2, "NT"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    .line 2832
    const-string v1, "at"

    const-string v2, "AT"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    .line 2833
    const-string v1, "na"

    const-string v2, "NA"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    .line 2834
    const-string v1, "lr"

    const-string v2, "LR"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    .line 2835
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 2836
    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method private parseCalibSoInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lorg/json/JSONObject;)V
    .locals 2

    .line 2507
    const-string/jumbo v0, "so_inputs"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2509
    const-string v0, "calibSoInputs"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2511
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 2514
    :cond_1
    iput-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    .line 2515
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->loadCalibSoInputsFromJson()V

    .line 2516
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->discardInvalidCalibSoInputs()V

    return-void
.end method

.method private parseExcavatorBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lorg/json/JSONObject;)V
    .locals 3

    .line 2712
    :try_start_0
    const-string v0, "auto_generate_params"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2713
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2714
    const-string v0, "autoGenerateParams"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2716
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2717
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseAutoGenerateParamsFromJsonObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setAutoGenerateParamsObj(Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;)V

    return-void

    .line 2720
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearAutoGenerateParams()V

    .line 2721
    const-string v0, "measure_params"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2722
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2723
    const-string v0, "measureParams"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2725
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2726
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseMeasureParamsFromJsonObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2731
    :catch_0
    :cond_3
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 2732
    const-string v1, "ab"

    const-string v2, "AB"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    .line 2733
    const-string v1, "g1"

    const-string v2, "G1"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    .line 2734
    const-string v1, "g2"

    const-string v2, "G2"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    .line 2735
    const-string v1, "g3"

    const-string v2, "G3"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    .line 2736
    const-string v1, "ly"

    const-string v2, "Ly"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 2737
    const-string v1, "ry"

    const-string v2, "Ry"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 2738
    const-string v1, "nt"

    const-string v2, "NT"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    .line 2739
    const-string v1, "at"

    const-string v2, "AT"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    .line 2740
    const-string v1, "na"

    const-string v2, "NA"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    .line 2741
    const-string v1, "lr"

    const-string v2, "LR"

    invoke-direct {p0, p2, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    .line 2742
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 2743
    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->setMeasureParamsObj(Lcom/qianhe/baselib/bean/ShovelMeasureParams;)V

    return-void
.end method

.method private parseExcavatorFromDetailJson(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 1

    .line 2060
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseExcavatorFromDetailObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    return-object p1
.end method

.method private parseExcavatorFromDetailObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 3

    .line 2064
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->stripRedundantExcavatorDetailFields(Lorg/json/JSONObject;)V

    .line 2065
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    .line 2066
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsDetail:Ljava/lang/String;

    .line 2067
    const-string v1, "params_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 2068
    const-string v1, "left_dist"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 2069
    const-string v1, "right_dist"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 2070
    const-string/jumbo v1, "span_dist"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    .line 2071
    const-string v1, "device_height"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    .line 2072
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseExcavatorParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lorg/json/JSONObject;)V

    .line 2073
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseExcavatorBucketParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lorg/json/JSONObject;)V

    .line 2074
    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseCalibSoInputs(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private parseExcavatorFromQueryResult(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 3

    .line 2561
    const-string v0, "calib_params_detail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2562
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2563
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 2564
    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseExcavatorFromDetailObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    return-object p1

    .line 2566
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2567
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2568
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->parseExcavatorFromDetailJson(Ljava/lang/String;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    return-object p1

    .line 2571
    :cond_2
    new-instance v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;-><init>()V

    .line 2572
    const-string v1, "perp_to_left_dist"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 2573
    const-string v1, "perp_to_right_dist"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->rigthDist:D

    .line 2574
    const-string/jumbo v1, "tip_span_dist"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->spanDist:D

    .line 2575
    const-string v1, "device_height"

    invoke-direct {p0, p1, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->deviceHeight:D

    return-object v0
.end method

.method private parseExcavatorParams(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lorg/json/JSONObject;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2534
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 2535
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 2536
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    .line 2537
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 2538
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 2539
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 2540
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    .line 2541
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 2542
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 2543
    const-string v0, "excavator_params"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2545
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncExcavatorParamsToJson()V

    return-void

    .line 2548
    :cond_0
    const-string v0, "HA"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->HA:D

    .line 2549
    const-string v0, "pq"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->pq:D

    .line 2550
    const-string v0, "Ay"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ay:D

    .line 2551
    const-string v0, "Ax"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Ax:D

    .line 2552
    const-string v0, "Dx"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->Dx:D

    .line 2553
    const-string v0, "AD"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->AD:D

    .line 2554
    const-string v0, "BD"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BD:D

    .line 2555
    const-string v0, "CD"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->CD:D

    .line 2556
    const-string v0, "BC"

    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->BC:D

    .line 2557
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncExcavatorParamsToJson()V

    return-void
.end method

.method private parseGnssEngineeringItem(Lorg/json/JSONObject;)Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;
    .locals 11

    .line 4795
    new-instance v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;

    invoke-direct {v0}, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;-><init>()V

    .line 4796
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->id:J

    .line 4797
    const-string/jumbo v2, "version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->version:J

    .line 4798
    const-string/jumbo v2, "uuid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->uuid:Ljava/lang/String;

    .line 4799
    const-string v3, "create_epoch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->createEpoch:J

    .line 4800
    const-string/jumbo v3, "update_epoch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->updateEpoch:J

    .line 4801
    const-string v3, "belong_uid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->belongUid:J

    .line 4802
    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->state:I

    .line 4803
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->name:Ljava/lang/String;

    .line 4804
    const-string v4, "is_current"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->currentUsage:I

    .line 4805
    const-string v4, "projection_param_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->projectionParamId:J

    .line 4806
    const-string/jumbo v4, "trans_param_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParamId:J

    .line 4808
    const-string v4, "projection"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "params_detail"

    if-eqz v5, :cond_1

    .line 4809
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4810
    new-instance v5, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;

    invoke-direct {v5}, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;-><init>()V

    .line 4811
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->id:J

    .line 4812
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->uuid:Ljava/lang/String;

    .line 4813
    const-string v7, "ellipsoid_type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->ellipsoidType:I

    .line 4814
    const-string v7, "projection_type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->projectionType:I

    .line 4815
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 4817
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->paramsDetail:Ljava/lang/String;

    goto :goto_0

    .line 4819
    :cond_0
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;->paramsDetail:Ljava/lang/String;

    .line 4821
    :goto_0
    iput-object v5, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->projection:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$Projection;

    .line 4824
    :cond_1
    const-string/jumbo v4, "trans_param"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v7, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParamId:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    .line 4825
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4826
    new-instance v4, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    invoke-direct {v4}, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;-><init>()V

    .line 4827
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->id:J

    .line 4828
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->uuid:Ljava/lang/String;

    .line 4829
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->name:Ljava/lang/String;

    .line 4830
    const-string v1, "param_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramType:I

    .line 4831
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->paramsDetail:Ljava/lang/String;

    .line 4832
    const-string v1, "control_points"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;->controlPoints:Ljava/lang/String;

    .line 4833
    iput-object v4, v0, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$GnssEngineeringItem;->transParam:Lcom/qianhe/yct/event/QueryGnssEngineeringResponse$TransParam;

    :cond_2
    return-object v0
.end method

.method private parseMeasureParamsFromJsonObject(Lorg/json/JSONObject;)Lcom/qianhe/baselib/bean/ShovelMeasureParams;
    .locals 3

    .line 2650
    new-instance v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-direct {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;-><init>()V

    .line 2651
    const-string v1, "g1"

    const-string v2, "G1"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    .line 2652
    const-string v1, "g2"

    const-string v2, "G2"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    .line 2653
    const-string v1, "g3"

    const-string v2, "G3"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    .line 2654
    const-string v1, "ly"

    const-string v2, "Ly"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    .line 2655
    const-string v1, "ry"

    const-string v2, "Ry"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    .line 2656
    const-string v1, "ab"

    const-string v2, "AB"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    .line 2657
    const-string v1, "nt"

    const-string v2, "NT"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    .line 2658
    const-string v1, "at"

    const-string v2, "AT"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    .line 2659
    const-string v1, "na"

    const-string v2, "NA"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    .line 2660
    const-string v1, "lr"

    const-string v2, "LR"

    invoke-direct {p0, p1, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->optDoubleCompat(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->LR:D

    .line 2661
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    return-object v0
.end method

.method private postQueryProjectResponse(ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;",
            "Ljava/lang/Integer;",
            "ZJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1559
    new-instance v0, Lcom/qianhe/yct/event/QueryProjectResponse;

    if-eqz p3, :cond_0

    invoke-direct {v0, p1, p2, p3}, Lcom/qianhe/yct/event/QueryProjectResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/qianhe/yct/event/QueryProjectResponse;-><init>(ILjava/lang/String;)V

    .line 1560
    :goto_0
    iput-object p4, v0, Lcom/qianhe/yct/event/QueryProjectResponse;->queryType:Ljava/lang/Integer;

    .line 1561
    iput-boolean p5, v0, Lcom/qianhe/yct/event/QueryProjectResponse;->filterByCurrentEngineering:Z

    .line 1562
    iput-wide p6, v0, Lcom/qianhe/yct/event/QueryProjectResponse;->queryBelongEngineeringId:J

    .line 1563
    iput-object p8, v0, Lcom/qianhe/yct/event/QueryProjectResponse;->queryEngineeringUuid:Ljava/lang/String;

    .line 1564
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private putCalibSoInputsToDetail(Lorg/json/JSONObject;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 3

    .line 2494
    invoke-virtual {p2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->syncCalibSoInputsToJson()V

    .line 2495
    iget-object v0, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    const-string/jumbo v1, "so_inputs"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2500
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2502
    :catch_0
    iget-object p2, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibSoInputs:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 2496
    :cond_1
    :goto_0
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private putExcavatorBucketParamsToDetail(Lorg/json/JSONObject;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 3

    .line 2484
    invoke-virtual {p2}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesAutoGenerateParams()Z

    move-result v0

    const-string v1, "auto_generate_params"

    const-string v2, "measure_params"

    if-eqz v0, :cond_0

    .line 2485
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2486
    iget-object p2, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->autoGenerateParams:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->toSnakeCaseAutoGenerateParamsJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 2488
    :cond_0
    iget-object p2, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->measureParams:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->toSnakeCaseMeasureParamsJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2489
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private putFileToOss(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V
    .locals 10

    const/4 v8, 0x0

    if-eqz p3, :cond_4

    .line 3760
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3767
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_5

    .line 3769
    const-string v0, "empty upload_url"

    invoke-interface {p5, v8, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    return-void

    .line 3773
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "application/zip"

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v3, p2

    .line 3774
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x258

    .line 3775
    invoke-virtual {v0, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3776
    invoke-virtual {v0, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3777
    invoke-virtual {v0, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3778
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 3779
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 3781
    :try_start_0
    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$46;

    move-object v2, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader$46;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;JLjava/io/File;)V

    .line 3803
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 3804
    const-string v2, "Content-Type"

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-eqz p4, :cond_3

    .line 3806
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5Base64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3807
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3808
    const-string v3, "Content-MD5"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 3811
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    new-instance v0, Lcom/qianhe/yct/utils/NetworkUserLoader$47;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader$47;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ILjava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    invoke-interface {v9, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3848
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSS PUT \u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    if-eqz p5, :cond_5

    .line 3850
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v8, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    goto :goto_4

    .line 3761
    :cond_4
    :goto_3
    const-string v0, "OSS PUT \u5931\u8d25: \u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz p5, :cond_5

    .line 3763
    const-string v0, "file not found"

    invoke-interface {p5, v8, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private putPointGroupBelongEngineering(Ljava/util/Map;Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4883
    :cond_0
    iget-wide v0, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->belongEngineeringId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4884
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "belong_engineering_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4886
    :cond_1
    iget-object v0, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4887
    const-string v0, "engineering_uuid"

    iget-object p2, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->engineeringUuid:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private putProjectBelongEngineeringId(Ljava/util/Map;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1687
    :cond_0
    iget-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1688
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "belong_engineering_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    :cond_1
    iget-object v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1691
    const-string v0, "engineering_uuid"

    iget-object p2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private putReqParamValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    .line 4070
    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 4071
    :cond_0
    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_5

    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4073
    :cond_1
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 4074
    check-cast p3, Ljava/util/Collection;

    invoke-direct {p0, p3}, Lcom/qianhe/yct/utils/NetworkUserLoader;->toJsonArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 4075
    :cond_2
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 4076
    new-instance v0, Lorg/json/JSONObject;

    check-cast p3, Ljava/util/Map;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 4077
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4078
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 4080
    :cond_4
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 4072
    :cond_5
    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private readJsonFieldAsString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2695
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2698
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2699
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 2700
    check-cast p1, Lorg/json/JSONObject;

    .line 2701
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2703
    :cond_2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 2704
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2705
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v1

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private readParamsDetailJson(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 2759
    const-string v0, "params_detail"

    const-string v1, "paramsDetail"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 2760
    aget-object v2, v0, v1

    .line 2761
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2764
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2765
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2766
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2767
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 2770
    :cond_1
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 2771
    check-cast v2, Lorg/json/JSONObject;

    .line 2772
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2773
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2777
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private round3(D)D
    .locals 2

    .line 2591
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->sanitizeDouble(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private safeOptDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 1

    if-eqz p1, :cond_1

    .line 2580
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2583
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->sanitizeDouble(D)D

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private sanitizeDouble(D)D
    .locals 1

    .line 2587
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-wide p1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3897
    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;ZZ)V

    return-void
.end method

.method private startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;",
            "Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 3901
    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;ZZ)V

    return-void
.end method

.method private startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;",
            "ZZ)V"
        }
    .end annotation

    if-eqz p7, :cond_0

    if-eqz p4, :cond_0

    .line 3909
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3910
    invoke-direct {p0, p2, p3, p7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->applyReqSign(IILjava/util/Map;)V

    move-object p4, p7

    :cond_0
    if-nez p4, :cond_1

    .line 3913
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 3915
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object p4

    const/4 p7, 0x0

    .line 3917
    :try_start_0
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p4, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3918
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v2, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    if-eqz p4, :cond_2

    .line 3920
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_2

    .line 3921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...(truncated,len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 3923
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3924
    iget-object p2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    .line 3925
    iget-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->callList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_3

    .line 3927
    iget-object p3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadApiCalls:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3929
    :cond_3
    new-instance p3, Lcom/qianhe/yct/utils/NetworkUserLoader$49;

    invoke-direct {p3, p0, p5, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$49;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3980
    :goto_1
    iput p7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failCount:I

    .line 3981
    invoke-static {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUnknownHostIfNeeded(Ljava/lang/Throwable;)V

    if-eqz p5, :cond_4

    const/4 p2, 0x0

    .line 3982
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p2, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private stripRedundantExcavatorDetailFields(Lorg/json/JSONObject;)V
    .locals 1

    .line 2054
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2055
    const-string v0, "calib_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2056
    const-string v0, "calib_params_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private toJsonArray(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 4085
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4086
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4088
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 4089
    :cond_0
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_4

    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4091
    :cond_1
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 4092
    new-instance v2, Lorg/json/JSONObject;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 4093
    :cond_2
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 4094
    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->toJsonArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 4096
    :cond_3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 4090
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private toSnakeCaseAutoGenerateParamsJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    if-eqz p1, :cond_2

    .line 2618
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2621
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;

    .line 2622
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2623
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->AB:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "ab"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2624
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0x:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t0x"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2625
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0y:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t0y"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2626
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T0z:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t0z"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2627
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1x:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t1x"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2628
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1y:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t1y"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2629
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T1z:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t1z"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2630
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2x:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t2x"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2631
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2y:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t2y"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2632
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T2z:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t2z"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2633
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3x:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t3x"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2634
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3y:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t3y"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2635
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->T3z:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string/jumbo v3, "t3z"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2636
    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShovelAutoGenerateParams;->useDistanceMeasure:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 2637
    const-string/jumbo v1, "use_distance_measure"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0

    .line 2619
    :cond_2
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private toSnakeCaseMeasureParamsJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    if-eqz p1, :cond_2

    .line 2595
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2598
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;

    if-nez p1, :cond_1

    .line 2600
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    .line 2602
    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->syncLRWithHalfWidths()V

    .line 2603
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2604
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G1:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "g1"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2605
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G2:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "g2"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2606
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->G3:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "g3"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2607
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ly:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "ly"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2608
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->Ry:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "ry"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2609
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AB:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "ab"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2610
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NT:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "nt"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2611
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->AT:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "at"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2612
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->NA:D

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string v3, "na"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2613
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/ShovelMeasureParams;->resolveLR()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->round3(D)D

    move-result-wide v1

    const-string p1, "lr"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0

    .line 2596
    :cond_2
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private uploadLogFileToServer(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 3468
    invoke-direct/range {v0 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadLogFileToServer(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V

    return-void
.end method

.method private uploadLogFileToServer(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;",
            "Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p8

    .line 3476
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3479
    :cond_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v8, p4

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3480
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object/from16 v6, p5

    move-object/from16 v8, p7

    goto/16 :goto_4

    :cond_2
    const/4 v0, 0x1

    .line 3485
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUploadFileToServer:Z

    .line 3486
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->newOssUploadClient()Lokhttp3/OkHttpClient;

    move-result-object v9

    .line 3487
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 3488
    new-array v7, v0, [I

    const/4 v0, -0x1

    const/4 v13, 0x0

    aput v0, v7, v13

    if-eqz v6, :cond_3

    .line 3491
    :try_start_0
    aput v13, v7, v13

    .line 3492
    invoke-interface {v6, v13}, Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;->onProgress(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    goto/16 :goto_2

    .line 3495
    :cond_3
    :goto_0
    new-instance v0, Lcom/qianhe/yct/utils/NetworkUserLoader$42;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v5, v11

    :try_start_1
    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader$42;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;JLjava/io/File;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v11, v5

    .line 3542
    :try_start_2
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 3543
    const-string v2, "Content-Type"

    move-object/from16 v6, p3

    invoke-virtual {v0, v2, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-eqz p1, :cond_5

    .line 3546
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3547
    invoke-static {v8}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5Base64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object/from16 v2, p9

    .line 3549
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3550
    const-string v7, "Content-MD5"

    invoke-virtual {v0, v7, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 3553
    :cond_5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 3554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f00\u59cbOSS\u4e0a\u4f20 size="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3556
    invoke-virtual {v9, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v14

    .line 3557
    iput-object v14, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentOssUploadCall:Lokhttp3/Call;

    .line 3558
    new-instance v0, Lcom/qianhe/yct/utils/NetworkUserLoader$43;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    :try_start_3
    invoke-direct/range {v0 .. v11}, Lcom/qianhe/yct/utils/NetworkUserLoader$43;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v14, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object v11, v5

    .line 3631
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3632
    iput v13, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failUpLogCount:I

    .line 3633
    iput-boolean v13, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUploadFileToServer:Z

    .line 3634
    iput-object v12, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentOssUploadCall:Lokhttp3/Call;

    const/4 v0, 0x3

    .line 3635
    invoke-direct {p0, v11, v6, v0, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUploadLogFileState(Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    move-object/from16 v7, p6

    .line 3636
    invoke-direct {p0, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->deleteLogUploadDecryptTempFiles(Ljava/util/List;)V

    :goto_3
    return-void

    .line 3481
    :goto_4
    const-string/jumbo v0, "\u4e0a\u4f20\u5931\u8d25, \u538b\u7f29\u540e\u7684\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 3482
    invoke-direct {p0, v12, v6, v0, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->notifyUploadLogFileState(Ljava/io/File;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-void
.end method

.method private uploadTodayLogInternal(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v2, p6

    .line 3258
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 3259
    iget-object v4, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v7, "deviceSn"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3260
    iget-object v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v9, "base_deviceSn"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    .line 3262
    const-string/jumbo v0, "\u5f53\u5929\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25\uff1adevice_id\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz v5, :cond_11

    .line 3264
    const-string v0, "DeviceId Empty"

    invoke-interface {v5, v11, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    return-void

    .line 3269
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3270
    const-string/jumbo v0, "\u5f53\u5929\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25\uff1a\u6ca1\u6709\u8fde\u63a5\u8bbe\u5907\u8bb0\u5f55-device_sn\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    if-eqz v5, :cond_11

    .line 3272
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->deviceSn_empty:I

    invoke-static {v0, v2}, Lcom/qianhe/baselib/utils/LanguagePrefs;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v11, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    return-void

    .line 3278
    :cond_1
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x0

    .line 3279
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xc

    .line 3280
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xd

    .line 3281
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xe

    .line 3282
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 3283
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    .line 3286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v12

    move-wide/from16 v16, v12

    .line 3287
    sget-wide v12, Lcom/qianhe/baselib/utils/LogToFile;->endTime:J

    const-wide/16 v18, 0x0

    cmp-long v20, v12, v18

    if-lez v20, :cond_2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 3288
    :cond_2
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd HH:mm"

    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v12, v13, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3289
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u4e0a\u4f20\u5f53\u5929\u65e5\u5fd7\u65f6\u95f4\u8303\u56f4\uff1a"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v19, v8, v16

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "---------"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\uff08LogToFile.endTime="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v12, Lcom/qianhe/baselib/utils/LogToFile;->endTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\uff09"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3291
    invoke-static {v3, v8, v9, v14, v15}, Lcom/qianhe/baselib/utils/FileUtil;->findEncryFilesInTimeRange(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v10

    .line 3292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u7b26\u5408\u6761\u4ef6\u7684\u52a0\u5bc6\u6587\u4ef6\u6570\u91cf\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u4e2a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3293
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    const-string v13, "/log"

    if-nez v12, :cond_e

    const/4 v12, 0x0

    .line 3294
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_3

    .line 3295
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    move-wide v11, v8

    .line 3298
    invoke-static {v3, v11, v12, v14, v15}, Lcom/qianhe/baselib/utils/FileUtil;->findUnEncryFilesInTimeRange(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v9

    .line 3299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6587\u4ef6\u7b5b\u9009\u5b8c\u6210\u6570\u91cf\uff1aenc="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " plain="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3300
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmm"

    move-object/from16 v21, v4

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v8, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v7

    invoke-static/range {p1 .. p1}, Lcom/qianhe/baselib/utils/FileUtil;->getRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3302
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->currentLogUploadZip:Ljava/io/File;

    .line 3304
    new-instance v4, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;

    move-object/from16 v7, p5

    invoke-direct {v4, v1, v2, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ILcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;)V

    new-instance v8, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda3;

    invoke-direct {v8, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    invoke-static {v10, v9, v3, v4, v8}, Lcom/qianhe/baselib/utils/ZipUtil;->zipLogUploadPackage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/qianhe/baselib/utils/ZipUtil$ZipProgressListener;Lcom/qianhe/baselib/utils/ZipUtil$ZipCancelChecker;)Ljava/io/File;

    move-result-object v8

    .line 3312
    invoke-direct {v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadSessionActive(I)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v8, :cond_4

    .line 3313
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3314
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 3316
    :cond_4
    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cleanupLogUploadFiles()V

    .line 3317
    const-string/jumbo v0, "\u5f53\u5929\u65e5\u5fd7\u538b\u7f29\u5df2\u53d6\u6d88"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez v8, :cond_6

    .line 3321
    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cleanupLogUploadFiles()V

    .line 3322
    const-string/jumbo v0, "\u5f53\u5929\u65e5\u5fd7\u538b\u7f29\u8865\u6551\u540e\u4ecd\u5931\u8d25"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    if-eqz v5, :cond_11

    .line 3324
    const-string/jumbo v0, "\u65e5\u5fd7\u538b\u7f29\u5931\u8d25"

    const/4 v2, 0x0

    invoke-interface {v5, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    return-void

    .line 3329
    :cond_6
    invoke-direct {v1, v8, v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->beginLogUpload(Ljava/io/File;Ljava/util/List;)V

    .line 3330
    invoke-direct {v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadSessionActive(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3331
    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cleanupLogUploadFiles()V

    return-void

    :cond_7
    if-eqz v6, :cond_8

    const/4 v3, 0x0

    .line 3337
    :try_start_0
    invoke-interface {v6, v3}, Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;->onProgress(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v8

    move-object v8, v5

    goto/16 :goto_4

    .line 3339
    :cond_8
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f53\u5929\u65e5\u5fd7\u538b\u7f29\u5b8c\u6210\uff0c\u8ba1\u7b97MD5 size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3341
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qianhe/baselib/utils/FileUtil;->getFileMD5HexAndBase64(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3342
    invoke-direct {v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadSessionActive(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    if-eqz v5, :cond_a

    :cond_9
    move-object v9, v8

    move-object/from16 v8, p3

    goto/16 :goto_3

    .line 3346
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u5f53\u5929\u65e5\u5fd7MD5\u5b8c\u6210 costMs="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v3, v16, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3347
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 3348
    const-string/jumbo v3, "token"

    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    const-string v3, "device_id"

    invoke-interface {v13, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    const-string v3, "device_sn"

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v21

    goto :goto_2

    :cond_b
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, v22

    :cond_c
    :goto_2
    invoke-interface {v13, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    const-string v0, "remark"

    move-object/from16 v4, p2

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3352
    const-string v0, "log_file_size"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3353
    const-string v0, "log_file_md5"

    const/16 v18, 0x0

    aget-object v3, v10, v18

    invoke-interface {v13, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3354
    const-string v0, "log_beg_epoch"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3355
    const-string v0, "log_end_epoch"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7b2c"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->failCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6b21\u4e0a\u4f20..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 3358
    const-string/jumbo v11, "\u4e0a\u4f20\u5f53\u5929\u65e5\u5fd7"

    new-instance v0, Lcom/qianhe/yct/utils/NetworkUserLoader$41;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    :try_start_2
    invoke-direct/range {v0 .. v10}, Lcom/qianhe/yct/utils/NetworkUserLoader$41;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;ILandroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Ljava/io/File;Ljava/util/List;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v8

    move-object v8, v5

    const/4 v7, 0x1

    const/16 v3, 0x426c

    const/16 v4, 0x3eb

    move-object/from16 v1, p0

    move-object v6, v0

    move-object v2, v11

    move-object v5, v13

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Z)V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v9, v8

    move-object/from16 v8, p3

    goto :goto_4

    .line 3343
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cleanupLogUploadFiles()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    .line 3432
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4e0a\u4f20\u5f53\u5929\u65e5\u5fd7\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 3434
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->endLogUploadSession()V

    if-eqz v8, :cond_11

    .line 3436
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v8, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_e
    move-wide v11, v8

    move-object v8, v5

    .line 3441
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/qianhe/baselib/utils/FileUtil;->getRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/NetworkUserLoader$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    .line 3443
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u5929\u52a0\u5bc6\u65e5\u5fd7\u7b5b\u9009\u4e3a\u7a7a\uff1adir="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exists="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3444
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " rawCount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_10

    const/4 v0, -0x1

    goto :goto_6

    .line 3445
    :cond_10
    array-length v0, v2

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " startOfDay="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " endEpoch="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " LogToFile.endTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/qianhe/baselib/utils/LogToFile;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " locale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3443
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    if-eqz v8, :cond_11

    .line 3451
    const-string v0, "fileList = 0"

    const/4 v2, 0x0

    invoke-interface {v8, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;->onFailure(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_11
    :goto_7
    return-void
.end method

.method private wrapCalibResponseLog(Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;
    .locals 1

    .line 3734
    new-instance v0, Lcom/qianhe/yct/utils/NetworkUserLoader$45;

    invoke-direct {v0, p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$45;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V

    return-object v0
.end method


# virtual methods
.method public addPoint(Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 5191
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5192
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5193
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->addPoints(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V

    return-void
.end method

.method public addPoints(Lcom/qianhe/baselib/bean/PointGroupEntity;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointlibEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5105
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move-object v4, p0

    goto/16 :goto_5

    .line 5108
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_2

    .line 5110
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    cmp-long v8, v6, v2

    if-lez v8, :cond_3

    goto :goto_1

    .line 5111
    :cond_3
    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadingPointLocalIds:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 5112
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5114
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    .line 5115
    :cond_6
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p2

    .line 5116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5117
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/PointSyncResponse;

    const/16 v0, 0x1f40

    const-string/jumbo v1, "token error"

    invoke-direct {p2, v0, v1}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 5120
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 5121
    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadingPointLocalIds:Ljava/util/Set;

    iget-wide v4, v2, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5123
    :cond_8
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5124
    const-string/jumbo v0, "token"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5125
    iget-wide p1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-interface {v8, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5127
    :try_start_0
    const-string p1, "points"

    invoke-direct {p0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildPointItemsJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-interface {v8, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5128
    const-string/jumbo v5, "\u6dfb\u52a0\u70b9"

    new-instance v9, Lcom/qianhe/yct/utils/NetworkUserLoader$63;

    invoke-direct {v9, p0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader$63;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0x426a

    const/16 v7, 0x597

    move-object v4, p0

    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_3
    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, p0

    goto :goto_3

    .line 5175
    :goto_4
    invoke-direct {p0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->clearUploadingPointLocalIds(Ljava/util/List;)V

    .line 5176
    new-instance p2, Lcom/qianhe/yct/event/PointSyncResponse;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5177
    iput-object v1, p2, Lcom/qianhe/yct/event/PointSyncResponse;->entities:Ljava/util/List;

    .line 5178
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public applyCalibPacketUpload(Ljava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;",
            ")V"
        }
    .end annotation

    .line 3717
    const-string v0, "17020,1001"

    invoke-direct {p0, v0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->wrapCalibResponseLog(Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v2, "\u7533\u8bf7\u6821\u51c6\u6570\u636e\u5305\u4e0a\u4f20"

    const/16 v3, 0x427c

    const/16 v4, 0x3e9

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;ZZ)V

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 288
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sharePage:I

    .line 289
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proPage:I

    .line 290
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proByuuidPage:I

    .line 291
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorPage:I

    .line 292
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketPage:I

    .line 293
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordPage:I

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->callList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    if-eqz v1, :cond_0

    .line 295
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->callList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public cancelLogUpload()V
    .locals 2

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadCancelled:Z

    .line 305
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logUploadGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->logCompressThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cancelLogUploadNetwork()V

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUploadFileToServer:Z

    .line 312
    iput v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->failUpLogCount:I

    .line 313
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->cleanupLogUploadFilesAsync()V

    .line 314
    const-string/jumbo v0, "\u7528\u6237\u53d6\u6d88\u65e5\u5fd7\u4e0a\u4f20"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public checkTokenValid()V
    .locals 10

    .line 3856
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 3857
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3858
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/CheckTokenResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/CheckTokenResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 3861
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3862
    const-string/jumbo v1, "token"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3864
    :try_start_0
    const-string/jumbo v5, "\u68c0\u67e5token"

    new-instance v9, Lcom/qianhe/yct/utils/NetworkUserLoader$48;

    invoke-direct {v9, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$48;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v6, 0x4269

    const/16 v7, 0x3fb

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3891
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/CheckTokenResponse;

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/qianhe/yct/event/CheckTokenResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u68c0\u67e5token\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public clearLocalLoginInfo()V
    .locals 1

    .line 2928
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->clearLoginInfo()V

    return-void
.end method

.method public closeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 812
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 813
    const-string v1, "order_no"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v1, "reason"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 815
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wx_code_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string/jumbo v1, "wx_code"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426f

    const/16 v2, 0x1f

    .line 817
    invoke-direct {p0, v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 819
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 820
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 \u5173\u95ed\u8ba2\u5355\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qianhe/yct/utils/NetworkUserLoader$9;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 864
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 865
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/CloseOrderResponse;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/qianhe/yct/event/CloseOrderResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 866
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u5173\u95ed\u8ba2\u5355\u5f02\u5e38\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1903
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1904
    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    const-string/jumbo v0, "telephone"

    goto :goto_0

    :cond_0
    const-string v0, "email"

    :goto_0
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    const-string p1, "captcha"

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    const-string p1, "name"

    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    const-string p1, "password"

    invoke-interface {v5, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    :try_start_0
    const-string/jumbo v2, "\u521b\u5efa\u8d26\u53f7"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$27;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$27;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x4269

    const/16 v4, 0x3eb

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1935
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/CreateAccountResponse;

    const/4 p4, -0x1

    const-string v0, ""

    invoke-direct {p3, p4, v0}, Lcom/qianhe/yct/event/CreateAccountResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1936
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u521b\u5efa\u8d26\u53f7\u5931\u8d25\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public createBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 7

    .line 2261
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2262
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2264
    new-instance v0, Lcom/qianhe/yct/event/CreateBucketResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/CreateBucketResponse;-><init>(ILjava/lang/String;)V

    .line 2265
    iput-object p1, v0, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 2266
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2269
    :cond_0
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string v1, "name"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    :try_start_0
    const-string v0, "params_detail"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildBucketParamsDetail(Lcom/qianhe/baselib/bean/ShovelEntity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    const-string/jumbo v0, "\u521b\u5efa\u94f2\u6597"

    invoke-direct {p0, v0, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->logBucketUploadRequest(Ljava/lang/String;Ljava/util/Map;)V

    .line 2275
    const-string/jumbo v2, "\u521b\u5efa\u94f2\u6597"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$33;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$33;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const/16 v3, 0x426a

    const/16 v4, 0x515

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2317
    new-instance v1, Lcom/qianhe/yct/event/CreateBucketResponse;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/CreateBucketResponse;-><init>(ILjava/lang/String;)V

    .line 2318
    iput-object p1, v1, Lcom/qianhe/yct/event/CreateBucketResponse;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 2319
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u521b\u5efa\u94f2\u6597\u5931\u8d25\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public createExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 7

    .line 1983
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1984
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1985
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1986
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/CreateExcavatorResponse;

    const/16 v0, 0x1f40

    const-string/jumbo v1, "token error"

    invoke-direct {p2, v0, v1}, Lcom/qianhe/yct/event/CreateExcavatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1989
    :cond_0
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    iget-object v0, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    const-string v0, "calib_params_id"

    iget-object v1, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    const-string v0, "calib_params"

    iget-object v1, p2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    :try_start_0
    const-string v0, "calib_params_detail"

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getCalibParamsDetailJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    const-string/jumbo v0, "\u521b\u5efa\u6316\u673a"

    invoke-direct {p0, v0, v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->logExcavatorUploadRequest(Ljava/lang/String;Ljava/util/Map;)V

    .line 1996
    const-string/jumbo v2, "\u521b\u5efa\u6316\u673a"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$29;

    invoke-direct {v6, p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$29;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    const/16 v3, 0x426a

    const/16 v4, 0x4b1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2031
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/CreateExcavatorResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/CreateExcavatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2032
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u521b\u5efa\u6316\u673a\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public createGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 8

    if-nez p1, :cond_0

    .line 4426
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4429
    :cond_0
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4430
    :goto_1
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildProjectionJson(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4431
    iget-object v2, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    iget-wide v5, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    iget v7, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssEngineering(Ljava/lang/String;Ljava/lang/Long;Lorg/json/JSONObject;JI)V

    return-void
.end method

.method public createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 9

    if-nez p1, :cond_0

    .line 4154
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4157
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->buildParamsDetailJsonObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 4158
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->buildControlPointsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 4159
    :goto_1
    iget-object v5, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    iget v6, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONArray;)V

    return-void
.end method

.method public createPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 8

    .line 4892
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4893
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 4900
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4901
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4902
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string v1, "name"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4903
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "remark"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4904
    :cond_2
    invoke-direct {p0, v6, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putPointGroupBelongEngineering(Ljava/util/Map;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 4906
    :try_start_0
    const-string/jumbo v3, "\u521b\u5efa\u70b9\u5e93\u7ec4"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$59;

    invoke-direct {v7, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$59;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    const/16 v4, 0x426a

    const/16 v5, 0x58d

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4947
    new-instance v1, Lcom/qianhe/yct/event/PointGroupResponse;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 4948
    iput-object p1, v1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 4949
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v2, v1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 4950
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4894
    :cond_3
    :goto_1
    new-instance v0, Lcom/qianhe/yct/event/PointGroupResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 4895
    iput-object p1, v0, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz p1, :cond_4

    .line 4896
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    :goto_2
    iput-wide v1, v0, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 4897
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public createProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 8

    .line 1312
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/CreateProjectResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2, p2}, Lcom/qianhe/yct/event/CreateProjectResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1317
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->refreshProjectForUpload(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object p2

    .line 1318
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1319
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    iget-object v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    if-eqz p1, :cond_1

    .line 1322
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v6, "longitude"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 1323
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 1324
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "altitude"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    invoke-direct {p0, v5, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putProjectBelongEngineeringId(Ljava/util/Map;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1327
    :try_start_0
    const-string p1, "details"

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    const-string/jumbo v2, "\u521b\u5efa\u9879\u76ee"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$18;

    invoke-direct {v6, p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$18;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/base/BaseProEntity;)V

    const/16 v3, 0x426a

    const/16 v4, 0x3e9

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1356
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/CreateProjectResponse;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, p2}, Lcom/qianhe/yct/event/CreateProjectResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9879\u76ee\u521b\u5efa\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public createShare(Ljava/lang/String;Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1035
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1036
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-string v0, "name"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "expire_epoch"

    invoke-interface {v5, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1040
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1041
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_0

    .line 1043
    :cond_0
    const-string p2, "project_ids"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    :try_start_0
    const-string/jumbo v2, "\u521b\u5efa\u5206\u4eab"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$12;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$12;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x426a

    const/16 v4, 0x44d

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1073
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/CreateShareResponse;

    const/4 p4, -0x1

    const-string v0, ""

    invoke-direct {p3, p4, v0}, Lcom/qianhe/yct/event/CreateShareResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1074
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u9879\u76ee\u5206\u4eab\u5931\u8d25\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public delBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 8

    .line 2455
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2456
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2457
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2458
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bucket_id"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    :try_start_0
    const-string/jumbo v3, "\u5220\u9664\u94f2\u6597"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$36;

    invoke-direct {v7, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$36;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const/16 v4, 0x426a

    const/16 v5, 0x517

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2479
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/DelBucketResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p1}, Lcom/qianhe/yct/event/DelBucketResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public delExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 8

    .line 2229
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2233
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2234
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "calibrate_id"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    :try_start_0
    const-string/jumbo v3, "\u5220\u9664\u6316\u673a"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$32;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$32;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x426a

    const/16 v5, 0x4b3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5220\u9664\u6316\u673a\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public delProject(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 8

    .line 1414
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1418
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1419
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "project_id"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    :try_start_0
    const-string/jumbo v3, "\u5220\u9664\u9879\u76ee"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$20;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$20;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x426a

    const/16 v5, 0x3eb

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5220\u9664\u9879\u76ee\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public delShare(Lcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 7

    .line 1152
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1153
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "share_id"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    :try_start_0
    const-string/jumbo v2, "\u5220\u9664\u5206\u4eab"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$14;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$14;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShareEntity;)V

    const/16 v3, 0x426a

    const/16 v4, 0x44f

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1181
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/DelShareResponse;

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, p1}, Lcom/qianhe/yct/event/DelShareResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShareEntity;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5220\u9664\u5206\u4eab\u5931\u8d25\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public deleteGnssEngineering(J)V
    .locals 8

    .line 4499
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4501
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/16 v0, 0x1f40

    const-string/jumbo v1, "token error"

    invoke-direct {p2, v0, v1}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4504
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4505
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4506
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {v6, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4508
    :try_start_0
    const-string/jumbo v3, "\u5220\u9664\u5de5\u7a0b"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$55;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$55;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x426a

    const/16 v5, 0x585

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5220\u9664\u5de5\u7a0b\u5931\u8d25: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4531
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteGnssTransParam(ZJ)V
    .locals 7

    .line 4249
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 4251
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;

    const/16 p3, 0x1f40

    const-string/jumbo v0, "token error"

    invoke-direct {p2, p3, v0}, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4254
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4255
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4256
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "id"

    invoke-interface {v5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4258
    :try_start_0
    const-string/jumbo v2, "\u5220\u9664GNSS\u8f6c\u6362\u53c2\u6570"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$51;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$51;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Z)V

    const/16 v3, 0x426a

    const/16 v4, 0x57b

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 4280
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u5220\u9664GNSS\u8f6c\u6362\u53c2\u6570\u5931\u8d25: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4281
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p3, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/qianhe/yct/event/DeleteGnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public deletePointGroup(J)V
    .locals 10

    .line 4955
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4956
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 4960
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4961
    const-string/jumbo v1, "token"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4962
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {v8, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4964
    :try_start_0
    const-string/jumbo v5, "\u5220\u9664\u70b9\u5e93\u7ec4"

    new-instance v9, Lcom/qianhe/yct/utils/NetworkUserLoader$60;

    invoke-direct {v9, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$60;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v6, 0x426a

    const/16 v7, 0x58f

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4983
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/PointGroupResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4957
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/PointGroupResponse;

    const/16 v0, 0x1f40

    const-string/jumbo v1, "token error"

    invoke-direct {p2, v0, v1}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public deletePoints(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 5197
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 5198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5202
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5203
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5204
    const-string v0, "ids"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5206
    :try_start_0
    const-string/jumbo v3, "\u5220\u9664\u70b9"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$64;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$64;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x426a

    const/16 v5, 0x599

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5225
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/PointSyncResponse;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 5199
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/PointSyncResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs getConfig([Ljava/lang/String;)V
    .locals 8

    .line 910
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 914
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 915
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 917
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 918
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 920
    :cond_1
    const-string p1, "keys"

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :try_start_0
    const-string/jumbo v3, "\u83b7\u53d6\u914d\u7f6e"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$11;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$11;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x426b

    const/16 v5, 0x3e9

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u83b7\u53d6\u914d\u7f6e\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public getCorsExpirationTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 562
    const-string/jumbo v1, "sn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4270

    const/16 v2, 0x13

    .line 563
    invoke-direct {p0, v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 565
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 566
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 \u83b7\u53d6cors\u8fc7\u671f\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$5;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 616
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 617
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/CorsExpireEpochEvent;

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/qianhe/yct/event/CorsExpireEpochEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 618
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u83b7\u53d6cors\u8fc7\u671f\u65f6\u95f4\u5f02\u5e38\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceUniqueId()V
    .locals 8

    .line 1229
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1231
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1232
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "cpu_abi"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const-string v0, "product_brand"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const-string v0, "product_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    :try_start_0
    const-string/jumbo v3, "\u83b7\u53d6\u5f53\u524d\u8bbe\u5907ID"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$16;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$16;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x4269

    const/16 v5, 0x3f9

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6\u5f53\u524d\u8bbe\u5907ID\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1266
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524d\u8bbe\u5907ID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method

.method public getOrderRecord(Ljava/lang/String;)V
    .locals 8

    .line 746
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x2

    .line 747
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "wx_code_type"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string/jumbo v0, "wx_code"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 750
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "per_page_count"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordPage:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 753
    :cond_0
    :try_start_0
    const-string/jumbo v2, "\u8ba2\u5355\u8bb0\u5f55"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$8;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$8;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x426f

    const/16 v4, 0x1b

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    .line 804
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/OrderRecordResponse;

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/qianhe/yct/event/OrderRecordResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 805
    iput v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->orderRecordPage:I

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u67e5\u8be2\u8ba2\u5355\u8bb0\u5f55\u5931\u8d25\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getPriceList()V
    .locals 5

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 491
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "deviceSn"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4270

    const/16 v2, 0x9

    .line 492
    invoke-direct {p0, v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 494
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 495
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 \u4ef7\u683c\u5217\u8868\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$4;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 555
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/PriceListResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qianhe/yct/event/PriceListResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriceList()\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getWxGZHAppId()V
    .locals 5

    .line 423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x426f

    const/4 v2, 0x1

    .line 425
    invoke-direct {p0, v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 427
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 428
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 \u83b7\u53d6appId\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$3;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/WxAppIdResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qianhe/yct/event/WxAppIdResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWxGZHAppId()\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getWxOpenId(Ljava/lang/String;)V
    .locals 4

    .line 623
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    .line 624
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wx_code_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v1, "wx_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426f

    const/4 v2, 0x3

    .line 626
    invoke-direct {p0, v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 628
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 629
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 \u83b7\u53d6\u5fae\u4fe1\u7528\u6237openId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$6;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$6;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 676
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 677
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/WxOpenIdResponse;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/WxOpenIdResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWxOpenId()\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public isPointUploading(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadingPointLocalIds:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    .line 2841
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2842
    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 2843
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "email"

    if-nez v1, :cond_1

    .line 2844
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getSha256([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2845
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getUtcDateString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getSha256([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 2846
    const-string v2, "account"

    :cond_0
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    const-string p1, "login_key"

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2848
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    .line 2849
    const-string/jumbo v2, "telephone"

    :cond_2
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    const-string p1, "captcha"

    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    :cond_3
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "android_id"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_name"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Android "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android_version"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "cpu_abi"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    const-string p1, "product_brand"

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2857
    const-string p1, "product_model"

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    const-wide v0, 0x4197d78400000000L    # 1.0E8

    if-eqz p4, :cond_4

    .line 2858
    iget-wide v2, p4, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    goto :goto_1

    :cond_4
    move-wide v2, p1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string v2, "longitude"

    invoke-interface {v5, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_5

    .line 2859
    iget-wide v2, p4, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    goto :goto_2

    :cond_5
    move-wide v2, p1

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string v0, "latitude"

    invoke-interface {v5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_6

    .line 2860
    iget-wide p1, p4, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const-wide p3, 0x40c3880000000000L    # 10000.0

    mul-double p1, p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, p3

    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "altitude"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    :try_start_0
    const-string/jumbo v2, "\u767b\u5f55"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$37;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$37;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x4269

    const/16 v4, 0x3ed

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2917
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/LoginResponse;

    const-string v4, ""

    const-string v5, ""

    const/4 v1, -0x2

    const-string v2, ""

    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/event/LoginResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2918
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public logout(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2933
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->logout(ILjava/lang/String;)V

    return-void
.end method

.method public logout(ILjava/lang/String;)V
    .locals 9

    .line 2938
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p2

    .line 2939
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2940
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/LogoutResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2, p1}, Lcom/qianhe/yct/event/LogoutResponse;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2943
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2944
    const-string/jumbo v0, "token"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2945
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "logged_device_id"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    :try_start_0
    const-string/jumbo v4, "\u9000\u51fa\u767b\u5f55"

    new-instance v8, Lcom/qianhe/yct/utils/NetworkUserLoader$38;

    invoke-direct {v8, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$38;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;I)V

    const/16 v5, 0x4269

    const/16 v6, 0x3ef

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 2975
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/LogoutResponse;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, p1}, Lcom/qianhe/yct/event/LogoutResponse;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2976
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u9000\u51fa\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public modifyBucket(Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 9

    .line 2325
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2327
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/ModifyBucketResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3, p1}, Lcom/qianhe/yct/event/ModifyBucketResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2330
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v1

    .line 2331
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2332
    const-string/jumbo v3, "token"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    iget-wide v3, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->bucket_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "bucket_id"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "belong_uid"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string v1, "name"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    :try_start_0
    const-string v0, "params_detail"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildBucketParamsDetail(Lcom/qianhe/baselib/bean/ShovelEntity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    const-string/jumbo v0, "\u4fee\u6539\u94f2\u6597"

    invoke-direct {p0, v0, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->logBucketUploadRequest(Ljava/lang/String;Ljava/util/Map;)V

    .line 2340
    const-string/jumbo v4, "\u4fee\u6539\u94f2\u6597"

    new-instance v8, Lcom/qianhe/yct/utils/NetworkUserLoader$34;

    invoke-direct {v8, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$34;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    const/16 v5, 0x426a

    const/16 v6, 0x519

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2366
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/ModifyBucketResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/qianhe/yct/event/ModifyBucketResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4fee\u6539\u94f2\u6597\u5931\u8d25\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public modifyExcavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 10

    .line 2091
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2092
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 2093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2100
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2101
    const-string/jumbo v3, "token"

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "belong_uid"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    iget-object v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    const-string v1, "calib_params_id"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    const-string v0, "calib_params"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibrateId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "calibrate_id"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    const-string v0, "name"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    :try_start_0
    const-string v0, "calib_params_detail"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getCalibParamsDetailJson(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    const-string/jumbo v0, "\u4fee\u6539\u6316\u673a"

    invoke-direct {p0, v0, v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->logExcavatorUploadRequest(Ljava/lang/String;Ljava/util/Map;)V

    .line 2110
    const-string/jumbo v5, "\u4fee\u6539\u6316\u673a"

    new-instance v9, Lcom/qianhe/yct/utils/NetworkUserLoader$30;

    invoke-direct {v9, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$30;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    const/16 v6, 0x426a

    const/16 v7, 0x4b5

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2136
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/ModifyExcavatorResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/qianhe/yct/event/ModifyExcavatorResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4fee\u6539\u6316\u673a\u5931\u8d25\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void

    .line 2094
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/ModifyExcavatorResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3, p1}, Lcom/qianhe/yct/event/ModifyExcavatorResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ExcavatorEntity;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2095
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->version:J

    .line 2096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->updateTime:J

    .line 2097
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateExcavatorById(Lcom/qianhe/baselib/bean/ExcavatorEntity;)I

    return-void
.end method

.method public modifyGnssEngineering(JLjava/lang/String;JLorg/json/JSONObject;I)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 4556
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 4557
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v7

    .line 4558
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    goto/16 :goto_0

    .line 4563
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 4564
    iget-wide v11, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->lastModifyEngineeringId:J

    cmp-long v13, v2, v11

    if-nez v13, :cond_1

    iget v11, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->lastModifyEngineeringCurrentUsage:I

    if-ne v5, v11, :cond_1

    iget-wide v11, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->lastModifyEngineeringElapsedMs:J

    sub-long v11, v9, v11

    const-wide/16 v13, 0x7d0

    cmp-long v15, v11, v13

    if-gez v15, :cond_1

    .line 4565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4fee\u6539\u5de5\u7a0b\u53bb\u91cd\u8df3\u8fc7: id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", is_current="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 4568
    :cond_1
    iput-wide v2, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->lastModifyEngineeringId:J

    .line 4569
    iput v5, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->lastModifyEngineeringCurrentUsage:I

    .line 4570
    iput-wide v9, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->lastModifyEngineeringElapsedMs:J

    .line 4571
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 4572
    const-string/jumbo v10, "token"

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4573
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "belong_uid"

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4574
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 4575
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4576
    const-string v2, "name"

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4578
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "is_current"

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4579
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v2, "trans_param_id"

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 4581
    const-string v0, "projection"

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4584
    :cond_3
    :try_start_0
    const-string/jumbo v0, "\u4fee\u6539\u5de5\u7a0b"

    new-instance v2, Lcom/qianhe/yct/utils/NetworkUserLoader$56;

    invoke-direct {v2, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader$56;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x426a

    const/16 v4, 0x587

    move-object/from16 p2, v0

    move-object/from16 p1, v1

    move-object/from16 p6, v2

    move-object/from16 p5, v9

    const/16 p3, 0x426a

    const/16 p4, 0x587

    invoke-direct/range {p1 .. p6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4fee\u6539\u5de5\u7a0b\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4607
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4559
    :cond_4
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public modifyGnssEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 13

    if-eqz p1, :cond_4

    .line 4536
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_2

    .line 4540
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4541
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v4

    .line 4542
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    goto :goto_1

    .line 4550
    :cond_1
    iget v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->conversionParamsType:I

    if-lez v0, :cond_2

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->transParamId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    move-wide v9, v0

    goto :goto_0

    :cond_2
    move-wide v9, v2

    .line 4551
    :goto_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildProjectionJson(Lcom/qianhe/baselib/bean/EngineeringEntity;)Lorg/json/JSONObject;

    move-result-object v11

    .line 4552
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    iget-object v8, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    iget v12, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssEngineering(JLjava/lang/String;JLorg/json/JSONObject;I)V

    return-void

    .line 4544
    :cond_3
    :goto_1
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->version:J

    .line 4545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->updateTime:J

    .line 4546
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEngineering(Lcom/qianhe/baselib/bean/EngineeringEntity;)I

    .line 4547
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4537
    :cond_4
    :goto_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/CreateEngineeringResponse;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/CreateEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public modifyGnssTransParam(JLjava/lang/String;Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 7

    .line 4286
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4288
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/16 p3, 0x1f40

    const-string/jumbo p4, "token error"

    invoke-direct {p2, p3, p4}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4291
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4292
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4293
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 4294
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4295
    const-string p1, "name"

    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    .line 4297
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    .line 4298
    const-string p1, "param_type"

    invoke-interface {v5, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p5, :cond_3

    .line 4301
    const-string p1, "params_detail"

    invoke-interface {v5, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p6, :cond_4

    .line 4304
    const-string p1, "control_points"

    invoke-interface {v5, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4307
    :cond_4
    :try_start_0
    const-string/jumbo v2, "\u4fee\u6539GNSS\u8f6c\u6362\u53c2\u6570"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$52;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$52;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x426a

    const/16 v4, 0x57d

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u4fee\u6539GNSS\u8f6c\u6362\u53c2\u6570\u5931\u8d25: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4330
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/4 p4, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public modifyGnssTransParam(Lcom/qianhe/baselib/bean/GnssTransParamEntity;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 4239
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_2

    .line 4244
    :cond_0
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->getControlPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->buildControlPointsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 4245
    :goto_1
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->transParamId:J

    iget-object v4, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->name:Ljava/lang/String;

    iget v0, p1, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->paramType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/qianhe/baselib/bean/GnssTransParamEntity;->buildParamsDetailJsonObject()Lorg/json/JSONObject;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyGnssTransParam(JLjava/lang/String;Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    return-void

    .line 4240
    :cond_2
    :goto_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/GnssTransParamResponse;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/GnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public modifyName(Ljava/lang/String;)V
    .locals 9

    .line 1779
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1780
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1781
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/ModifyResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/ModifyResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1784
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1785
    const-string/jumbo v1, "token"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    const-string v0, "name"

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    :try_start_0
    const-string/jumbo v4, "\u4fee\u6539\u59d3\u540d"

    new-instance v8, Lcom/qianhe/yct/utils/NetworkUserLoader$24;

    invoke-direct {v8, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$24;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v5, 0x4269

    const/16 v6, 0x3f1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1813
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/ModifyResponse;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/ModifyResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4fee\u6539\u59d3\u540d\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public modifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1861
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1862
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1863
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/ModifyResponse;

    const/16 p3, 0x1f40

    const-string/jumbo v0, "token error"

    invoke-direct {p2, p3, v0}, Lcom/qianhe/yct/event/ModifyResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1866
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1867
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    const-string v0, "new_password"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    const-string p1, "old_password"

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    const-string p1, "captcha"

    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    :try_start_0
    const-string/jumbo v2, "\u4fee\u6539\u5bc6\u7801"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$26;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$26;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x4269

    const/16 v4, 0x3f3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1897
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/ModifyResponse;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-direct {p3, v0, v1}, Lcom/qianhe/yct/event/ModifyResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1898
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u4fee\u6539\u5bc6\u7801\u5931\u8d25\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public modifyPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1819
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1820
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1821
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/ModifyResponse;

    const/16 p3, 0x1f40

    const-string/jumbo v0, "token error"

    invoke-direct {p2, p3, v0}, Lcom/qianhe/yct/event/ModifyResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1824
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1825
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    const-string v0, "new_telephone"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    const-string p1, "password"

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    const-string p1, "captcha"

    invoke-interface {v5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    :try_start_0
    const-string/jumbo v2, "\u4fee\u6539\u624b\u673a\u53f7"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$25;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$25;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x4269

    const/16 v4, 0x3f5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1855
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/ModifyResponse;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-direct {p3, v0, v1}, Lcom/qianhe/yct/event/ModifyResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1856
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u4fee\u6539\u624b\u673a\u53f7\u5931\u8d25\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public modifyPoint(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 12

    .line 5230
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 5231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto/16 :goto_4

    .line 5237
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5238
    const-string/jumbo v1, "token"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5239
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->pointId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5240
    const-string v0, "name"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5241
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->createTime:J

    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "collected_at"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5242
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lat:D

    :goto_1
    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "latitude"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5243
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticLon:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->lon:D

    :goto_2
    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundLonLat(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5244
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->geodeticElev:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    :goto_3
    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "altitude"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5245
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->east:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5246
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->north:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "y"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5247
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->elev:D

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/PointLibCoordUtils;->roundElev(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "z"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5248
    iget v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->quality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "solution"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5249
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->hdop:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "hdop"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5250
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointlibEntity;->vdop:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "vdop"

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5252
    :try_start_0
    const-string/jumbo v7, "\u4fee\u6539\u70b9"

    new-instance v11, Lcom/qianhe/yct/utils/NetworkUserLoader$65;

    invoke-direct {v11, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$65;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    const/16 v8, 0x426a

    const/16 v9, 0x59b

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5277
    new-instance v1, Lcom/qianhe/yct/event/PointSyncResponse;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5278
    iput-object p1, v1, Lcom/qianhe/yct/event/PointSyncResponse;->entity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 5279
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 5232
    :cond_5
    :goto_4
    new-instance v0, Lcom/qianhe/yct/event/PointSyncResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/PointSyncResponse;-><init>(ILjava/lang/String;)V

    .line 5233
    iput-object p1, v0, Lcom/qianhe/yct/event/PointSyncResponse;->entity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 5234
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public modifyPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 10

    .line 4988
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4989
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    iget-wide v4, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 4996
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4997
    const-string/jumbo v1, "token"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4998
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4999
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "name"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5000
    :cond_1
    iget-object v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->remark:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "remark"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5001
    :cond_2
    invoke-direct {p0, v8, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putPointGroupBelongEngineering(Ljava/util/Map;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 5003
    :try_start_0
    const-string/jumbo v5, "\u4fee\u6539\u70b9\u5e93\u7ec4"

    new-instance v9, Lcom/qianhe/yct/utils/NetworkUserLoader$61;

    invoke-direct {v9, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$61;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    const/16 v6, 0x426a

    const/16 v7, 0x591

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5031
    new-instance v1, Lcom/qianhe/yct/event/PointGroupResponse;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 5032
    iput-object p1, v1, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 5033
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    iput-wide v2, v1, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 5034
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4990
    :cond_3
    :goto_0
    new-instance v0, Lcom/qianhe/yct/event/PointGroupResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v4, "token error"

    invoke-direct {v0, v1, v4}, Lcom/qianhe/yct/event/PointGroupResponse;-><init>(ILjava/lang/String;)V

    .line 4991
    iput-object p1, v0, Lcom/qianhe/yct/event/PointGroupResponse;->entity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz p1, :cond_4

    .line 4992
    iget-wide v2, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    :cond_4
    iput-wide v2, v0, Lcom/qianhe/yct/event/PointGroupResponse;->groupLocalId:J

    .line 4993
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 8

    .line 1362
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/ModifyProjectResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2, p2}, Lcom/qianhe/yct/event/ModifyProjectResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1365
    iget-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->version:J

    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 1367
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    return-void

    .line 1370
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/qianhe/yct/db/DatabaseManager;->refreshProjectForUpload(Lcom/qianhe/baselib/base/BaseProEntity;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object p2

    .line 1371
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1372
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    iget-object v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iget v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    iget-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "project_id"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    if-eqz p1, :cond_1

    .line 1376
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v6, "longitude"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 1377
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 1378
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "altitude"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    invoke-direct {p0, v5, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putProjectBelongEngineeringId(Ljava/util/Map;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 1381
    :try_start_0
    const-string p1, "details"

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string/jumbo v2, "\u4fee\u6539\u9879\u76ee"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$19;

    invoke-direct {v6, p0, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$19;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/base/BaseProEntity;)V

    const/16 v3, 0x426a

    const/16 v4, 0x3ed

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1408
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/ModifyProjectResponse;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, p2}, Lcom/qianhe/yct/event/ModifyProjectResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u4fee\u6539\u9879\u76ee\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public modifyShare(Lcom/qianhe/baselib/bean/ShareEntity;Ljava/lang/String;Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/ShareEntity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1187
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1188
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShareEntity;->shareId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "share_id"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string v0, "name"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 1192
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1193
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_0

    .line 1195
    :cond_0
    const-string p3, "project_ids"

    invoke-interface {v5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "expire_epoch"

    invoke-interface {v5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    :try_start_0
    const-string/jumbo v2, "\u4fee\u6539\u5206\u4eab"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$15;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$15;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Lcom/qianhe/baselib/bean/ShareEntity;)V

    const/16 v3, 0x426a

    const/16 v4, 0x451

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 1223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    new-instance p4, Lcom/qianhe/yct/event/ModifyShareResponse;

    const/4 p5, -0x1

    const-string v0, ""

    invoke-direct {p4, p5, v0, p1}, Lcom/qianhe/yct/event/ModifyShareResponse;-><init>(ILjava/lang/String;Lcom/qianhe/baselib/bean/ShareEntity;)V

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u4fee\u6539\u5206\u4eab\u5931\u8d25\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCalibPacketState(Ljava/lang/String;Ljava/lang/String;ILcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 8

    .line 3722
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3723
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3724
    const-string/jumbo v0, "token"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    .line 3726
    const-string p2, ""

    :cond_1
    const-string/jumbo p1, "uuid"

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3727
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "upload_state"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3728
    const-string p1, "17020,1003"

    .line 3729
    invoke-direct {p0, p1, p4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->wrapCalibResponseLog(Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3728
    const-string/jumbo v1, "\u901a\u77e5\u6821\u51c6\u6570\u636e\u5305\u4e0a\u4f20\u7ed3\u679c"

    const/16 v2, 0x427c

    const/16 v3, 0x3eb

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;ZZ)V

    return-void
.end method

.method public notifyUsedDevice(Ljava/lang/String;)V
    .locals 9

    .line 1271
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "deviceSn"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 1273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/db/UserSession;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 1277
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1278
    const-string/jumbo v3, "token"

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const-string/jumbo v1, "sn"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string v0, "app_version"

    const-string v1, "2.0.2609.109"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const-string v0, "fmw_version"

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string p1, "device_id"

    invoke-interface {v7, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    :try_start_0
    const-string/jumbo v4, "\u4e0a\u4f20\u8bbe\u5907\u4fe1\u606f"

    new-instance v8, Lcom/qianhe/yct/utils/NetworkUserLoader$17;

    invoke-direct {v8, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$17;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v5, 0x4269

    const/16 v6, 0x3f7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4e0a\u4f20\u8bbe\u5907\u4fe1\u606f\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public putFileToOss(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 3755
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->putFileToOss(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;I)V

    return-void
.end method

.method public queryBucket()V
    .locals 8

    .line 2372
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2373
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2375
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/QueryBucketResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/QueryBucketResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 2378
    :cond_0
    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 2380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "per_page_count"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketPage:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2383
    :cond_1
    :try_start_0
    const-string/jumbo v2, "\u67e5\u8be2\u94f2\u6597"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$35;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$35;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x426a

    const/16 v4, 0x51b

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 2448
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryBucketResponse;

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/qianhe/yct/event/QueryBucketResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2449
    iput v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->bucketPage:I

    .line 2450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u67e5\u8be2\u94f2\u6597\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public queryEngineeringByUuid(Ljava/lang/String;)V
    .locals 10

    .line 4664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    .line 4680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 4665
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    const-string v3, "engineering_uuid empty"

    invoke-direct {v2, v1, v3, p1}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4668
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4669
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4670
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3, p1}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 4673
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4674
    const-string/jumbo v3, "token"

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4676
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4677
    const-string/jumbo v3, "uuids"

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "ids"

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4680
    const-string v0, "ellipsoid_type"

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4681
    const-string v0, "projection_type"

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4682
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "beg_epoch"

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4683
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "end_epoch"

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4684
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "page"

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 4685
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "per_page_count"

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4687
    :try_start_0
    const-string/jumbo v5, "\u67e5\u8be2\u5de5\u7a0b"

    new-instance v9, Lcom/qianhe/yct/utils/NetworkUserLoader$57;

    invoke-direct {v9, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$57;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;)V

    const/16 v6, 0x426a

    const/16 v7, 0x589

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryEngineeringByUuid \u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4721
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryEngineeringResponse;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0, p1}, Lcom/qianhe/yct/event/QueryEngineeringResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public queryExcavator()V
    .locals 8

    .line 2142
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2143
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2144
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/db/UserSession;->getUserId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    .line 2145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_1

    .line 2149
    :cond_1
    const-string/jumbo v3, "token"

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "belong_uid"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 2155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "per_page_count"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorPage:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2158
    :cond_2
    :try_start_0
    const-string/jumbo v2, "\u67e5\u8be2\u6316\u673a"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$31;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$31;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x426a

    const/16 v4, 0x4b7

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 2222
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryExcacatorResponse;

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/qianhe/yct/event/QueryExcacatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2223
    iput v7, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->excavatorPage:I

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u67e5\u8be2\u6316\u673a\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void

    .line 2146
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/QueryExcacatorResponse;

    const/16 v3, 0x1f40

    const-string/jumbo v4, "token error"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/yct/event/QueryExcacatorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public queryGnssEngineering(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "JJII)V"
        }
    .end annotation

    .line 4726
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4727
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4728
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;

    const/16 p3, 0x1f40

    const-string/jumbo p4, "token error"

    invoke-direct {p2, p3, p4}, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-wide v1, p8

    .line 4731
    new-instance p9, Ljava/util/HashMap;

    invoke-direct {p9}, Ljava/util/HashMap;-><init>()V

    .line 4732
    const-string/jumbo p8, "token"

    invoke-interface {p9, p8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4733
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p8

    if-nez p8, :cond_1

    .line 4734
    const-string p8, "ids"

    invoke-interface {p9, p8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    .line 4736
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4737
    const-string/jumbo p1, "uuids"

    invoke-interface {p9, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    .line 4740
    const-string p1, "name"

    invoke-interface {p9, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    .line 4743
    const-string p1, "ellipsoid_type"

    invoke-interface {p9, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p5, :cond_5

    .line 4746
    const-string p1, "projection_type"

    invoke-interface {p9, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-wide/16 p1, 0x0

    cmp-long p3, p6, p1

    if-lez p3, :cond_6

    .line 4749
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "beg_epoch"

    invoke-interface {p9, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    cmp-long p3, v1, p1

    if-lez p3, :cond_7

    .line 4752
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "end_epoch"

    invoke-interface {p9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4754
    :cond_7
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "page"

    invoke-interface {p9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4755
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "per_page_count"

    invoke-interface {p9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4757
    :try_start_0
    const-string/jumbo p6, "\u67e5\u8be2\u5de5\u7a0b"

    new-instance p10, Lcom/qianhe/yct/utils/NetworkUserLoader$58;

    invoke-direct {p10, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$58;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 p7, 0x426a

    const/16 p8, 0x589

    move-object p5, p0

    invoke-direct/range {p5 .. p10}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4789
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u67e5\u8be2\u5de5\u7a0b\u5931\u8d25: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4790
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;

    const/4 p4, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/qianhe/yct/event/QueryGnssEngineeringResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public queryGnssTransParam(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;JJII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "JJII)V"
        }
    .end annotation

    .line 4335
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4337
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;

    const/16 p3, 0x1f40

    const-string/jumbo p4, "token error"

    invoke-direct {p2, p3, p4}, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v1, p9

    .line 4340
    new-instance p9, Ljava/util/HashMap;

    invoke-direct {p9}, Ljava/util/HashMap;-><init>()V

    .line 4341
    const-string/jumbo v2, "token"

    invoke-interface {p9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4342
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4343
    const-string v0, "ids"

    invoke-interface {p9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    .line 4345
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4346
    const-string/jumbo p1, "uuids"

    invoke-interface {p9, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    .line 4349
    const-string p1, "name"

    invoke-interface {p9, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    .line 4352
    const-string p1, "param_type"

    invoke-interface {p9, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-wide/16 p1, 0x0

    cmp-long p3, p5, p1

    if-lez p3, :cond_5

    .line 4355
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "beg_epoch"

    invoke-interface {p9, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    cmp-long p3, p7, p1

    if-lez p3, :cond_6

    .line 4358
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "end_epoch"

    invoke-interface {p9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4360
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "page"

    invoke-interface {p9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4361
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "per_page_count"

    invoke-interface {p9, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    :try_start_0
    const-string/jumbo p6, "\u67e5\u8be2GNSS\u8f6c\u6362\u53c2\u6570"

    new-instance p10, Lcom/qianhe/yct/utils/NetworkUserLoader$53;

    invoke-direct {p10, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$53;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 p7, 0x426a

    const/16 p8, 0x57f

    move-object p5, p0

    invoke-direct/range {p5 .. p10}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4408
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u67e5\u8be2GNSS\u8f6c\u6362\u53c2\u6570\u5931\u8d25: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 4409
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;

    const/4 p4, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/qianhe/yct/event/QueryGnssTransParamResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public queryNeedUploadLog(Landroid/content/Context;)V
    .locals 7

    .line 2982
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->isUploadFileToServer:Z

    if-eqz v0, :cond_0

    .line 2983
    const-string/jumbo p1, "\u6b63\u5728\u4e0a\u4f20\u65e5\u5fd7\u6587\u4ef6\uff0c\u4e0d\u67e5\u8be2\u4efb\u52a1"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 2986
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 2987
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2988
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "token"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2990
    iget-object v1, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "deviceSn"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2991
    iget-object v2, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mSp:Landroid/content/SharedPreferences;

    const-string v4, "base_deviceSn"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2992
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2993
    const-string/jumbo p1, "\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25\uff1adevice_id\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 2996
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2997
    const-string/jumbo p1, "\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25\uff1a\u6ca1\u6709\u8fde\u63a5\u8bbe\u5907\u8bb0\u5f55-device_sn\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    .line 3000
    :cond_3
    const-string v3, "device_id"

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    const-string v0, "device_sn"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3003
    :try_start_0
    const-string/jumbo v2, "\u67e5\u8be2\u65e5\u5fd7\u4e0a\u4f20\u4efb\u52a1"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$39;

    invoke-direct {v6, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$39;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Landroid/content/Context;)V

    const/16 v3, 0x426c

    const/16 v4, 0x3e9

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 3077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u65e5\u5fd7\u4e0a\u4f20\u4efb\u52a1\u67e5\u8be2\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public queryPointGroup(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJII)V"
        }
    .end annotation

    .line 5039
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 5040
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5041
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/QueryPointGroupResponse;

    const/16 v2, 0x1f40

    const-string/jumbo v3, "token error"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/QueryPointGroupResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 5044
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5045
    const-string/jumbo v2, "token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    .line 5046
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v2, "ids"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_1

    .line 5047
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const-string/jumbo v2, "uuids"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5048
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "name"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5049
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "beg_epoch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5050
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "end_epoch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5051
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "page"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5052
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "per_page_count"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5054
    :try_start_0
    const-string/jumbo v0, "\u67e5\u8be2\u70b9\u5e93\u7ec4"

    new-instance v2, Lcom/qianhe/yct/utils/NetworkUserLoader$62;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$62;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x426a

    const/16 v5, 0x593    # 2.0E-42f

    move-object p1, p0

    move-object p2, v0

    move-object p5, v1

    move-object p6, v2

    const/16 p3, 0x426a

    const/16 p4, 0x593    # 2.0E-42f

    invoke-direct/range {p1 .. p6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5098
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/event/QueryPointGroupResponse;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/qianhe/yct/event/QueryPointGroupResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public queryPoints(JLjava/util/List;Ljava/lang/String;JJII)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "JJII)V"
        }
    .end annotation

    .line 5284
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 5285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5286
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/QueryPointResponse;

    const/16 p3, 0x1f40

    const-string/jumbo p4, "token error"

    invoke-direct {p2, p3, p4}, Lcom/qianhe/yct/event/QueryPointResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v1, p9

    .line 5289
    new-instance p9, Ljava/util/HashMap;

    invoke-direct {p9}, Ljava/util/HashMap;-><init>()V

    .line 5290
    const-string/jumbo v2, "token"

    invoke-interface {p9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 5291
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "group_id"

    invoke-interface {p9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 5292
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v0, "ids"

    invoke-interface {p9, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5293
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "name"

    invoke-interface {p9, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5294
    :cond_3
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "beg_collected_at"

    invoke-interface {p9, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5295
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "end_collected_at"

    invoke-interface {p9, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "page"

    invoke-interface {p9, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5297
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "per_page_count"

    invoke-interface {p9, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5299
    :try_start_0
    const-string/jumbo p6, "\u67e5\u8be2\u70b9"

    new-instance p10, Lcom/qianhe/yct/utils/NetworkUserLoader$66;

    invoke-direct {p10, p0, p1, p2}, Lcom/qianhe/yct/utils/NetworkUserLoader$66;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;J)V

    const/16 p7, 0x426a

    const/16 p8, 0x59d

    move-object p5, p0

    invoke-direct/range {p5 .. p10}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 5348
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/QueryPointResponse;

    const/4 p4, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/qianhe/yct/event/QueryPointResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public queryProjectByType(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1446
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->queryProjectByType(Ljava/lang/Integer;Z)V

    return-void
.end method

.method public queryProjectByType(Ljava/lang/Integer;Z)V
    .locals 14

    move/from16 v0, p2

    .line 1453
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 1454
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1455
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/QueryProjectResponse;

    const/16 v3, 0x1f40

    const-string/jumbo v4, "token error"

    invoke-direct {v2, v3, v4}, Lcom/qianhe/yct/event/QueryProjectResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1458
    :cond_0
    iget v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proPage:I

    const-wide/16 v5, 0x0

    const/4 v10, 0x1

    if-ne v4, v10, :cond_3

    .line 1459
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectFilterByEngineering:Z

    .line 1460
    iput-wide v5, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectBelongEngineeringId:J

    .line 1461
    const-string v4, ""

    iput-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectEngineeringUuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1463
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->queryCurrentEngineering()Lcom/qianhe/baselib/bean/EngineeringEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1465
    iget-wide v7, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringId:J

    iput-wide v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectBelongEngineeringId:J

    .line 1466
    iget-object v0, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->engineeringUuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v4, v0

    :cond_1
    iput-object v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectEngineeringUuid:Ljava/lang/String;

    .line 1469
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->entityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1471
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1472
    const-string/jumbo v0, "token"

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 1473
    const-string/jumbo v0, "type"

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    :cond_4
    iget-wide v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectBelongEngineeringId:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    .line 1475
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "belong_engineering_id"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectEngineeringUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1478
    const-string v0, "engineering_uuid"

    iget-object v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectEngineeringUuid:Ljava/lang/String;

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    :cond_6
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "page"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 1481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "per_page_count"

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    iget-boolean v3, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectFilterByEngineering:Z

    .line 1484
    iget-wide v4, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectBelongEngineeringId:J

    .line 1485
    iget-object v6, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->activeQueryProjectEngineeringUuid:Ljava/lang/String;

    .line 1487
    :try_start_0
    const-string/jumbo v8, "\u67e5\u8be2\u9879\u76ee"

    new-instance v0, Lcom/qianhe/yct/utils/NetworkUserLoader$21;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader$21;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/Integer;ZJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v9, v3

    move-object v11, v6

    move-object v2, v8

    move-wide v12, v4

    move-object v5, v7

    move-wide v7, v12

    const/16 v3, 0x426a

    const/16 v4, 0x3ef

    move-object v1, p0

    move-object v6, v0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v9, v3

    move-wide v7, v4

    move-object v11, v6

    .line 1552
    :goto_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v2, -0x1

    move-object v1, p0

    move-object v5, p1

    move v6, v9

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/qianhe/yct/utils/NetworkUserLoader;->postQueryProjectResponse(ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;ZJLjava/lang/String;)V

    .line 1553
    iput v10, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proPage:I

    .line 1554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u67e5\u8be2\u9879\u76ee\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public varargs queryProjectByUUid([Ljava/lang/String;)V
    .locals 9

    .line 1568
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1569
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;

    const/16 v1, 0x1f40

    const-string/jumbo v2, "token error"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1573
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1574
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1575
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 1576
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1578
    :cond_1
    const-string/jumbo v2, "token"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const-string v0, "project_uuids"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proByuuidPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 1586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "per_page_count"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->proByuuidPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->entityByUuidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1589
    :cond_2
    :try_start_0
    const-string/jumbo v4, "\u67e5\u8be2\u9879\u76ee"

    new-instance v8, Lcom/qianhe/yct/utils/NetworkUserLoader$22;

    invoke-direct {v8, p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader$22;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x426a

    const/16 v6, 0x3ef

    move-object v3, p0

    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, p0

    goto :goto_1

    .line 1650
    :goto_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;

    const/4 v4, -0x1

    const-string v5, ""

    invoke-direct {v2, v4, v5}, Lcom/qianhe/yct/event/QueryProjectByUUidResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1651
    iput v1, v3, Lcom/qianhe/yct/utils/NetworkUserLoader;->proByuuidPage:I

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u67e5\u8be2\u9879\u76ee\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public queryShare(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1079
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1080
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "token"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const-string v0, "share_ids"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const-string v0, "share_uuids"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 1084
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1085
    array-length v5, p3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, p3, v7

    .line 1086
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1088
    :cond_0
    const-string v5, "codes"

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    :cond_1
    const-string v0, "name"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sharePage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "page"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    .line 1092
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "per_page_count"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    iget v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sharePage:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->shareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1095
    :cond_2
    :try_start_0
    const-string/jumbo v8, "\u67e5\u8be2\u5206\u4eab"

    new-instance v0, Lcom/qianhe/yct/utils/NetworkUserLoader$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qianhe/yct/utils/NetworkUserLoader$13;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x426a

    const/16 v4, 0x453

    move-object v1, p0

    move-object v5, v6

    move-object v2, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/qianhe/yct/event/QueryShareResponse;

    const/4 v4, -0x1

    const-string v5, ""

    invoke-direct {v3, v4, p3, v5}, Lcom/qianhe/yct/event/QueryShareResponse;-><init>(I[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1146
    iput v7, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->sharePage:I

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u67e5\u8be2\u5206\u4eab\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    sput-object v0, Lcom/qianhe/yct/utils/NetworkUserLoader;->INSTANCE:Lcom/qianhe/yct/utils/NetworkUserLoader;

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->callList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public renewCorsAccount(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    const-string v1, "pay_type"

    const-string v2, "app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v1, "payer_openid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v1, "account_name"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "price_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v1, "appid"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x426f

    const/16 v2, 0x17

    .line 690
    invoke-direct {p0, v1, v2, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->buildRequestBody(IILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 692
    :try_start_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 693
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v3, Lcom/qianhe/yct/utils/NetworkUserLoader;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42 \u8d26\u53f7\u7eed\u8d39\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/qianhe/yct/utils/NetworkUserLoader;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/NetworkUserLoader$7;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader$7;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 738
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 739
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/qianhe/yct/event/RenewCorsResponse;

    const/4 p4, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p4, p5}, Lcom/qianhe/yct/event/RenewCorsResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 740
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "renewCorsAccount()\u5f02\u5e38\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public sendCaptcha(Ljava/lang/String;)V
    .locals 7

    .line 1740
    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 1741
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    .line 1743
    const-string/jumbo v0, "telephone"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1745
    :cond_0
    const-string v0, "email"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    :goto_0
    :try_start_0
    const-string/jumbo v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    new-instance v6, Lcom/qianhe/yct/utils/NetworkUserLoader$23;

    invoke-direct {v6, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$23;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v3, 0x4269

    const/16 v4, 0x3e9

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1773
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/SendCaptchaResponse;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/SendCaptchaResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u9a8c\u8bc1\u7801\u53d1\u9001\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setConfig(Lorg/json/JSONObject;)V
    .locals 8

    .line 871
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 875
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 876
    const-string/jumbo v1, "token"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :try_start_0
    const-string v0, "configs"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string/jumbo v3, "\u8bbe\u7f6e\u914d\u7f6e"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$10;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$10;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x426b

    const/16 v5, 0x3eb

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bbe\u7f6e\u914d\u7f6e\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public syncProjectsBelongEngineering(Lcom/qianhe/baselib/bean/InsNavi;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qianhe/baselib/bean/InsNavi;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 1731
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1732
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/base/BaseProEntity;

    if-eqz v0, :cond_1

    .line 1733
    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->projectUUid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1734
    :cond_2
    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->belongEngineeringId:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    iget-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->engineeringUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1735
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public unRegisterAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1941
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1942
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1943
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/yct/event/UnregisterAccountResponse;

    const/16 v0, 0x1f40

    const-string/jumbo v1, "token error"

    invoke-direct {p2, v0, v1}, Lcom/qianhe/yct/event/UnregisterAccountResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1946
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1947
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getSha256([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1948
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getUtcDateString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getSha256([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1949
    const-string/jumbo p2, "token"

    invoke-interface {v6, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    const-string p2, "login_key"

    invoke-interface {v6, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    :try_start_0
    const-string/jumbo v3, "\u6ce8\u9500\u8d26\u53f7"

    new-instance v7, Lcom/qianhe/yct/utils/NetworkUserLoader$28;

    invoke-direct {v7, p0}, Lcom/qianhe/yct/utils/NetworkUserLoader$28;-><init>(Lcom/qianhe/yct/utils/NetworkUserLoader;)V

    const/16 v4, 0x4269

    const/16 v5, 0x3fd

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->startPostRequst(Ljava/lang/String;IILjava/util/Map;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1977
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/yct/event/UnregisterAccountResponse;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/event/UnregisterAccountResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1978
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u6ce8\u9500\u8d26\u53f7\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public uploadTodayLog(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;)V
    .locals 9

    .line 3242
    invoke-direct {p0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->beginNewLogUploadSession()I

    move-result v7

    .line 3243
    invoke-direct {p0, v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->isLogUploadSessionActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 3247
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/utils/NetworkUserLoader;->uploadTodayLogInternal(Landroid/content/Context;Ljava/lang/String;Lcom/qianhe/yct/utils/NetworkUserLoader$OnRequestCallBackListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;Lcom/qianhe/yct/utils/NetworkUserLoader$UploadProgressListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3249
    iget-object p1, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->logCompressThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 3250
    iput-object v8, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->logCompressThread:Ljava/lang/Thread;

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 3249
    iget-object p2, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->logCompressThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    if-ne p2, p3, :cond_2

    .line 3250
    iput-object v8, v1, Lcom/qianhe/yct/utils/NetworkUserLoader;->logCompressThread:Ljava/lang/Thread;

    .line 3252
    :cond_2
    throw p1
.end method
