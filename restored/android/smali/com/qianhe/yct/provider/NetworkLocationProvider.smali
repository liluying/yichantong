.class public Lcom/qianhe/yct/provider/NetworkLocationProvider;
.super Ljava/lang/Object;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;,
        Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;
    }
.end annotation


# static fields
.field public static callback:Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static instance:Lcom/qianhe/yct/provider/NetworkLocationProvider;


# instance fields
.field private appContext:Landroid/content/Context;

.field private cachedLocation:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

.field private final delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private fusedCancellation:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field private fusedClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private fusedLocationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private final locating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private locationManager:Landroid/location/LocationManager;

.field private final networkLocationListener:Landroid/location/LocationListener;

.field private final pendingCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$3AbnQxLLHCMLqC4q47LMiuip8Ds(Ljava/lang/Exception;)V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentLocation \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D_PljnBjn2v_CplyEn6IJfLI-aQ(Lcom/qianhe/yct/provider/NetworkLocationProvider;Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 261
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u878d\u5408\u5b9a\u4f4d getCurrentLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v0, "\u7f51\u7edc\u5b9a\u4f4d(\u878d\u5408)"

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->deliverLocation(Landroid/location/Location;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$_-BdLxeGYRBxY6H0IISsaR67eas(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->onLocationTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$aNf2imVVImdEGb-jz9fMMp8grH0(Lcom/qianhe/yct/provider/NetworkLocationProvider;Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u878d\u5408\u5b9a\u4f4d getLastLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v0, "\u7f51\u7edc\u5b9a\u4f4d(\u878d\u5408\u7f13\u5b58)"

    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->deliverLocation(Landroid/location/Location;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$mr6CSKQOjA3dercB1iWYx5tn288(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V
    .locals 0

    .line 374
    invoke-static {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->notifySuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdelivered(Lcom/qianhe/yct/provider/NetworkLocationProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeliverLocation(Lcom/qianhe/yct/provider/NetworkLocationProvider;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->deliverLocation(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->pendingCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 291
    new-instance v0, Lcom/qianhe/yct/provider/NetworkLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider$2;-><init>(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V

    iput-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method private cleanupUpdates()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 490
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    if-eqz v2, :cond_1

    .line 491
    invoke-interface {v0, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 492
    iput-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedCancellation:Lcom/google/android/gms/tasks/CancellationTokenSource;

    if-eqz v0, :cond_2

    .line 495
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    .line 496
    iput-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedCancellation:Lcom/google/android/gms/tasks/CancellationTokenSource;

    :cond_2
    return-void
.end method

.method private deliverLocation(Landroid/location/Location;Ljava/lang/String;)V
    .locals 11

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cleanupUpdates()V

    .line 320
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 324
    :cond_1
    new-instance v2, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    .line 325
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 326
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 327
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    .line 328
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;-><init>(DDDFLjava/lang/String;)V

    iput-object v2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cachedLocation:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u5df2\u4ea4\u4ed8: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cachedLocation:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->finishWithSuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V

    return-void
.end method

.method private drainPendingCallbacks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->pendingCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->pendingCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    .line 363
    sput-object v1, Lcom/qianhe/yct/provider/NetworkLocationProvider;->callback:Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;

    return-object v0
.end method

.method private ensureCachedFromPersisted(Landroid/content/Context;)V
    .locals 9

    .line 164
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cachedLocation:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->appContext:Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->readPersistedLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    .line 173
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 174
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 175
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    const-string/jumbo v8, "\u7f51\u7edc\u5b9a\u4f4d(\u672c\u5730\u7f13\u5b58)"

    invoke-direct/range {v0 .. v8}, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;-><init>(DDDFLjava/lang/String;)V

    iput-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cachedLocation:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    return-void
.end method

.method private findBestLastKnownLocation(J)Landroid/location/Location;
    .locals 8

    .line 391
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 394
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 396
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 400
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 401
    iget-object v5, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->appContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 406
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, p1, v5

    if-gez v7, :cond_5

    .line 410
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v5, v2, v5

    cmp-long v7, v5, p1

    if-lez v7, :cond_5

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 413
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    :cond_6
    move-object v1, v4

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private finishWithFailure(Ljava/lang/String;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cleanupUpdates()V

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 351
    :cond_1
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->drainPendingCallbacks()Ljava/util/List;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;

    .line 356
    invoke-static {v1, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->notifyFailure(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private finishWithSuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V
    .locals 3

    .line 336
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->drainPendingCallbacks()Ljava/util/List;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;

    .line 339
    invoke-static {v1, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->notifySuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qianhe/yct/provider/NetworkLocationProvider;
    .locals 1

    .line 78
    sget-object v0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->instance:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/qianhe/yct/provider/NetworkLocationProvider;

    invoke-direct {v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;-><init>()V

    sput-object v0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->instance:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    .line 81
    :cond_0
    sget-object v0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->instance:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    return-object v0
.end method

.method private getTimeoutMs()J
    .locals 2

    .line 181
    invoke-static {}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->needsEnhancedLocationCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x61a8

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2ee0

    return-wide v0
.end method

.method private hasAnyEnabledProvider()Z
    .locals 3

    const/4 v0, 0x0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v2

    :catch_0
    :cond_0
    return v0
.end method

.method private static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 443
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static needsEnhancedLocationCompat()Z
    .locals 3

    .line 433
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 434
    :goto_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 435
    :cond_1
    const-string/jumbo v2, "wheatek"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RT3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    const-string v2, "CPDEVICE"

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SPRING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "RT3 Pro"

    .line 437
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private static notifyFailure(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 386
    invoke-interface {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;->onLocationFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static notifySuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V
    .locals 9

    if-eqz p0, :cond_0

    .line 380
    iget-wide v1, p1, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->latitude:D

    iget-wide v3, p1, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->longitude:D

    iget-wide v5, p1, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->altitude:D

    iget v7, p1, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->accuracy:F

    iget-object v8, p1, Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;->provider:Ljava/lang/String;

    move-object v0, p0

    invoke-interface/range {v0 .. v8}, Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;->onLocationReceived(DDDFLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onLocationTimeout()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x5265c00

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->findBestLastKnownLocation(J)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    .line 195
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->findBestLastKnownLocation(J)Landroid/location/Location;

    move-result-object v0

    .line 197
    :cond_1
    const-string v1, ", "

    if-eqz v0, :cond_2

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7f51\u7edc\u5b9a\u4f4d\u8d85\u65f6\uff0c\u4f7f\u7528\u515c\u5e95\u7f13\u5b58: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "\u7f51\u7edc\u5b9a\u4f4d(\u8d85\u65f6\u7f13\u5b58)"

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->deliverLocation(Landroid/location/Location;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->readPersistedLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7f51\u7edc\u5b9a\u4f4d\u8d85\u65f6\uff0c\u4f7f\u7528\u672c\u5730\u5df2\u5b58\u5750\u6807: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "\u7f51\u7edc\u5b9a\u4f4d(\u672c\u5730\u7f13\u5b58)"

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->deliverLocation(Landroid/location/Location;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_3
    const-string/jumbo v0, "\u7f51\u7edc\u5b9a\u4f4d\u8d85\u65f6"

    invoke-direct {p0, v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->finishWithFailure(Ljava/lang/String;)V

    return-void
.end method

.method private postNotifySuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 372
    invoke-static {p1, p2}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->notifySuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V

    return-void

    .line 374
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readPersistedLocation()Landroid/location/Location;
    .locals 12

    .line 451
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 454
    :cond_0
    const-string/jumbo v2, "sp"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "current_coords"

    const-string v4, ""

    .line 455
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 460
    :cond_1
    :try_start_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 461
    array-length v2, v0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    return-object v1

    .line 464
    :cond_2
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v5, 0x1

    .line 465
    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 466
    array-length v7, v0

    const-wide/16 v8, 0x0

    if-le v7, v4, :cond_3

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-wide v10, v8

    :goto_0
    cmpl-double v0, v5, v8

    if-nez v0, :cond_4

    cmpl-double v0, v2, v8

    if-nez v0, :cond_4

    return-object v1

    .line 470
    :cond_4
    new-instance v0, Landroid/location/Location;

    const-string v4, "persisted"

    invoke-direct {v0, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 472
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 473
    invoke-virtual {v0, v10, v11}, Landroid/location/Location;->setAltitude(D)V

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    const v2, 0x459c4000    # 5000.0f

    .line 475
    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 478
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8bfb\u53d6\u672c\u5730\u5750\u6807\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method private requestFusedLocation(Landroid/content/Context;)V
    .locals 3

    .line 236
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 238
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 244
    invoke-interface {p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 252
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    const/16 v1, 0x66

    if-lt p1, v0, :cond_1

    .line 253
    new-instance p1, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedCancellation:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 254
    new-instance p1, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;-><init>()V

    .line 255
    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    move-result-object p1

    .line 256
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    .line 257
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->build()Lcom/google/android/gms/location/CurrentLocationRequest;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedCancellation:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getCurrentLocation(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V

    .line 260
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda3;-><init>()V

    .line 266
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 271
    :cond_1
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 272
    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 273
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 274
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 276
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 277
    new-instance v0, Lcom/qianhe/yct/provider/NetworkLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider$1;-><init>(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V

    iput-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedLocationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 288
    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->fusedClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private requestNetworkSingleUpdate(Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->appContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 214
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 220
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    iget-object v1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {p1, v0, v1, v6}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSingleUpdate(NETWORK) \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->needsEnhancedLocationCompat()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLocationUpdates(NETWORK) \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private scheduleTimeout()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->timeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->timeoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V

    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->getTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getNetworkLocation(Landroid/content/Context;Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;)V
    .locals 3

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->ensureCachedFromPersisted(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cachedLocation:Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0, p2, v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->postNotifySuccess(Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;Lcom/qianhe/yct/provider/NetworkLocationProvider$CachedLocation;)V

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->pendingCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_0
    return-void

    .line 115
    :cond_3
    iget-object p2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    iput-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->appContext:Landroid/content/Context;

    .line 117
    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 118
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->timeoutHandler:Landroid/os/Handler;

    .line 120
    iget-object p2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez p2, :cond_4

    .line 121
    const-string/jumbo p1, "\u5b9a\u4f4d\u670d\u52a1\u4e0d\u53ef\u7528"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->finishWithFailure(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_4
    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 127
    const-string/jumbo p1, "\u6ca1\u6709\u7f51\u7edc\u5b9a\u4f4d\u6743\u9650"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->finishWithFailure(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_5
    iget-object p2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p2

    .line 132
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->hasAnyEnabledProvider()Z

    move-result v1

    if-nez p2, :cond_6

    if-nez v1, :cond_6

    .line 133
    invoke-static {}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->needsEnhancedLocationCompat()Z

    move-result v1

    if-nez v1, :cond_6

    .line 134
    const-string/jumbo p1, "\u7f51\u7edc\u5b9a\u4f4d\u670d\u52a1\u4e0d\u53ef\u7528"

    invoke-direct {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->finishWithFailure(Ljava/lang/String;)V

    return-void

    .line 138
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u7f51\u7edc\u5b9a\u4f4d... \u673a\u578b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " providers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 139
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    const-wide/32 v0, 0x493e0

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->findBestLastKnownLocation(J)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 144
    const-string/jumbo p1, "\u7f51\u7edc\u5b9a\u4f4d(\u7f13\u5b58)"

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->deliverLocation(Landroid/location/Location;Ljava/lang/String;)V

    return-void

    :cond_7
    const-wide/32 v0, 0x5265c00

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->findBestLastKnownLocation(J)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 149
    const-string/jumbo p1, "\u7f51\u7edc\u5b9a\u4f4d(\u5386\u53f2\u7f13\u5b58)"

    invoke-direct {p0, v0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->deliverLocation(Landroid/location/Location;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_8
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->scheduleTimeout()V

    .line 155
    invoke-static {}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->needsEnhancedLocationCompat()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    invoke-direct {p0, p1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->requestFusedLocation(Landroid/content/Context;)V

    .line 160
    :cond_9
    invoke-direct {p0, p2}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->requestNetworkSingleUpdate(Z)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 512
    invoke-virtual {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->stopLocationUpdates()V

    .line 513
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 514
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 515
    sput-object v0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->callback:Lcom/qianhe/yct/provider/NetworkLocationProvider$LocationCallback;

    return-void
.end method

.method public stopLocationUpdates()V
    .locals 2

    .line 501
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->cleanupUpdates()V

    .line 502
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->timeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 503
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->delivered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 506
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider;->locating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 507
    invoke-direct {p0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->drainPendingCallbacks()Ljava/util/List;

    return-void
.end method
