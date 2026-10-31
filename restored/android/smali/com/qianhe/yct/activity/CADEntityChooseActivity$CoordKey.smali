.class final Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;
.super Ljava/lang/Object;
.source "CADEntityChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/CADEntityChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CoordKey"
.end annotation


# instance fields
.field final x:J

.field final y:J


# direct methods
.method constructor <init>(DD)V
    .locals 2

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    .line 991
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->x:J

    mul-double p3, p3, v0

    .line 992
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->y:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1000
    :cond_0
    instance-of v1, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1003
    :cond_1
    check-cast p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;

    .line 1004
    iget-wide v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->x:J

    iget-wide v5, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->x:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->y:J

    iget-wide v5, p1, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->y:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 1009
    iget-wide v0, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->x:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lcom/qianhe/yct/activity/CADEntityChooseActivity$CoordKey;->y:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    return v1
.end method
