.class public final Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearViewTranslationCallback(Landroid/view/View;)V
    .locals 0

    .line 2503
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/View;)V

    return-void
.end method

.method public final setViewTranslationCallback(Landroid/view/View;)V
    .locals 1

    .line 2497
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/view/translation/ViewTranslationCallback;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V

    return-void
.end method
