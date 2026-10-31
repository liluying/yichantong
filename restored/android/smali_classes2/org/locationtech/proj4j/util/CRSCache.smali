.class public Lorg/locationtech/proj4j/util/CRSCache;
.super Ljava/lang/Object;
.source "CRSCache.java"


# static fields
.field private static crsFactory:Lorg/locationtech/proj4j/CRSFactory;


# instance fields
.field private crsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/locationtech/proj4j/CoordinateReferenceSystem;",
            ">;"
        }
    .end annotation
.end field

.field private epsgCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3QJ0Z_t4McuQfoiTUw7nxSvtzeg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 0

    .line 52
    sget-object p2, Lorg/locationtech/proj4j/util/CRSCache;->crsFactory:Lorg/locationtech/proj4j/CRSFactory;

    invoke-virtual {p2, p0, p1}, Lorg/locationtech/proj4j/CRSFactory;->createFromParameters(Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ONbdgLphq5Ach9Y1rJmSMKLyg9w([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    :try_start_0
    sget-object p1, Lorg/locationtech/proj4j/util/CRSCache;->crsFactory:Lorg/locationtech/proj4j/CRSFactory;

    invoke-virtual {p1, p0}, Lorg/locationtech/proj4j/CRSFactory;->readEpsgFromParameters([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X9ZYaUqCTlhK9dRSyp_gMIeMJN0(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 0

    .line 61
    sget-object p2, Lorg/locationtech/proj4j/util/CRSCache;->crsFactory:Lorg/locationtech/proj4j/CRSFactory;

    invoke-virtual {p2, p0, p1}, Lorg/locationtech/proj4j/CRSFactory;->createFromParameters(Ljava/lang/String;[Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XboAH_4hguAeBebXXEGjRY4_isM(Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 0

    .line 43
    sget-object p1, Lorg/locationtech/proj4j/util/CRSCache;->crsFactory:Lorg/locationtech/proj4j/CRSFactory;

    invoke-virtual {p1, p0}, Lorg/locationtech/proj4j/CRSFactory;->createFromName(Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pSnqpGOrok_gzhBU8ZjD9BLamPQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    :try_start_0
    sget-object p1, Lorg/locationtech/proj4j/util/CRSCache;->crsFactory:Lorg/locationtech/proj4j/CRSFactory;

    invoke-virtual {p1, p0}, Lorg/locationtech/proj4j/CRSFactory;->readEpsgFromParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/locationtech/proj4j/CRSFactory;

    invoke-direct {v0}, Lorg/locationtech/proj4j/CRSFactory;-><init>()V

    sput-object v0, Lorg/locationtech/proj4j/util/CRSCache;->crsFactory:Lorg/locationtech/proj4j/CRSFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/proj4j/util/CRSCache;->epsgCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/locationtech/proj4j/CoordinateReferenceSystem;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    iput-object p2, p0, Lorg/locationtech/proj4j/util/CRSCache;->epsgCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public createFromName(Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    if-eqz v0, :cond_0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    return-object p1
.end method

.method public createFromParameters(Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 3

    if-nez p1, :cond_0

    .line 48
    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 49
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    if-eqz v1, :cond_1

    return-object v1

    .line 52
    :cond_1
    iget-object v1, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    return-object p1
.end method

.method public createFromParameters(Ljava/lang/String;[Ljava/lang/String;)Lorg/locationtech/proj4j/CoordinateReferenceSystem;
    .locals 3

    if-nez p1, :cond_0

    .line 57
    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 58
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-static {v0, p2}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    if-eqz v1, :cond_1

    return-object v1

    .line 61
    :cond_1
    iget-object v1, p0, Lorg/locationtech/proj4j/util/CRSCache;->crsCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p2}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/locationtech/proj4j/CoordinateReferenceSystem;

    return-object p1
.end method

.method public readEpsgFromParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/locationtech/proj4j/util/CRSCache;->epsgCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/locationtech/proj4j/util/CRSCache;->epsgCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public readEpsgFromParameters([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 71
    const-string v0, " "

    invoke-static {v0, p1}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/locationtech/proj4j/util/CRSCache;->epsgCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/locationtech/proj4j/util/CRSCache;->epsgCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticLambda3;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lorg/locationtech/proj4j/util/CRSCache$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
