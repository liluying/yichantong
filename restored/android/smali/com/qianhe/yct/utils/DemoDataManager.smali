.class public Lcom/qianhe/yct/utils/DemoDataManager;
.super Ljava/lang/Object;
.source "DemoDataManager.java"


# static fields
.field private static INSTANCE:Lcom/qianhe/yct/utils/DemoDataManager;


# instance fields
.field private final baseStationArray:[Ljava/lang/String;

.field private final battArray:[I

.field private final bestPost:[Ljava/lang/String;

.field private final demoExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private demoFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final gdopArray:[Ljava/lang/String;

.field private final gstArray:[Ljava/lang/String;

.field private h5proDataStatus:Ljava/lang/String;

.field private insElev:D

.field private insLat:D

.field private insLon:D

.field private quality:I

.field private final sauArray:[Ljava/lang/String;

.field private final savArray:[Ljava/lang/String;

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private final snrArray:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$msimulateBaseStation(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateBaseStation(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateBatt(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateBatt(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateBestPost(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateBestPost(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateGDOP(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateGDOP(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateGGA(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateGGA(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateGST(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateGST(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateINS(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateINS(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateRTKInfo(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateRTKInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateSAU(Lcom/qianhe/yct/utils/DemoDataManager;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateSAU(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateSAV(Lcom/qianhe/yct/utils/DemoDataManager;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateSAV(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msimulateSNR(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->simulateSNR(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    const-string v0, "#BESTPOSA,COM1,0,0.0,FINE,2384,111039.000,,,;SOL_COMPUTED,L1_INT,23.33292180,113.53989108,93.003,-6.638,WGS84,0.0214,0.0183,0.0641,\"3221\",1.0,0.0,66,65,,,,,,*52a0e4fe"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->bestPost:[Ljava/lang/String;

    .line 66
    const-string v0, "$GPSNR,1,1,33,3,18.9,,19.6,8,26.5,21.2,28.3,16,28.5,,,26,24.2,21.2,28.9,27,28.0,,30.8,28,23.1,18.6,23.7,31,27.4,20.0,,166,23.4,29.9,22.9,167,20.9,29.4,23.5,169,20.4,29.6,23.0,170,,29.2,21.3,173,,21.0,,176,24.2,29.6,20.7,179,22.3,,26.2,180,22.2,,24.0,187,24.2,,22.5,190,23.2,,25.6,196,23.7,,24.0,197,15.3,,18.2,198,,,18.6,199,25.6,,24.7,265,26.5,33.1,27.9,267,25.4,31.9,26.5,270,22.5,32.4,26.6,284,25.0,29.2,23.5,292,25.8,31.1,26.6,332,25.3,,,361,,,29.4,363,,,29.4,365,,,25.7,367,,,31.9,369,,,30.7,370,,,31.6*64"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->snrArray:[Ljava/lang/String;

    .line 70
    const-string v0, "$GPSAV,1,1,28,3,13,235,8,45,200,16,54,2,26,31,42,27,73,154,28,18,104,31,41,81,166,57,6,167,62,192,169,50,341,170,48,204,173,14,212,176,57,9,179,42,235,180,20,183,187,33,73,190,42,146,196,38,313,197,9,76,198,7,187,199,59,35,265,74,183,267,70,294,270,46,315,284,36,31,292,61,311,369,30,273,370,59,141*4C"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->savArray:[Ljava/lang/String;

    .line 74
    const-string v0, "$GPSAU,1,1,20,8,16,26,27,28,31,166,167,169,176,179,180,187,190,196,199,265,267,270,292*49"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->sauArray:[Ljava/lang/String;

    .line 77
    const-string v0, "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.496,5371105.716,2511967.396,,,\"3221\"*aa353018"

    const-string v1, "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.497,5371105.717,2511967.397,,,\"3221\"*aa353018"

    const-string v2, "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.493,5371105.713,2511967.393,,,\"3221\"*aa353018"

    const-string v3, "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.494,5371104.714,2511967.394,,,\"3221\"*aa353018"

    const-string v4, "#REFSTATIONA,COM1,0,0.0,FINE,2381,100111.000,,,;00000000,-2340891.495,5371105.715,2511967.395,,,\"3221\"*aa353018"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->baseStationArray:[Ljava/lang/String;

    .line 84
    const-string v0, "0.0350,0.0,0.0,0.0,0.0261,0.0184,0.0275*5E"

    const-string v1, "0.0350,0.0,0.0,0.0,0.0179,0.0134,0.0195*5E"

    const-string v2, "0.0350,0.0,0.0,0.0,0.0219,0.0224,0.0105*5E"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->gstArray:[Ljava/lang/String;

    .line 89
    const-string v0, "$GPDOP,025425.00,1.3,0.6,0.8*44"

    const-string v1, "$GPDOP,025425.00,1.2,0.5,0.7*44"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->gdopArray:[Ljava/lang/String;

    const/16 v0, 0x50

    .line 94
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->battArray:[I

    const/4 v0, 0x4

    .line 97
    iput v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->quality:I

    .line 98
    const-string v0, "1835010"

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->h5proDataStatus:Ljava/lang/String;

    const-wide v0, 0x405c628be47a3d89L    # 113.53978836

    .line 100
    iput-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    const-wide v0, 0x4037554423707284L    # 23.33307096

    .line 101
    iput-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    const-wide v0, 0x40543e76c8b43958L    # 80.976

    .line 102
    iput-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    return-void
.end method

.method private getGGAArray()[Ljava/lang/String;
    .locals 8

    .line 331
    iget-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qianhe/baselib/utils/parser/GGAParser;->dmToDdm(DZ)Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-wide v1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/qianhe/baselib/utils/parser/GGAParser;->dmToDdm(DZ)Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-wide v2, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    .line 334
    :goto_0
    iget-wide v6, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    cmpl-double v3, v6, v4

    if-ltz v3, :cond_1

    const-string v3, "E"

    goto :goto_1

    :cond_1
    const-string v3, "W"

    .line 335
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->quality:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",50,0.5,93.9210,M,6.6385,M,2.1,3221*4B"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getINSArray(Z)[Ljava/lang/String;
    .locals 8

    .line 319
    const-string v0, "*4D"

    const-string v1, ",0.0274,-0.0082,4.1403,0.0765,0.0196575,0.00327582,0.327582,0,0,0,37.97,"

    const-string v2, "$INS.NAVI,100228.00,"

    const-string v3, ","

    if-eqz p1, :cond_0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->h5proDataStatus:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/qianhe/yct/utils/DemoDataManager;
    .locals 2

    const-class v0, Lcom/qianhe/yct/utils/DemoDataManager;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/qianhe/yct/utils/DemoDataManager;->INSTANCE:Lcom/qianhe/yct/utils/DemoDataManager;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lcom/qianhe/yct/utils/DemoDataManager;

    invoke-direct {v1}, Lcom/qianhe/yct/utils/DemoDataManager;-><init>()V

    sput-object v1, Lcom/qianhe/yct/utils/DemoDataManager;->INSTANCE:Lcom/qianhe/yct/utils/DemoDataManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 154
    :cond_0
    :goto_0
    sget-object v1, Lcom/qianhe/yct/utils/DemoDataManager;->INSTANCE:Lcom/qianhe/yct/utils/DemoDataManager;
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

.method private simulateBaseStation(I)V
    .locals 1

    .line 200
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->baseStationArray:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/parser/RefstationParser;->parser(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/BaseStationEntity;

    return-void
.end method

.method private simulateBatt(I)V
    .locals 3

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/Batt;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v2, p0, Lcom/qianhe/yct/utils/DemoDataManager;->battArray:[I

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomInt([I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/event/Batt;-><init>(Lcom/qianhe/baselib/enums/DeviceType;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 231
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;

    const-string v2, "#GET,POWER.SOURCE,BATTERY*47"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/event/PowerSourceEvent;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private simulateBestPost(I)V
    .locals 1

    .line 240
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->bestPost:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/parser/BestPosParser;->parse(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/BestPosEntity;

    return-void
.end method

.method private simulateGDOP(I)V
    .locals 1

    .line 191
    sget-object p1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->gdopArray:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/baselib/utils/parser/GPDOPParser;->parse(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GPDOPEntity;

    return-void
.end method

.method private simulateGGA(I)V
    .locals 1

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "$GPGGA,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/yct/utils/DemoDataManager;->getUtcTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qianhe/yct/utils/DemoDataManager;->getGGAArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, p1}, Lcom/qianhe/baselib/utils/parser/GGAParser;->parseGGA(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GGAEntity;

    return-void
.end method

.method private simulateGST(I)V
    .locals 1

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "$GPGST,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qianhe/yct/utils/DemoDataManager;->getUtcTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->gstArray:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, p1}, Lcom/qianhe/baselib/utils/parser/GSTParser;->parse(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/GSTEntity;

    return-void
.end method

.method private simulateINS(I)V
    .locals 7

    .line 221
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v3, -0x3f600000    # -5.0f

    const/high16 v4, -0x3f600000    # -5.0f

    invoke-direct/range {v1 .. v6}, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;-><init>(Lcom/qianhe/baselib/enums/DeviceType;FFFF)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    invoke-direct {p0, v0}, Lcom/qianhe/yct/utils/DemoDataManager;->getINSArray(Z)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/qianhe/baselib/utils/parser/INSParser;->parser(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method private simulateRTKInfo(I)V
    .locals 5

    .line 214
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/Serial;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "W54206161007895"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/event/Serial;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 215
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/RtkInfo;

    const-string v2, "1.15.2508.83"

    const-string v3, ""

    const-string v4, "1.1.250418.250424"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/qianhe/rtkclientlib/event/RtkInfo;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/GnssInfo;

    const-string v2, "V7.82_8EF97A_T"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/event/GnssInfo;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/Expiredate;

    const-string v2, "2088-08-08"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/rtkclientlib/event/Expiredate;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private simulateSAU(IJ)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->sauArray:[Ljava/lang/String;

    array-length p1, p1

    int-to-long v0, p1

    rem-long/2addr p2, v0

    .line 210
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;

    iget-object v1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->sauArray:[Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p3}, Lcom/qianhe/yct/utils/DemoDataManager;->getQueueString([Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/qianhe/rtkclientlib/event/SauPackageEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private simulateSAV(IJ)V
    .locals 2

    .line 204
    iget-object p1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->savArray:[Ljava/lang/String;

    array-length p1, p1

    int-to-long v0, p1

    rem-long/2addr p2, v0

    .line 205
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;

    iget-object v1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->savArray:[Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p3}, Lcom/qianhe/yct/utils/DemoDataManager;->getQueueString([Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/qianhe/rtkclientlib/event/SavPackageEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private simulateSNR(I)V
    .locals 2

    .line 226
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;

    iget-object v1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->snrArray:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getRandomString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qianhe/rtkclientlib/event/SNRPackageEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private toDisplayGeodetic()[D
    .locals 9

    const/4 v0, 0x3

    .line 132
    new-array v8, v0, [D

    .line 133
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    iget-wide v4, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    iget-wide v6, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->geoToAlignedGeodetic(DDD[D)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v8

    .line 136
    :cond_0
    iget-wide v1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    iget-wide v3, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    iget-wide v5, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    new-array v0, v0, [D

    const/4 v7, 0x0

    aput-wide v1, v0, v7

    const/4 v1, 0x1

    aput-wide v3, v0, v1

    const/4 v1, 0x2

    aput-wide v5, v0, v1

    return-object v0
.end method


# virtual methods
.method public getGeodeticElev()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    return-wide v0
.end method

.method public getGeodeticLat()D
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    return-wide v0
.end method

.method public getGeodeticLon()D
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    return-wide v0
.end method

.method public getH5proDataStatus()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->h5proDataStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getInsElev()D
    .locals 3

    .line 116
    invoke-direct {p0}, Lcom/qianhe/yct/utils/DemoDataManager;->toDisplayGeodetic()[D

    move-result-object v0

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getInsLat()D
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/qianhe/yct/utils/DemoDataManager;->toDisplayGeodetic()[D

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getInsLon()D
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/qianhe/yct/utils/DemoDataManager;->toDisplayGeodetic()[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getQuality()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->quality:I

    return v0
.end method

.method public getQueueString([Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 263
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p3, p2

    .line 267
    aget-object p1, p1, p3

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRandomInt([I)I
    .locals 2

    if-eqz p1, :cond_1

    .line 271
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 277
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 279
    aget p1, p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRandomString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 251
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 257
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 259
    aget-object p1, p1, v0

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUtcTime()Ljava/lang/String;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 285
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 286
    iget-object v1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/DemoDataManager;->stopDemoExecutor()V

    .line 342
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 343
    sput-object v0, Lcom/qianhe/yct/utils/DemoDataManager;->INSTANCE:Lcom/qianhe/yct/utils/DemoDataManager;

    return-void
.end method

.method public setH5ProDataStatus(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->h5proDataStatus:Ljava/lang/String;

    return-void
.end method

.method public setH5Type(I)V
    .locals 4

    .line 291
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/application/YCTApplication;->setIsH5ProDemo(Z)V

    .line 292
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qianhe/yct/utils/DemoDataManager$2;

    invoke-direct {v1, p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager$2;-><init>(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setINSCoords(DDD)V
    .locals 0

    .line 305
    iput-wide p1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLon:D

    .line 306
    iput-wide p3, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insLat:D

    .line 307
    iput-wide p5, p0, Lcom/qianhe/yct/utils/DemoDataManager;->insElev:D

    return-void
.end method

.method public setSolution(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->quality:I

    return-void
.end method

.method public startDemoExtcutor(I)V
    .locals 10

    .line 159
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->setH5Type(I)V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmmss.SS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 162
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    new-instance v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v3, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 164
    iget-object v3, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/qianhe/yct/utils/DemoDataManager$1;

    invoke-direct {v4, p0, p1}, Lcom/qianhe/yct/utils/DemoDataManager$1;-><init>(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    const-wide/16 v7, 0xc8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public stopDemoExecutor()V
    .locals 4

    .line 244
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;

    new-instance v2, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;

    sget-object v3, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->getState()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/qianhe/yct/event/BluetoothConnectStateEvent;-><init>(Lcom/qianhe/rtkclientlib/bean/MyBluetoothDevice;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/ntripclientlib/bean/AuthResult;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/qianhe/ntripclientlib/bean/AuthResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager;->demoFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
