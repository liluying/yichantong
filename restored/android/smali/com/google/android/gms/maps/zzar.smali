.class final Lcom/google/android/gms/maps/zzar;
.super Lcom/google/android/gms/maps/internal/zzbs;
.source "com.google.android.gms:play-services-maps@@18.2.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/zzas;Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanorama;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama;-><init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V

    const/4 p1, 0x0

    throw p1
.end method
