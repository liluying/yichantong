.class public Lcom/qianhe/yct/utils/KeyboardUtil;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private keyboardHeightThreshold:I

.field private listener:Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;

.field private rootView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetkeyboardHeightThreshold(Lcom/qianhe/yct/utils/KeyboardUtil;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->keyboardHeightThreshold:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/qianhe/yct/utils/KeyboardUtil;)Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->listener:Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrootView(Lcom/qianhe/yct/utils/KeyboardUtil;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->activity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->listener:Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;

    const/16 p1, 0xc8

    .line 25
    invoke-direct {p0, p1}, Lcom/qianhe/yct/utils/KeyboardUtil;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->keyboardHeightThreshold:I

    .line 26
    invoke-direct {p0}, Lcom/qianhe/yct/utils/KeyboardUtil;->initRootView()V

    return-void
.end method

.method private dpToPx(I)I
    .locals 1

    int-to-float p1, p1

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private initRootView()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/utils/KeyboardUtil;->rootView:Landroid/view/View;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/utils/KeyboardUtil$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/utils/KeyboardUtil$1;-><init>(Lcom/qianhe/yct/utils/KeyboardUtil;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
