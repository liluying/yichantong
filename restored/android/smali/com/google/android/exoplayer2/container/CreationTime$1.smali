.class Lcom/google/android/exoplayer2/container/CreationTime$1;
.super Ljava/lang/Object;
.source "CreationTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/container/CreationTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/container/CreationTime;
    .locals 2

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/container/CreationTime;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/container/CreationTime;-><init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/container/CreationTime$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/container/CreationTime$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/container/CreationTime;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/container/CreationTime;
    .locals 0

    .line 86
    new-array p1, p1, [Lcom/google/android/exoplayer2/container/CreationTime;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/container/CreationTime$1;->newArray(I)[Lcom/google/android/exoplayer2/container/CreationTime;

    move-result-object p1

    return-object p1
.end method
