.class public Lcom/qianhe/yct/view/ToothView;
.super Landroid/widget/FrameLayout;
.source "ToothView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/ToothView$OnToothClickListener;,
        Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_VISIBLE_COUNT:I = 0x3

.field public static final INSTRUMENT_COLLECT:I = 0x5

.field public static final LEFT:I = 0x0

.field public static final MIDDLE:I = 0x1

.field public static final NONE:I = -0x1

.field public static final POINT_LIB:I = 0x3

.field public static final RIGTH:I = 0x2

.field public static final START_COLLECT:I = 0x4


# instance fields
.field private cachedUniformItemHeight:I

.field private cachedUniformWidth:I

.field private isH5pro:Z

.field private ivLeft:Landroid/widget/ImageView;

.field private ivMiddle:Landroid/widget/ImageView;

.field private ivRigth:Landroid/widget/ImageView;

.field private listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

.field private lltInstrumentCollect:Landroid/widget/LinearLayout;

.field private lltLeftTooth:Landroid/widget/LinearLayout;

.field private lltMiddleTooth:Landroid/widget/LinearLayout;

.field private lltPointLib:Landroid/widget/LinearLayout;

.field private lltRigthTooth:Landroid/widget/LinearLayout;

.field private lltStartCollect:Landroid/widget/LinearLayout;

.field private longClickListener:Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;

.field private maxVisibleCount:I

.field private final optionTextViews:[Landroidx/appcompat/widget/AppCompatTextView;

.field private optionsContainer:Landroid/widget/LinearLayout;

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private showPointLib:Z

.field private tvInstrumentCollect:Landroidx/appcompat/widget/AppCompatTextView;

.field private tvLeft:Landroidx/appcompat/widget/AppCompatTextView;

.field private tvMiddle:Landroidx/appcompat/widget/AppCompatTextView;

.field private tvPointsLib:Landroidx/appcompat/widget/AppCompatTextView;

.field private tvRigth:Landroidx/appcompat/widget/AppCompatTextView;

.field private tvStartCollect:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public static synthetic $r8$lambda$AQTUd3uDhcI3foijOpE2GWj4wUA(Lcom/qianhe/yct/view/ToothView;Landroid/view/View;)Z
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/qianhe/yct/view/ToothView;->longClickListener:Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    .line 361
    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;->onToothLongClick(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$DtHijuZfqmr3LnYKAuXmxPcHqPg(Lcom/qianhe/yct/view/ToothView;Landroid/view/View;)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/qianhe/yct/view/ToothView;->listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x3

    .line 344
    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ToothView$OnToothClickListener;->onToothClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$P-rdAGvNUP2wwpt2ximj-XuawiY(Lcom/qianhe/yct/view/ToothView;Landroid/view/View;)V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/qianhe/yct/view/ToothView;->listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    .line 356
    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ToothView$OnToothClickListener;->onToothClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$UPDalRXHifgAI6D4FfxH7UxmJXM(Lcom/qianhe/yct/view/ToothView;Landroid/view/View;)V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/qianhe/yct/view/ToothView;->listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 300
    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ToothView$OnToothClickListener;->onToothClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$URQ2qEDGxwe2cJ0cihPHs-Eoi70(Lcom/qianhe/yct/view/ToothView;Landroid/view/View;)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/qianhe/yct/view/ToothView;->listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    .line 328
    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ToothView$OnToothClickListener;->onToothClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$mhwIV0hSHoaJJH-OFUwTUZyr2kQ(Lcom/qianhe/yct/view/ToothView;Landroid/view/View;)V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/qianhe/yct/view/ToothView;->listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    .line 350
    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ToothView$OnToothClickListener;->onToothClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$q_w8-B8VZp0OtIF9unJqnfZQdbM(Lcom/qianhe/yct/view/ToothView;Landroid/view/View;)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/qianhe/yct/view/ToothView;->listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 314
    invoke-interface {p0, p1}, Lcom/qianhe/yct/view/ToothView$OnToothClickListener;->onToothClick(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ToothView;->showPointLib:Z

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->maxVisibleCount:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformItemHeight:I

    .line 49
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformWidth:I

    const/4 v0, 0x6

    .line 50
    new-array v0, v0, [Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/qianhe/yct/view/ToothView;->optionTextViews:[Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/qianhe/yct/view/ToothView;->showPointLib:Z

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->maxVisibleCount:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformItemHeight:I

    .line 49
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformWidth:I

    const/4 v0, 0x6

    .line 50
    new-array v0, v0, [Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/qianhe/yct/view/ToothView;->optionTextViews:[Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/ToothView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 43
    iput-boolean p3, p0, Lcom/qianhe/yct/view/ToothView;->showPointLib:Z

    const/4 p3, 0x3

    .line 47
    iput p3, p0, Lcom/qianhe/yct/view/ToothView;->maxVisibleCount:I

    const/4 p3, -0x1

    .line 48
    iput p3, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformItemHeight:I

    .line 49
    iput p3, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformWidth:I

    const/4 p3, 0x6

    .line 50
    new-array p3, p3, [Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/qianhe/yct/view/ToothView;->optionTextViews:[Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/ToothView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private applyItemHeightToRows(I)V
    .locals 4

    const/4 v0, 0x0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 242
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, p1, :cond_0

    .line 243
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyScrollMaxHeight(I)V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_3

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothView;->getVisibleOptionViews()Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothView;->ensureUniformItemHeight(I)I

    move-result v1

    .line 166
    iget v2, p0, Lcom/qianhe/yct/view/ToothView;->maxVisibleCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    if-lez v4, :cond_1

    .line 171
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    :cond_1
    add-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/qianhe/yct/view/ToothView;->maxVisibleCount:I

    const/4 v4, 0x1

    if-le v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const/4 v5, -0x2

    .line 186
    :goto_2
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v5, :cond_7

    .line 187
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_8

    if-lez p1, :cond_8

    const/4 v3, 0x1

    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 191
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method private ensureUniformItemHeight(I)I
    .locals 9

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothView;->getOptionsContentWidth(I)I

    move-result p1

    .line 210
    iget v1, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformWidth:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformItemHeight:I

    if-lez v1, :cond_1

    .line 211
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/ToothView;->applyItemHeightToRows(I)V

    .line 212
    iget p1, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformItemHeight:I

    return p1

    .line 215
    :cond_1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 217
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothView;->optionTextViews:[Landroidx/appcompat/widget/AppCompatTextView;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    .line 218
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v8, v7

    .line 220
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 221
    invoke-virtual {v6, v7, v1}, Landroid/view/View;->measure(II)V

    .line 222
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    :cond_2
    iput p1, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformWidth:I

    .line 226
    iput v5, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformItemHeight:I

    .line 227
    invoke-direct {p0, v5}, Lcom/qianhe/yct/view/ToothView;->applyItemHeightToRows(I)V

    return v5
.end method

.method private getOptionsContentWidth(I)I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 235
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getVisibleOptionViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 80
    sget-object v0, Lcom/qianhe/yct/R$styleable;->ToothView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    sget p2, Lcom/qianhe/yct/R$styleable;->ToothView_showPointLib:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/view/ToothView;->showPointLib:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$layout;->tooth_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p1

    iput-boolean p1, p0, Lcom/qianhe/yct/view/ToothView;->isH5pro:Z

    .line 90
    sget p1, Lcom/qianhe/yct/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 91
    sget p1, Lcom/qianhe/yct/R$id;->lltOptionsContainer:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->optionsContainer:Landroid/widget/LinearLayout;

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollBarFadeDuration(I)V

    .line 93
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7fffffff

    invoke-virtual {p1, v2}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothView;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 98
    sget p1, Lcom/qianhe/yct/R$id;->lltLeftTooth:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->lltLeftTooth:Landroid/widget/LinearLayout;

    .line 99
    sget p1, Lcom/qianhe/yct/R$id;->lltMiddleTooth:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->lltMiddleTooth:Landroid/widget/LinearLayout;

    .line 100
    sget p1, Lcom/qianhe/yct/R$id;->lltRigthTooth:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->lltRigthTooth:Landroid/widget/LinearLayout;

    .line 101
    sget p1, Lcom/qianhe/yct/R$id;->lltPointLib:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->lltPointLib:Landroid/widget/LinearLayout;

    .line 102
    sget p1, Lcom/qianhe/yct/R$id;->lltStartCollect:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->lltStartCollect:Landroid/widget/LinearLayout;

    .line 103
    sget p1, Lcom/qianhe/yct/R$id;->lltInstrumentCollect:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->lltInstrumentCollect:Landroid/widget/LinearLayout;

    .line 105
    sget p1, Lcom/qianhe/yct/R$id;->tvLeft:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->tvLeft:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    sget p1, Lcom/qianhe/yct/R$id;->tvMiddle:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->tvMiddle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    sget p1, Lcom/qianhe/yct/R$id;->tvRigth:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->tvRigth:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    sget p1, Lcom/qianhe/yct/R$id;->tvPointsLib:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->tvPointsLib:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    sget p1, Lcom/qianhe/yct/R$id;->tvStartCollect:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->tvStartCollect:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    sget p1, Lcom/qianhe/yct/R$id;->tvInstrumentCollect:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->tvInstrumentCollect:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothView;->optionTextViews:[Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/qianhe/yct/view/ToothView;->tvLeft:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v3, v2, v0

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->tvMiddle:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    .line 113
    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->tvRigth:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 114
    iget-object v1, p0, Lcom/qianhe/yct/view/ToothView;->tvStartCollect:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 115
    aput-object p1, v2, v0

    const/4 p1, 0x5

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->tvPointsLib:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v0, v2, p1

    .line 119
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothView;->updateVisibility()V

    .line 122
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothView;->setClickListeners()V

    return-void
.end method

.method private requestAllParentsDisallowIntercept(Z)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 148
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setClickListeners()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltLeftTooth:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/ToothView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltMiddleTooth:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/ToothView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltRigthTooth:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/view/ToothView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltPointLib:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/view/ToothView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltStartCollect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/view/ToothView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltInstrumentCollect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/view/ToothView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltInstrumentCollect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothView$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/view/ToothView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private updateVisibility()V
    .locals 4

    .line 269
    iget-boolean v0, p0, Lcom/qianhe/yct/view/ToothView;->isH5pro:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltLeftTooth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltMiddleTooth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltRigthTooth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltPointLib:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/qianhe/yct/view/ToothView;->showPointLib:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltStartCollect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltLeftTooth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltMiddleTooth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltRigthTooth:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltPointLib:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/qianhe/yct/view/ToothView;->showPointLib:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothView;->lltStartCollect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v0, -0x1

    .line 284
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformItemHeight:I

    .line 285
    iput v0, p0, Lcom/qianhe/yct/view/ToothView;->cachedUniformWidth:I

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/ToothView;->requestAllParentsDisallowIntercept(Z)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/ToothView;->requestAllParentsDisallowIntercept(Z)V

    .line 140
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 155
    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/ToothView;->applyScrollMaxHeight(I)V

    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurrentType(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setOnToothClickListener(Lcom/qianhe/yct/view/ToothView$OnToothClickListener;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->listener:Lcom/qianhe/yct/view/ToothView$OnToothClickListener;

    return-void
.end method

.method public setOnToothLongClickListener(Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/qianhe/yct/view/ToothView;->longClickListener:Lcom/qianhe/yct/view/ToothView$OnToothLongClickListener;

    return-void
.end method
