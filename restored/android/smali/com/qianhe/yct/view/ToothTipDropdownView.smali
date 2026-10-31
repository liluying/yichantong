.class public Lcom/qianhe/yct/view/ToothTipDropdownView;
.super Landroid/widget/RelativeLayout;
.source "ToothTipDropdownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final MIDDLE:I = 0x1

.field public static final NONE:I = -0x1

.field public static final RIGHTH:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private isExpanded:Z

.field private items:[Landroid/widget/TextView;

.field private ivArrow:Landroid/widget/ImageView;

.field private ivICon:Landroid/widget/ImageView;

.field private lastType:I

.field private listener:Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private final resList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tvTooth:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$DgpPgBcMAD0_NoVHUGkUOD6tjiA(Lcom/qianhe/yct/view/ToothTipDropdownView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->collapseDropdown()V

    return-void
.end method

.method public static synthetic $r8$lambda$IJXx_ULg-iw13CCVBhpxp2XhyrQ(Lcom/qianhe/yct/view/ToothTipDropdownView;Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->toggleDropdown()V

    return-void
.end method

.method public static synthetic $r8$lambda$IgdKygr63rE2tqs4CI-FMW4CEvI(Lcom/qianhe/yct/view/ToothTipDropdownView;ILandroid/view/View;)V
    .locals 1

    .line 89
    iget-object p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->ivICon:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->resList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvTooth:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iput p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    .line 92
    iget-object p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->listener:Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;->onTypeSelected(I)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->collapseDropdown()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/ToothTipDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/ToothTipDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->isExpanded:Z

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->resList:Ljava/util/List;

    const/4 p2, -0x1

    .line 37
    iput p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    .line 51
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private collapseDropdown()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 196
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    iput-boolean v1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->isExpanded:Z

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->ivArrow:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_arrow_down_big:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private expandDropdown()V
    .locals 9

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 149
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v2, 0x2

    .line 152
    new-array v2, v2, [I

    .line 153
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 157
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 160
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 161
    invoke-virtual {p0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 162
    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    .line 165
    aget v6, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    sub-int/2addr v3, v4

    .line 167
    aget v6, v2, v5

    sub-int v4, v6, v4

    const/16 v7, 0xa

    if-lt v3, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    const v8, 0x800033

    if-lt v4, v0, :cond_1

    .line 175
    iget-object v3, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    aget v1, v2, v1

    sub-int/2addr v6, v0

    invoke-virtual {v3, p0, v8, v1, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    if-lt v3, v4, :cond_2

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    aget v1, v2, v1

    sub-int/2addr v6, v0

    invoke-virtual {v3, p0, v8, v1, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 187
    :goto_0
    iput-boolean v5, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->isExpanded:Z

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->ivArrow:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_arrow_up_big:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$layout;->item_tooth_dropdown:I

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v1

    .line 85
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 88
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v3, Lcom/qianhe/yct/view/ToothTipDropdownView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/qianhe/yct/view/ToothTipDropdownView$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/ToothTipDropdownView;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    iget v1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->ivICon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->resList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvTooth:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    iget v5, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->roll_popup_window:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 102
    sget v2, Lcom/qianhe/yct/R$id;->container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 103
    iget-object v3, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->items:[Landroid/widget/TextView;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 104
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 107
    :cond_3
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->measure(II)V

    .line 108
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    .line 109
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_round_white:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 114
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/qianhe/yct/view/ToothTipDropdownView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/ToothTipDropdownView$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/view/ToothTipDropdownView;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .line 55
    iput-object p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->context:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    sget v1, Lcom/qianhe/yct/R$string;->left_tooth:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    sget v1, Lcom/qianhe/yct/R$string;->center_tooth:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvList:Ljava/util/List;

    sget v1, Lcom/qianhe/yct/R$string;->rigth_tooth:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->resList:Ljava/util/List;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_tooth_left_sel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->resList:Ljava/util/List;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_tooth_middle_sel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->resList:Ljava/util/List;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_tooth_rigth_sel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->tooth_tip_dropdown:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    sget v0, Lcom/qianhe/yct/R$id;->ivICon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->ivICon:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/qianhe/yct/R$id;->tvTooth:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->tvTooth:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/qianhe/yct/R$id;->ivArrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->ivArrow:Landroid/widget/ImageView;

    .line 69
    sget v0, Lcom/qianhe/yct/R$id;->root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/view/ToothTipDropdownView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/ToothTipDropdownView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/ToothTipDropdownView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 74
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 75
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 77
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method private toggleDropdown()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->isExpanded:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->collapseDropdown()V

    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/ToothTipDropdownView;->expandDropdown()V

    return-void
.end method


# virtual methods
.method public getToothType()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    return v0
.end method

.method public init(Landroid/content/Context;D)V
    .locals 5

    .line 118
    iget v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, p2, v2

    if-lez v4, :cond_0

    cmpg-double v4, p2, v0

    if-gez v4, :cond_0

    const/4 p2, 0x1

    .line 120
    iput p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    goto :goto_0

    :cond_0
    cmpg-double v4, p2, v2

    if-gtz v4, :cond_1

    const/4 p2, 0x0

    .line 122
    iput p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    goto :goto_0

    :cond_1
    cmpl-double v2, p2, v0

    if-ltz v2, :cond_2

    const/4 p2, 0x2

    .line 124
    iput p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    .line 126
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->initPopupWindow(Landroid/content/Context;)V

    .line 127
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->listener:Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    invoke-interface {p1, p2}, Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;->onTypeSelected(I)V

    :cond_3
    return-void
.end method

.method public setOnSelectedListener(Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->listener:Lcom/qianhe/yct/view/ToothTipDropdownView$OnSelectedListener;

    return-void
.end method

.method public setToothType(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->resList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->lastType:I

    .line 217
    iget-object p1, p0, Lcom/qianhe/yct/view/ToothTipDropdownView;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/ToothTipDropdownView;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method
