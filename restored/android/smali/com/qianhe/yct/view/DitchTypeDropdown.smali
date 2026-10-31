.class public Lcom/qianhe/yct/view/DitchTypeDropdown;
.super Landroid/widget/RelativeLayout;
.source "DitchTypeDropdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;
    }
.end annotation


# static fields
.field public static final DIG:I = 0x0

.field public static final FILL:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private isExpanded:Z

.field private items:[Landroid/widget/TextView;

.field private ivArrow:Landroid/widget/ImageView;

.field private lastType:I

.field private listener:Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private tvSelected:Landroid/widget/TextView;

.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5AcD-teAWuMOVfVVurPlJbVRCCs(Lcom/qianhe/yct/view/DitchTypeDropdown;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->collapseDropdown()V

    return-void
.end method

.method public static synthetic $r8$lambda$MSH2iillRsUZsG7LvmriupQFXEo(Lcom/qianhe/yct/view/DitchTypeDropdown;ILandroid/view/View;)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    .line 91
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 92
    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setSelectedTypeText(Ljava/lang/String;)V

    .line 93
    iput p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    .line 94
    iget-object p2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->listener:Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;->onTypeSelected(I)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->collapseDropdown()V

    return-void
.end method

.method public static synthetic $r8$lambda$cLSNnGHJzo2l5o4t9_Xo-wqOPQc(Lcom/qianhe/yct/view/DitchTypeDropdown;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->toggleDropdown()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/DitchTypeDropdown;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/DitchTypeDropdown;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->isExpanded:Z

    .line 36
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    .line 37
    iput p2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    .line 51
    sget p2, Lcom/qianhe/yct/R$string;->dig:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    sget p3, Lcom/qianhe/yct/R$string;->fill:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private collapseDropdown()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 236
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    iput-boolean v1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->isExpanded:Z

    .line 243
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->ivArrow:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private expandDropdown()V
    .locals 9

    .line 179
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 182
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 183
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 182
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 187
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v2, 0x2

    .line 190
    new-array v2, v2, [I

    .line 191
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 195
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 198
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 199
    invoke-virtual {p0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 200
    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    .line 203
    aget v6, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    sub-int/2addr v3, v4

    .line 205
    aget v6, v2, v5

    sub-int v4, v6, v4

    const/16 v7, 0xa

    if-lt v3, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    const v8, 0x800033

    if-lt v4, v0, :cond_1

    .line 213
    iget-object v3, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    aget v1, v2, v1

    sub-int/2addr v6, v0

    invoke-virtual {v3, p0, v8, v1, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    if-lt v3, v4, :cond_2

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    aget v1, v2, v1

    sub-int/2addr v6, v0

    invoke-virtual {v3, p0, v8, v1, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 227
    :goto_0
    iput-boolean v5, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->isExpanded:Z

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->ivArrow:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private forceHorizontalParentLtr()V
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Landroid/widget/LinearLayout;

    .line 148
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private initPopupWindow()V
    .locals 8

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    iget-object v5, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/qianhe/yct/R$layout;->item_dropdown:I

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v2, v1

    .line 86
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u200e"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 88
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 90
    iget-object v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v3, Lcom/qianhe/yct/view/DitchTypeDropdown$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/DitchTypeDropdown;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    iget v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setSelectedTypeText(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->popup_window:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    sget v2, Lcom/qianhe/yct/R$id;->container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 102
    iget-object v3, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 103
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 106
    :cond_2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->measure(II)V

    .line 107
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    .line 108
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 109
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->context:Landroid/content/Context;

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_round_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/qianhe/yct/view/DitchTypeDropdown$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/view/DitchTypeDropdown$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/view/DitchTypeDropdown;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 57
    iput-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/qianhe/yct/R$layout;->view_dithtype_dropdown:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    sget p1, Lcom/qianhe/yct/R$id;->tvSelected:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->tvSelected:Landroid/widget/TextView;

    .line 62
    sget p1, Lcom/qianhe/yct/R$id;->ivArrow:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->ivArrow:Landroid/widget/ImageView;

    .line 63
    iget-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->tvSelected:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 66
    sget p1, Lcom/qianhe/yct/R$id;->root:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/view/DitchTypeDropdown$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/DitchTypeDropdown$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/DitchTypeDropdown;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 74
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->initPopupWindow()V

    return-void
.end method

.method private normalizeMarginStartToLeft()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 156
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    if-lez v1, :cond_1

    .line 161
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v2, :cond_1

    .line 162
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSelectedTypeText(Ljava/lang/String;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->tvSelected:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toggleDropdown()V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->isExpanded:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->collapseDropdown()V

    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->expandDropdown()V

    return-void
.end method


# virtual methods
.method public getCurrentType()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 139
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 140
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->forceHorizontalParentLtr()V

    .line 141
    invoke-direct {p0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->normalizeMarginStartToLeft()V

    return-void
.end method

.method public setCurrentType(I)V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(IZ)V

    return-void
.end method

.method public setCurrentType(IZ)V
    .locals 3

    .line 121
    iput p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    .line 122
    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->tvSelected:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->typeList:Ljava/util/List;

    iget v0, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setSelectedTypeText(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->items:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 127
    aget-object v1, v1, v0

    iget v2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->listener:Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->lastType:I

    invoke-interface {p1, p2}, Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;->onTypeSelected(I)V

    :cond_3
    return-void
.end method

.method public setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/qianhe/yct/view/DitchTypeDropdown;->listener:Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;

    return-void
.end method
