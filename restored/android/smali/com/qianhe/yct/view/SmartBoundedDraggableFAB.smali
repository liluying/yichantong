.class public Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "SmartBoundedDraggableFAB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;
    }
.end annotation


# static fields
.field private static final CLICK_THRESHOLD:I = 0xa

.field private static final KEY_X:Ljava/lang/String; = "fab_x"

.field private static final KEY_Y:Ljava/lang/String; = "fab_y"

.field private static final LONG_CLICK_DURATION:J = 0x1f4L

.field private static final PREFS_NAME:Ljava/lang/String; = "fab_position"


# instance fields
.field private clickHandler:Landroid/os/Handler;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private enableBoundsAnimation:Z

.field private enableEdgeSnap:Z

.field private isClicking:Z

.field private isLongClicking:Z

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field private margin:I

.field private prefs:Landroid/content/SharedPreferences;

.field private screenBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$Np2jgj2m3GNQw28c08wiOBk2ns8(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->savePosition(FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$fyP_UducX7s4QjEfbGxnO-hC_Sc(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->updateScreenBounds()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetclickHandler(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->clickHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclickListener(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->clickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenableBoundsAnimation(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->enableBoundsAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableEdgeSnap(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->enableEdgeSnap:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isClicking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisLongClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isLongClicking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlongClickListener(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->longClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isClicking:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLongClicking(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isLongClicking:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclampX(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;F)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->clampX(F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclampY(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;F)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->clampY(F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msavePosition(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->savePosition(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    const/16 v0, 0x10

    .line 24
    iput v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->enableEdgeSnap:Z

    .line 26
    iput-boolean v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->enableBoundsAnimation:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isClicking:Z

    .line 34
    iput-boolean v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isLongClicking:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->clickHandler:Landroid/os/Handler;

    .line 39
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    const/16 p2, 0x10

    .line 24
    iput p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->enableEdgeSnap:Z

    .line 26
    iput-boolean p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->enableBoundsAnimation:Z

    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isClicking:Z

    .line 34
    iput-boolean p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->isLongClicking:Z

    .line 35
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->clickHandler:Landroid/os/Handler;

    .line 44
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clampX(F)F
    .locals 3

    .line 171
    iget v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    int-to-float v0, v0

    .line 172
    iget-object v1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 173
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private clampY(F)F
    .locals 3

    .line 177
    iget v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    int-to-float v0, v0

    .line 178
    iget-object v1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 179
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 48
    const-string v0, "fab_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->prefs:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setUseCompatPadding(Z)V

    .line 50
    new-instance p1, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$SmartDragListener;-><init>(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;Lcom/qianhe/yct/view/SmartBoundedDraggableFAB-IA;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    new-instance p1, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private savePosition(FF)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fab_x"

    .line 201
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fab_y"

    .line 202
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private snapToEdge()V
    .locals 4

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    .line 187
    iget-object v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 188
    iget v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->margin:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 190
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateScreenBounds()V
    .locals 4

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x2

    .line 210
    new-array v1, v1, [I

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->screenBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v1, v2

    neg-int v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/qianhe/yct/view/SmartBoundedDraggableFAB;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
