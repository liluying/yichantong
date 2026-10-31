.class public Lcom/qianhe/yct/utils/PreciseClickMovementMethod;
.super Landroid/text/method/BaseMovementMethod;
.source "PreciseClickMovementMethod.java"


# static fields
.field private static instance:Lcom/qianhe/yct/utils/PreciseClickMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qianhe/yct/utils/PreciseClickMovementMethod;
    .locals 1

    .line 20
    sget-object v0, Lcom/qianhe/yct/utils/PreciseClickMovementMethod;->instance:Lcom/qianhe/yct/utils/PreciseClickMovementMethod;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/qianhe/yct/utils/PreciseClickMovementMethod;

    invoke-direct {v0}, Lcom/qianhe/yct/utils/PreciseClickMovementMethod;-><init>()V

    sput-object v0, Lcom/qianhe/yct/utils/PreciseClickMovementMethod;->instance:Lcom/qianhe/yct/utils/PreciseClickMovementMethod;

    .line 23
    :cond_0
    sget-object v0, Lcom/qianhe/yct/utils/PreciseClickMovementMethod;->instance:Lcom/qianhe/yct/utils/PreciseClickMovementMethod;

    return-object v0
.end method

.method private getSpanRect(Landroid/text/Layout;II)Landroid/graphics/RectF;
    .locals 3

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 82
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 83
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 86
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p2

    .line 87
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p3

    .line 90
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    .line 91
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    int-to-float p1, p1

    .line 93
    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 94
    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 95
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 96
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 28
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 32
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 33
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr p3, v3

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr p3, v3

    .line 41
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 42
    invoke-virtual {v3, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 45
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    .line 46
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    int-to-float v0, v0

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_1

    cmpl-float v5, v0, v6

    if-lez v5, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v3, v4, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 56
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 58
    array-length v5, v4

    if-lez v5, :cond_1

    .line 60
    aget-object v5, v4, v1

    invoke-interface {p2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 61
    aget-object v6, v4, v1

    invoke-interface {p2, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    .line 64
    invoke-direct {p0, v3, v5, p2}, Lcom/qianhe/yct/utils/PreciseClickMovementMethod;->getSpanRect(Landroid/text/Layout;II)Landroid/graphics/RectF;

    move-result-object p2

    int-to-float p3, p3

    .line 66
    invoke-virtual {p2, v0, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 67
    aget-object p2, v4, v1

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return v2

    :cond_1
    :goto_0
    return v1
.end method
