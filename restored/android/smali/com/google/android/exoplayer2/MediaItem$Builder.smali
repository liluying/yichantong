.class public final Lcom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

.field private customCacheKey:Ljava/lang/String;

.field private drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

.field private mediaId:Ljava/lang/String;

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private mimeType:Ljava/lang/String;

.field private requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

.field private streamKeys:Ljava/util/List;

.field private subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

.field private tag:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    .line 99
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 100
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 102
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem;
    .locals 11

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 559
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    .line 561
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 565
    iget-object v4, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-static {v4}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    move-result-object v0

    :cond_2
    move-object v4, v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v9, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v5, v0

    .line 572
    :goto_2
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem;

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_3
    move-object v3, v0

    goto :goto_4

    :cond_4
    const-string v0, ""

    goto :goto_3

    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 574
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 576
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v6

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz v0, :cond_5

    :goto_5
    move-object v7, v0

    goto :goto_6

    :cond_5
    sget-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    goto :goto_5

    :goto_6
    iget-object v8, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$RequestMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v2
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 135
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method
