.class final Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;
.super Ljava/lang/Object;
.source "GraphicsLayerV23.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;->INSTANCE:Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final discardDisplayList(Landroid/view/RenderNode;)V
    .locals 0

    .line 406
    invoke-virtual {p1}, Landroid/view/RenderNode;->discardDisplayList()V

    return-void
.end method
