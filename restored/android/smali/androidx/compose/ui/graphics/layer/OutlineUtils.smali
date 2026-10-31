.class final Landroidx/compose/ui/graphics/layer/OutlineUtils;
.super Ljava/lang/Object;
.source "GraphicsViewLayer.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/layer/OutlineUtils;

.field private static hasRetrievedMethod:Z

.field private static rebuildOutlineMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/layer/OutlineUtils;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/OutlineUtils;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/layer/OutlineUtils;->INSTANCE:Landroidx/compose/ui/graphics/layer/OutlineUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rebuildOutline(Landroid/view/View;)Z
    .locals 5

    .line 533
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 541
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 542
    :try_start_1
    sget-boolean v1, Landroidx/compose/ui/graphics/layer/OutlineUtils;->hasRetrievedMethod:Z

    if-nez v1, :cond_1

    .line 543
    sput-boolean v2, Landroidx/compose/ui/graphics/layer/OutlineUtils;->hasRetrievedMethod:Z

    .line 545
    const-class v1, Landroid/view/View;

    const-string v3, "rebuildOutline"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 548
    sput-object v1, Landroidx/compose/ui/graphics/layer/OutlineUtils;->rebuildOutlineMethod:Ljava/lang/reflect/Method;

    .line 546
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 551
    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/layer/OutlineUtils;->rebuildOutlineMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit p0

    if-eqz v1, :cond_3

    .line 554
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    return v2

    :cond_4
    return v0

    .line 541
    :goto_1
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return v0
.end method
