.class public abstract Lcom/google/android/gms/location/zzy;
.super Lcom/google/android/gms/internal/location/zzb;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/location/zzz;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzz;
    .locals 2

    .line 1
    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/zzz;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/location/zzz;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/zzx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzx;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
