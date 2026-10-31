.class public final Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;
.super Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;
.source "VorbisComment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/flac/VorbisComment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
