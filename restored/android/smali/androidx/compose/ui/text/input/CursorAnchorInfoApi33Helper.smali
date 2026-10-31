.class final Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;
.super Ljava/lang/Object;
.source "CursorAnchorInfoBuilder.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;->INSTANCE:Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/geometry/Rect;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 2

    .line 200
    invoke-static {}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v0

    .line 201
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v0

    .line 202
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object p1

    .line 203
    invoke-static {p1}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/CursorAnchorInfoApi33Helper$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object p0

    return-object p0
.end method
