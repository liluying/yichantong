.class public final Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
.super Ljava/lang/Object;
.source "SemanticsUtils.android.kt"


# instance fields
.field private final adjustedBounds:Landroid/graphics/Rect;

.field private final semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 130
    iput-object p2, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getAdjustedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    return-object v0
.end method
