.class Lcom/qianhe/yct/provider/NetworkLocationProvider$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/provider/NetworkLocationProvider;->requestFusedLocation(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/provider/NetworkLocationProvider;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/provider/NetworkLocationProvider;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$1;->this$0:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 3

    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$1;->this$0:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    invoke-static {v0}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->-$$Nest$fgetdelivered(Lcom/qianhe/yct/provider/NetworkLocationProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u878d\u5408\u5b9a\u4f4d updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " \u7cbe\u5ea6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/qianhe/yct/provider/NetworkLocationProvider$1;->this$0:Lcom/qianhe/yct/provider/NetworkLocationProvider;

    const-string/jumbo v1, "\u7f51\u7edc\u5b9a\u4f4d(\u878d\u5408)"

    invoke-static {v0, p1, v1}, Lcom/qianhe/yct/provider/NetworkLocationProvider;->-$$Nest$mdeliverLocation(Lcom/qianhe/yct/provider/NetworkLocationProvider;Landroid/location/Location;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
