.class public interface abstract Lcom/google/android/gms/location/FusedLocationProviderClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# virtual methods
.method public abstract getCurrentLocation(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract getLastLocation()Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;
.end method

.method public abstract requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;
.end method
