.class public Lcom/qianhe/yct/utils/BeepPlayer;
.super Ljava/lang/Object;
.source "BeepPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/BeepPlayer$SoundType;,
        Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;
    }
.end annotation


# instance fields
.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioManager:Landroid/media/AudioManager;

.field private audioTrack:Landroid/media/AudioTrack;

.field private volatile autoPausedByUrgency:Z

.field private framesPerChunk:I

.field private hasAudioFocus:Z

.field private loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

.field private volatile loudnessGainMb:I

.field private final maxGapMs:I

.field private final minGapMs:I

.field private volatile muted:Z

.field private final pauseLock:Ljava/lang/Object;

.field private volatile paused:Z

.field private playThread:Ljava/lang/Thread;

.field private volatile running:Z

.field private sampleRate:I

.field private volatile soundType:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field private volatile urgency:F

.field private volatile volume:F


# direct methods
.method public static synthetic $r8$lambda$ZHsZnJco4JpxwDManf06GDS2_0A(Lcom/qianhe/yct/utils/BeepPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->playLoop()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x7d0

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/utils/BeepPlayer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DIDI:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    iput-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->soundType:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 63
    iput v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->urgency:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->volume:F

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->muted:Z

    const v1, 0xac44

    .line 70
    iput v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    const/16 v1, 0x1b9

    .line 71
    iput v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    const/16 v1, 0x5dc

    .line 75
    iput v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->loudnessGainMb:I

    .line 77
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    .line 78
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    .line 79
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->autoPausedByUrgency:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->pauseLock:Ljava/lang/Object;

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-gt p2, p1, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 93
    :cond_1
    iput p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->minGapMs:I

    .line 94
    iput p2, p0, Lcom/qianhe/yct/utils/BeepPlayer;->maxGapMs:I

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->hasAudioFocus:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v1, :cond_1

    .line 444
    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 446
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->hasAudioFocus:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private computeCycleSamples(FLcom/qianhe/yct/utils/BeepPlayer$SoundType;)I
    .locals 3

    .line 538
    iget v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->maxGapMs:I

    int-to-float v1, v0

    iget v2, p0, Lcom/qianhe/yct/utils/BeepPlayer;->minGapMs:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float p1, p1, v0

    sub-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    .line 540
    :goto_0
    iget p1, p2, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->beepDurationMs:I

    add-int/2addr p1, v2

    .line 541
    iget p2, p0, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    mul-int p1, p1, p2

    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method private static envelope(Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;IIII)D
    .locals 0

    if-ge p1, p3, :cond_0

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    return-wide p0

    .line 547
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p3, 0x1

    if-eq p0, p3, :cond_3

    const/4 p3, 0x2

    if-eq p0, p3, :cond_2

    sub-int p0, p2, p4

    if-le p1, p0, :cond_1

    sub-int/2addr p2, p1

    int-to-double p0, p2

    int-to-double p2, p4

    div-double/2addr p0, p2

    return-wide p0

    :cond_1
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_2
    const-wide/high16 p3, -0x3ff4000000000000L    # -3.5

    int-to-double p0, p1

    mul-double p0, p0, p3

    int-to-double p2, p2

    div-double/2addr p0, p2

    .line 551
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0

    :cond_3
    const-wide/high16 p3, -0x3fe0000000000000L    # -8.0

    int-to-double p0, p1

    mul-double p0, p0, p3

    int-to-double p2, p2

    div-double/2addr p0, p2

    .line 549
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getCandidateSampleRates()[I
    .locals 4

    const/4 v0, 0x0

    .line 300
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 303
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 304
    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/16 v1, 0x3e80

    const v2, 0xac44

    const v3, 0xbb80

    if-lez v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 313
    filled-new-array {v0, v3, v2, v1}, [I

    move-result-object v0

    return-object v0

    .line 315
    :cond_1
    filled-new-array {v3, v2, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private initCarTabletAudioOutput()Z
    .locals 14

    .line 270
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->getCandidateSampleRates()[I

    move-result-object v0

    const/4 v1, 0x3

    .line 271
    new-array v2, v1, [[I

    const/4 v3, 0x2

    filled-new-array {v3}, [I

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x5

    filled-new-array {v4}, [I

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    filled-new-array {v1}, [I

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v6, 0x4

    .line 276
    new-array v8, v6, [[I

    const/4 v9, 0x6

    filled-new-array {v9, v6}, [I

    move-result-object v9

    aput-object v9, v8, v5

    const/16 v9, 0xd

    filled-new-array {v9, v6}, [I

    move-result-object v9

    aput-object v9, v8, v7

    filled-new-array {v4, v6}, [I

    move-result-object v4

    aput-object v4, v8, v3

    filled-new-array {v7, v6}, [I

    move-result-object v3

    aput-object v3, v8, v1

    .line 283
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget v9, v0, v4

    .line 284
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_2

    .line 285
    aget-object v11, v8, v10

    .line 286
    aget v12, v11, v5

    aget v13, v11, v7

    invoke-direct {p0, v9, v12, v13, v7}, Lcom/qianhe/yct/utils/BeepPlayer;->tryCreateAudioTrackApi26(IIIZ)Z

    move-result v12

    if-eqz v12, :cond_0

    return v7

    .line 287
    :cond_0
    aget v12, v11, v5

    aget v11, v11, v7

    invoke-direct {p0, v9, v12, v11, v5}, Lcom/qianhe/yct/utils/BeepPlayer;->tryCreateAudioTrackApi26(IIIZ)Z

    move-result v11

    if-eqz v11, :cond_1

    return v7

    :cond_1
    add-int/2addr v10, v7

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v1, :cond_4

    .line 290
    aget-object v11, v2, v10

    .line 291
    aget v11, v11, v5

    invoke-direct {p0, v9, v11}, Lcom/qianhe/yct/utils/BeepPlayer;->tryCreateAudioTrackLegacy(II)Z

    move-result v11

    if-eqz v11, :cond_3

    return v7

    :cond_3
    add-int/2addr v10, v7

    goto :goto_2

    :cond_4
    add-int/2addr v4, v7

    goto :goto_0

    :cond_5
    return v5
.end method

.method private initDefaultAudioOutput()V
    .locals 6

    const v0, 0xac44

    .line 246
    iput v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    mul-int/lit8 v1, v0, 0xa

    .line 247
    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 248
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 249
    iget v3, p0, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    mul-int/lit8 v3, v3, 0x6

    .line 250
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 251
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 252
    invoke-static {}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline3;->m()Landroid/media/AudioTrack$Builder;

    move-result-object v3

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x1

    .line 254
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 255
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 253
    invoke-static {v3, v4}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 258
    invoke-virtual {v4, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v4, p0, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    .line 259
    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 257
    invoke-static {v3, v1}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline11;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 262
    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline12;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 263
    invoke-static {v0, v5}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 264
    invoke-static {v0, v5}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline15;->m(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private isCarTablet()Z
    .locals 1

    .line 241
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isAT80orAT85()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private playLoop()V
    .locals 26

    move-object/from16 v1, p0

    .line 454
    iget v0, v1, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    new-array v0, v0, [S

    .line 457
    iget-object v2, v1, Lcom/qianhe/yct/utils/BeepPlayer;->soundType:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 458
    iget v3, v1, Lcom/qianhe/yct/utils/BeepPlayer;->urgency:F

    invoke-direct {v1, v3, v2}, Lcom/qianhe/yct/utils/BeepPlayer;->computeCycleSamples(FLcom/qianhe/yct/utils/BeepPlayer$SoundType;)I

    move-result v3

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 460
    :goto_0
    iget-boolean v12, v1, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    if-eqz v12, :cond_e

    .line 461
    iget-boolean v12, v1, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    if-eqz v12, :cond_2

    .line 462
    iget-object v12, v1, Lcom/qianhe/yct/utils/BeepPlayer;->pauseLock:Ljava/lang/Object;

    monitor-enter v12

    .line 463
    :goto_1
    :try_start_0
    iget-boolean v8, v1, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    if-eqz v8, :cond_0

    iget-boolean v8, v1, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 465
    :try_start_1
    iget-object v8, v1, Lcom/qianhe/yct/utils/BeepPlayer;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 467
    :catch_0
    :try_start_2
    monitor-exit v12

    goto/16 :goto_8

    .line 470
    :cond_0
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 471
    iget-boolean v8, v1, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    if-nez v8, :cond_1

    goto/16 :goto_8

    :cond_1
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    goto :goto_3

    .line 470
    :goto_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 476
    :cond_2
    :goto_3
    iget-object v12, v1, Lcom/qianhe/yct/utils/BeepPlayer;->soundType:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 477
    iget v13, v1, Lcom/qianhe/yct/utils/BeepPlayer;->urgency:F

    .line 478
    iget-boolean v14, v1, Lcom/qianhe/yct/utils/BeepPlayer;->muted:Z

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    goto :goto_4

    :cond_3
    iget v14, v1, Lcom/qianhe/yct/utils/BeepPlayer;->volume:F

    .line 479
    :goto_4
    iget v4, v12, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->beepDurationMs:I

    iget v5, v1, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    mul-int v4, v4, v5

    div-int/lit16 v4, v4, 0x3e8

    .line 480
    invoke-direct {v1, v13, v12}, Lcom/qianhe/yct/utils/BeepPlayer;->computeCycleSamples(FLcom/qianhe/yct/utils/BeepPlayer$SoundType;)I

    move-result v5

    if-eq v5, v3, :cond_4

    int-to-long v6, v5

    .line 483
    rem-long/2addr v8, v6

    move v3, v5

    :cond_4
    if-eq v12, v2, :cond_5

    move-object v2, v12

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 492
    :cond_5
    iget v6, v12, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->frequencyHz:I

    int-to-double v6, v6

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v6, v6, v16

    iget v13, v1, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    move-object/from16 v19, v2

    move/from16 v18, v3

    int-to-double v2, v13

    div-double/2addr v6, v2

    .line 493
    div-int/lit8 v2, v4, 0x8

    div-int/lit16 v13, v13, 0x190

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 494
    div-int/lit8 v13, v4, 0x3

    const/16 v20, 0x0

    iget v15, v1, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    div-int/lit8 v15, v15, 0x64

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 496
    array-length v13, v0

    iget v15, v1, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    if-eq v13, v15, :cond_6

    .line 497
    new-array v0, v15, [S

    :cond_6
    const/4 v15, 0x0

    .line 500
    :goto_5
    iget v13, v1, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    if-ge v15, v13, :cond_a

    move-wide/from16 v21, v6

    int-to-long v6, v4

    cmp-long v13, v8, v6

    if-gez v13, :cond_7

    cmpl-float v6, v14, v20

    if-lez v6, :cond_7

    .line 503
    iget-object v6, v12, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->envelope:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    long-to-int v7, v8

    invoke-static {v6, v7, v4, v2, v3}, Lcom/qianhe/yct/utils/BeepPlayer;->envelope(Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;IIII)D

    move-result-wide v6

    move v13, v2

    move/from16 v23, v3

    .line 504
    iget-wide v2, v12, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->drive:D

    .line 505
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v24

    invoke-static {v2, v3}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v2

    div-double v24, v24, v2

    mul-double v24, v24, v6

    float-to-double v2, v14

    mul-double v2, v2, v24

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 507
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide v6, 0x40dfffc000000000L    # 32767.0

    mul-double v2, v2, v6

    double-to-int v2, v2

    int-to-short v2, v2

    add-double v10, v10, v21

    cmpl-double v3, v10, v16

    if-lez v3, :cond_8

    sub-double v10, v10, v16

    goto :goto_6

    :cond_7
    move v13, v2

    move/from16 v23, v3

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    .line 513
    :cond_8
    :goto_6
    aput-short v2, v0, v15

    const-wide/16 v2, 0x1

    add-long/2addr v8, v2

    int-to-long v2, v5

    cmp-long v6, v8, v2

    if-ltz v6, :cond_9

    const-wide/16 v8, 0x0

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move v2, v13

    move-wide/from16 v6, v21

    move/from16 v3, v23

    goto :goto_5

    .line 517
    :cond_a
    iget-object v2, v1, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_b

    goto :goto_8

    .line 519
    :cond_b
    :try_start_4
    invoke-direct {v1}, Lcom/qianhe/yct/utils/BeepPlayer;->isCarTablet()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 520
    iget-object v2, v1, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    if-gez v2, :cond_d

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeepPlayer: write \u5931\u8d25 code="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_7

    .line 526
    :cond_c
    iget-object v2, v1, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/media/AudioTrack;->write([SII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_d
    move/from16 v3, v18

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 529
    :goto_7
    invoke-direct {v1}, Lcom/qianhe/yct/utils/BeepPlayer;->isCarTablet()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeepPlayer: write \u5f02\u5e38 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :cond_e
    :goto_8
    return-void
.end method

.method private releaseAudioOutput()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 388
    :try_start_0
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :catch_0
    iput-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 395
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 396
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 401
    iput-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    :cond_2
    return-void
.end method

.method private requestAudioFocus()V
    .locals 6

    .line 406
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->isCarTablet()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 408
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    .line 411
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioManager:Landroid/media/AudioManager;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 413
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_3

    goto :goto_2

    .line 414
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v1, v2, :cond_6

    .line 415
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_4

    .line 416
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x6

    .line 417
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 418
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline2;->m()V

    invoke-static {v3}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline1;->m(I)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 421
    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 422
    invoke-static {v0, v5}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline6;->m(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 423
    invoke-static {v0, v4}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 424
    invoke-static {v0}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline9;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result v0

    if-ne v0, v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, p0, Lcom/qianhe/yct/utils/BeepPlayer;->hasAudioFocus:Z

    return-void

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 429
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v5, :cond_7

    const/4 v4, 0x1

    :cond_7
    iput-boolean v4, p0, Lcom/qianhe/yct/utils/BeepPlayer;->hasAudioFocus:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 436
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeepPlayer: \u7533\u8bf7\u97f3\u9891\u7126\u70b9\u5931\u8d25 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private tryCreateAudioTrackApi26(IIIZ)Z
    .locals 8

    .line 319
    const-string v0, " lowLatency="

    const-string v1, " usage="

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-static {p1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return v5

    :cond_0
    mul-int/lit8 v6, p1, 0xa

    .line 321
    div-int/lit16 v6, v6, 0x3e8

    mul-int/lit8 v6, v6, 0x6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 323
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline4;->m()V

    invoke-static {}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline3;->m()Landroid/media/AudioTrack$Builder;

    move-result-object v6

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 325
    invoke-virtual {v7, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 326
    invoke-virtual {v7, p3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    .line 327
    invoke-virtual {p3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    .line 324
    invoke-static {v6, p3}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p3

    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 329
    invoke-virtual {v6, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 330
    invoke-virtual {v3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 331
    invoke-virtual {v3, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 328
    invoke-static {p3, v2}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline11;->m(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p3

    .line 333
    invoke-static {p3, v4}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline12;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object p3

    const/4 v2, 0x1

    .line 334
    invoke-static {p3, v2}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object p3

    if-eqz p4, :cond_1

    .line 335
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 336
    invoke-static {p3, v2}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    .line 338
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticApiModelOutline15;->m(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    move-result-object p3

    .line 339
    invoke-virtual {p3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 340
    invoke-virtual {p3}, Landroid/media/AudioTrack;->release()V

    return v5

    .line 343
    :cond_2
    iput-object p3, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 344
    iput p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    mul-int/lit8 p3, p1, 0xa

    .line 345
    div-int/lit16 p3, p3, 0x3e8

    iput p3, p0, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    .line 346
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeepPlayer: \u521d\u59cb\u5316\u6210\u529f rate="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 350
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeepPlayer: AudioTrack \u521b\u5efa\u5931\u8d25 rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v5
.end method

.method private tryCreateAudioTrackLegacy(II)Z
    .locals 11

    .line 358
    const-string v1, " stream="

    const/4 v0, 0x4

    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    return v2

    :cond_0
    mul-int/lit8 v3, p1, 0xa

    .line 360
    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 362
    :try_start_0
    new-instance v4, Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x4

    move v6, p1

    move v5, p2

    :try_start_1
    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 369
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 370
    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    return v2

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 373
    :cond_1
    iput-object v4, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 374
    iput v6, p0, Lcom/qianhe/yct/utils/BeepPlayer;->sampleRate:I

    mul-int/lit8 p1, v6, 0xa

    .line 375
    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->framesPerChunk:I

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BeepPlayer: \u521d\u59cb\u5316\u6210\u529f(legacy) rate="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p2

    :catch_1
    move-exception v0

    move v6, p1

    move v5, p2

    goto :goto_0

    .line 379
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BeepPlayer: AudioTrack(legacy) \u521b\u5efa\u5931\u8d25 rate="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public pause()V
    .locals 3

    .line 208
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->isCarTablet()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 214
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 220
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public resume()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 230
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 235
    :try_start_1
    iput-boolean v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    .line 236
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 237
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public setSoundType(Lcom/qianhe/yct/utils/BeepPlayer$SoundType;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->soundType:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    if-eq v0, p1, :cond_0

    .line 158
    iput-object p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->soundType:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    if-nez p1, :cond_0

    .line 161
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setUrgency(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 175
    :cond_1
    iput p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->urgency:F

    const/4 v1, 0x1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 177
    iget-boolean p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    if-nez p1, :cond_4

    .line 178
    iput-boolean v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->autoPausedByUrgency:Z

    .line 179
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V

    return-void

    .line 182
    :cond_2
    iget-boolean p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->autoPausedByUrgency:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 183
    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->autoPausedByUrgency:Z

    if-eqz v1, :cond_4

    .line 184
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->resume()V

    :cond_4
    return-void
.end method

.method public setUrgencyByDistanceCm(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    :try_start_1
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    .line 100
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->isCarTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->initCarTabletAudioOutput()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 102
    iput-boolean v2, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    .line 103
    const-string v0, "BeepPlayer: \u8f66\u8f7d\u5e73\u677f\u97f3\u9891\u8f93\u51fa\u521d\u59cb\u5316\u5931\u8d25\uff0c\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 106
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->requestAudioFocus()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 109
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeepPlayer: AudioTrack.play() \u5931\u8d25 - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->releaseAudioOutput()V

    .line 113
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->abandonAudioFocus()V

    .line 114
    iput-boolean v2, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 118
    :cond_2
    :try_start_5
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->initDefaultAudioOutput()V

    .line 119
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    :goto_0
    :try_start_6
    new-instance v1, Landroid/media/audiofx/LoudnessEnhancer;

    iget-object v2, p0, Lcom/qianhe/yct/utils/BeepPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    iput-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    .line 123
    iget v2, p0, Lcom/qianhe/yct/utils/BeepPlayer;->loudnessGainMb:I

    invoke-virtual {v1, v2}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 124
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->loudnessEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-virtual {v1, v0}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    :catch_1
    :try_start_7
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/utils/BeepPlayer$$ExternalSyntheticLambda16;-><init>(Lcom/qianhe/yct/utils/BeepPlayer;)V

    const-string v3, "BeepPlayer-Audio"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->playThread:Ljava/lang/Thread;

    const/16 v2, 0xa

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 129
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->playThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 130
    iget v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->urgency:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 131
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->autoPausedByUrgency:Z

    .line 132
    invoke-virtual {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->pause()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 134
    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->running:Z

    .line 138
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->autoPausedByUrgency:Z

    .line 139
    iget-object v1, p0, Lcom/qianhe/yct/utils/BeepPlayer;->pauseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    iput-boolean v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->paused:Z

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 142
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    :try_start_2
    iget-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->playThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1f4

    .line 145
    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 148
    :try_start_4
    iput-object v0, p0, Lcom/qianhe/yct/utils/BeepPlayer;->playThread:Ljava/lang/Thread;

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->releaseAudioOutput()V

    .line 151
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->isCarTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/qianhe/yct/utils/BeepPlayer;->abandonAudioFocus()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 142
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method
