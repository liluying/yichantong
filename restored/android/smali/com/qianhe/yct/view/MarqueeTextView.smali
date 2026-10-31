.class public Lcom/qianhe/yct/view/MarqueeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MarqueeTextView.java"


# instance fields
.field private marqueeEnabled:Z

.field private xmlEllipsize:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 20
    iput-boolean p3, p0, Lcom/qianhe/yct/view/MarqueeTextView;->marqueeEnabled:Z

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/view/MarqueeTextView;->xmlEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/qianhe/yct/view/MarqueeTextView;->xmlEllipsize:Landroid/text/TextUtils$TruncateAt;

    :cond_0
    if-eqz p2, :cond_1

    .line 38
    sget-object v0, Lcom/qianhe/yct/R$styleable;->MarqueeTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/qianhe/yct/R$styleable;->MarqueeTextView_marqueeEnabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/view/MarqueeTextView;->marqueeEnabled:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/MarqueeTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 47
    iget-boolean v0, p0, Lcom/qianhe/yct/view/MarqueeTextView;->marqueeEnabled:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, -0x1

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/MarqueeTextView;->xmlEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :goto_0
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/qianhe/yct/view/MarqueeTextView;->marqueeEnabled:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/qianhe/yct/view/MarqueeTextView;->marqueeEnabled:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public setMarqueeEnabled(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/qianhe/yct/view/MarqueeTextView;->marqueeEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method
