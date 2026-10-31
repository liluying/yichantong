.class Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;
.super Ljava/lang/Object;
.source "MultiPointAreaChecker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker;->sortPointsByPolarAngle(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[D>;"
    }
.end annotation


# instance fields
.field final synthetic val$centerX:D

.field final synthetic val$centerY:D


# direct methods
.method constructor <init>(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-wide p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;->val$centerY:D

    iput-wide p3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;->val$centerX:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;->compare([D[D)I

    move-result p1

    return p1
.end method

.method public compare([D[D)I
    .locals 8

    const/4 v0, 0x1

    .line 98
    aget-wide v1, p1, v0

    iget-wide v3, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;->val$centerY:D

    sub-double/2addr v1, v3

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    iget-wide v6, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;->val$centerX:D

    sub-double/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 99
    aget-wide v4, p2, v0

    iget-wide v6, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;->val$centerY:D

    sub-double/2addr v4, v6

    aget-wide p1, p2, v3

    iget-wide v6, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaChecker$1;->val$centerX:D

    sub-double/2addr p1, v6

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 100
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
