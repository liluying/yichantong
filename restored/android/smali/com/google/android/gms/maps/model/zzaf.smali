.class final Lcom/google/android/gms/maps/model/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.2.0"

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/model/TileOverlayOptions;

.field private final zzb:Lcom/google/android/gms/internal/maps/zzap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/zzaf;->zza:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->zza(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/maps/zzap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/zzaf;->zzb:Lcom/google/android/gms/internal/maps/zzap;

    return-void
.end method
