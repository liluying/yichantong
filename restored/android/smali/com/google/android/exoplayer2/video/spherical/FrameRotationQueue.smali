.class final Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;
.super Ljava/lang/Object;
.source "FrameRotationQueue.java"


# instance fields
.field private final recenterMatrix:[F

.field private recenterMatrixComputed:Z

.field private final rotationMatrix:[F

.field private final rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 45
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .locals 6

    .line 106
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    const/16 v0, 0xa

    .line 107
    aget v1, p1, v0

    mul-float v1, v1, v1

    const/16 v2, 0x8

    aget v3, p1, v2

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 110
    aget v3, p1, v0

    div-float v4, v3, v1

    const/4 v5, 0x0

    aput v4, p0, v5

    .line 111
    aget p1, p1, v2

    div-float v4, p1, v1

    const/4 v5, 0x2

    aput v4, p0, v5

    neg-float p1, p1

    div-float/2addr p1, v1

    .line 112
    aput p1, p0, v2

    div-float/2addr v3, v1

    .line 113
    aput v3, p0, v0

    return-void
.end method

.method private static getRotationMatrixFromAngleAxis([F[F)V
    .locals 11

    const/4 v0, 0x0

    .line 120
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 121
    aget v1, p1, v1

    neg-float v1, v1

    const/4 v2, 0x2

    .line 122
    aget p1, p1, v2

    neg-float p1, p1

    .line 123
    invoke-static {v0, v1, p1}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    float-to-double v3, v2

    .line 125
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v7, v3

    div-float v8, v0, v2

    div-float v9, v1, v2

    div-float v10, p1, v2

    const/4 v6, 0x0

    move-object v5, p0

    .line 126
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void

    :cond_0
    move-object v5, p0

    .line 128
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    return-void
.end method


# virtual methods
.method public pollRotationMatrix([FJ)Z
    .locals 7

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotations:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 81
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->getRotationMatrixFromAngleAxis([F[F)V

    .line 82
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    .line 83
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 84
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v5, p0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return p3
.end method
