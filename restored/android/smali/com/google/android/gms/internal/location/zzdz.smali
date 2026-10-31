.class public final Lcom/google/android/gms/internal/location/zzdz;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-location@@21.2.0"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final zzf:Landroidx/collection/SimpleArrayMap;

.field private final zzg:Landroidx/collection/SimpleArrayMap;

.field private final zzh:Landroidx/collection/SimpleArrayMap;

.field private final zzi:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 2
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/location/zzdz;->zzf:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    .line 4
    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/location/zzdz;->zzh:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    .line 5
    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/location/zzdz;->zzi:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private final zzG(Lcom/google/android/gms/common/Feature;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2
    aget-object v3, v0, v2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/location/zzv;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/location/zzv;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/location/zzu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/location/zzu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/location/zzo;->zzp:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    .line 0
    const v0, 0xb2c988

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzdz;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 2
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdz;->zzf:Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 5
    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 6
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzdz;->zzh:Landroidx/collection/SimpleArrayMap;

    .line 8
    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdz;->zzh:Landroidx/collection/SimpleArrayMap;

    .line 9
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 10
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception v0

    .line 4
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzq(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/location/zzo;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzdz;->zzG(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzv;

    new-instance v1, Lcom/google/android/gms/internal/location/zzdk;

    .line 3
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/location/zzdk;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/location/zzee;->zzd(Lcom/google/android/gms/internal/location/zzz;)Lcom/google/android/gms/internal/location/zzee;

    move-result-object p2

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/location/zzv;->zzq(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzee;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/location/zzo;->zzf:Lcom/google/android/gms/common/Feature;

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzdz;->zzG(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzv;

    new-instance v1, Lcom/google/android/gms/internal/location/zzdk;

    .line 8
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/location/zzdk;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/location/zzv;->zzr(Lcom/google/android/gms/location/LastLocationRequest;Lcom/google/android/gms/internal/location/zzz;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/location/zzv;->zzs()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/location/zzo;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzdz;->zzG(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzv;

    new-instance v1, Lcom/google/android/gms/internal/location/zzdk;

    .line 3
    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/location/zzdk;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/location/zzee;->zzd(Lcom/google/android/gms/internal/location/zzz;)Lcom/google/android/gms/internal/location/zzee;

    move-result-object p3

    .line 5
    invoke-interface {v0, p1, p3}, Lcom/google/android/gms/internal/location/zzv;->zzt(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/internal/location/zzee;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p1

    if-eqz p2, :cond_2

    new-instance p3, Lcom/google/android/gms/internal/location/zzed;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/location/zzed;-><init>(Lcom/google/android/gms/common/internal/ICancelToken;)V

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/location/zzo;->zze:Lcom/google/android/gms/common/Feature;

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzdz;->zzG(Lcom/google/android/gms/common/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzv;

    new-instance v1, Lcom/google/android/gms/internal/location/zzdk;

    .line 9
    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/location/zzdk;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/location/zzv;->zzu(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/internal/location/zzz;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object p1

    if-eqz p2, :cond_2

    new-instance p3, Lcom/google/android/gms/internal/location/zzeb;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/location/zzeb;-><init>(Lcom/google/android/gms/common/internal/ICancelToken;)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/location/zzdh;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/location/zzdh;-><init>(Lcom/google/android/gms/internal/location/zzdz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/location/zzfc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v2, "GetCurrentLocation"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/location/zzdi;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/android/gms/internal/location/zzdi;-><init>(Lcom/google/android/gms/internal/location/zzdz;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v3, Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getPriority()I

    move-result v4

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    .line 15
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getDurationMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getGranularity()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setGranularity(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->getMaxUpdateAgeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zza()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzb()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->zza(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    const/4 v4, 0x1

    .line 21
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest;->zzc()Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzc(Landroid/os/WorkSource;)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/location/zzdz;->zzt(Lcom/google/android/gms/internal/location/zzdr;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/location/zzea;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/location/zzea;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    if-eqz p2, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/location/zzec;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/location/zzec;-><init>(Lcom/google/android/gms/internal/location/zzdz;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;)V

    .line 27
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/CancellationToken;->onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    :cond_2
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/location/zzdr;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/location/zzdr;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v5, Lcom/google/android/gms/location/zzo;->zzj:Lcom/google/android/gms/common/Feature;

    .line 3
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/location/zzdz;->zzG(Lcom/google/android/gms/common/Feature;)Z

    move-result v5

    iget-object v6, v1, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 4
    monitor-enter v6

    :try_start_0
    iget-object v7, v1, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 5
    invoke-virtual {v7, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/location/zzdv;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/location/zzdv;->zzc(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/internal/location/zzdv;

    move-object v13, v7

    move-object v7, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 5
    :cond_1
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/location/zzdv;

    move-object/from16 v9, p1

    .line 6
    invoke-direct {v3, v9}, Lcom/google/android/gms/internal/location/zzdv;-><init>(Lcom/google/android/gms/internal/location/zzdr;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 7
    invoke-virtual {v9, v4, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v3

    :goto_1
    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/location/zzv;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v13, v4}, Lcom/google/android/gms/internal/location/zzee;->zzb(Landroid/os/IInterface;Lcom/google/android/gms/location/zzw;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzee;

    move-result-object v4

    .line 11
    new-instance v5, Lcom/google/android/gms/internal/location/zzdj;

    invoke-direct {v5, v8, v2}, Lcom/google/android/gms/internal/location/zzdj;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/gms/internal/location/zzv;->zzw(Lcom/google/android/gms/internal/location/zzee;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/location/zzv;

    .line 14
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/location/zzeg;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzeg;

    move-result-object v11

    new-instance v15, Lcom/google/android/gms/internal/location/zzdd;

    .line 15
    invoke-direct {v15, v2, v13}, Lcom/google/android/gms/internal/location/zzdd;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/location/zzw;)V

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->toIdString()Ljava/lang/String;

    move-result-object v16

    .line 17
    new-instance v9, Lcom/google/android/gms/internal/location/zzei;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x1

    .line 18
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/location/zzei;-><init>(ILcom/google/android/gms/internal/location/zzeg;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 19
    invoke-interface {v3, v9}, Lcom/google/android/gms/internal/location/zzv;->zzv(Lcom/google/android/gms/internal/location/zzei;)V

    .line 20
    :goto_2
    monitor-exit v6

    return-void

    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdz;->zzg:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/location/zzdv;

    if-nez v6, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/location/zzdv;->zzg()V

    if-eqz p2, :cond_2

    .line 6
    sget-object p1, Lcom/google/android/gms/location/zzo;->zzj:Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/location/zzdz;->zzG(Lcom/google/android/gms/common/Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzv;

    const-string p2, "ILocationCallback@"

    .line 8
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 9
    invoke-static {v0, v6, p2}, Lcom/google/android/gms/internal/location/zzee;->zzb(Landroid/os/IInterface;Lcom/google/android/gms/location/zzw;Ljava/lang/String;)Lcom/google/android/gms/internal/location/zzee;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    new-instance v2, Lcom/google/android/gms/internal/location/zzdj;

    invoke-direct {v2, v0, p3}, Lcom/google/android/gms/internal/location/zzdj;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/internal/location/zzv;->zzx(Lcom/google/android/gms/internal/location/zzee;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzv;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v8, Lcom/google/android/gms/internal/location/zzdn;

    .line 13
    invoke-direct {v8, p2, p3}, Lcom/google/android/gms/internal/location/zzdn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/location/zzei;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 15
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/location/zzei;-><init>(ILcom/google/android/gms/internal/location/zzeg;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/location/zzv;->zzv(Lcom/google/android/gms/internal/location/zzei;)V

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 18
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
