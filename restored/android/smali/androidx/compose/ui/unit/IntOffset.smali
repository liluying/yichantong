.class public abstract Landroidx/compose/ui/unit/IntOffset;
.super Ljava/lang/Object;
.source "IntOffset.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/IntOffset$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

.field private static final Zero:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/unit/IntOffset$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/IntOffset$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    const-wide/16 v0, 0x0

    .line 147
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/unit/IntOffset;->Zero:J

    return-void
.end method

.method public static final synthetic access$getZero$cp()J
    .locals 2

    .line 39
    sget-wide v0, Landroidx/compose/ui/unit/IntOffset;->Zero:J

    return-wide v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    .line 0
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getX-impl(J)I
    .locals 1

    .line 0
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final getY-impl(J)I
    .locals 2

    .line 0
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final minus-qkQi6aY(JJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v2, v1

    shr-long v3, p2, v0

    long-to-int v1, v3

    sub-int/2addr v2, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p1, p0

    and-long/2addr p2, v3

    long-to-int p0, p2

    sub-int/2addr p1, p0

    int-to-long p2, v2

    shl-long/2addr p2, v0

    int-to-long p0, p1

    and-long/2addr p0, v3

    or-long/2addr p0, p2

    .line 74
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final plus-qkQi6aY(JJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v2, v1

    shr-long v3, p2, v0

    long-to-int v1, v3

    add-int/2addr v2, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p1, p0

    and-long/2addr p2, v3

    long-to-int p0, p2

    add-int/2addr p1, p0

    int-to-long p2, v2

    shl-long/2addr p2, v0

    int-to-long p0, p1

    and-long/2addr p0, v3

    or-long/2addr p0, p2

    .line 86
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
