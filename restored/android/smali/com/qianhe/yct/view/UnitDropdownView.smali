.class public Lcom/qianhe/yct/view/UnitDropdownView;
.super Landroid/widget/LinearLayout;
.source "UnitDropdownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private isExpanded:Z

.field private items:[Landroid/widget/TextView;

.field private ivArrow:Landroid/widget/ImageView;

.field private lastUnitType:I

.field private listener:Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private tvSelectedUnit:Landroid/widget/TextView;

.field private final unitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3sj-ieM_SpgbhG0-4PHzhY1zn1U(Lcom/qianhe/yct/view/UnitDropdownView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/view/UnitDropdownView;->collapseDropdown()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xi-C-QwtOcgvnAAR4DTvvHN6qMc(Lcom/qianhe/yct/view/UnitDropdownView;ILandroid/view/View;)V
    .locals 0

    .line 105
    iget-object p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    .line 105
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/UnitDropdownView;->setSelectedUnitText(Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lcom/qianhe/baselib/enums/UnitEnum;->selectableIndexToType(I)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    .line 107
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    iget p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/manage/AppConfigManager;->setUnitPreference(I)V

    .line 108
    invoke-direct {p0}, Lcom/qianhe/yct/view/UnitDropdownView;->collapseDropdown()V

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->listener:Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    invoke-interface {p1, p0}, Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;->onUnitSelected(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$t3OcD7JxBScBhrwlTS4KyMrheSE(Lcom/qianhe/yct/view/UnitDropdownView;Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/qianhe/yct/view/UnitDropdownView;->toggleDropdown()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/qianhe/yct/view/UnitDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/qianhe/yct/view/UnitDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 33
    iput-boolean p3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->isExpanded:Z

    .line 37
    new-instance p3, Lcom/qianhe/yct/view/UnitDropdownView$1;

    invoke-direct {p3, p0}, Lcom/qianhe/yct/view/UnitDropdownView$1;-><init>(Lcom/qianhe/yct/view/UnitDropdownView;)V

    iput-object p3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    .line 56
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result p3

    iput p3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/view/UnitDropdownView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private collapseDropdown()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 195
    iget v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    invoke-static {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->typeToSelectableIndex(I)I

    move-result v0

    const/4 v2, 0x0

    .line 196
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 197
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-ne v0, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iput-boolean v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->isExpanded:Z

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->ivArrow:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private expandDropdown()V
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 158
    iget-object v2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v2, 0x2

    .line 160
    new-array v2, v2, [I

    .line 161
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 164
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 166
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 167
    invoke-virtual {p0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 168
    iget v4, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    .line 170
    aget v6, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    sub-int/2addr v3, v4

    .line 172
    aget v6, v2, v5

    sub-int v4, v6, v4

    const/16 v7, 0xa

    if-lt v3, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    const v8, 0x800033

    if-lt v4, v0, :cond_1

    .line 177
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    aget v1, v2, v1

    sub-int/2addr v6, v0

    invoke-virtual {v3, p0, v8, v1, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    if-lt v3, v4, :cond_2

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    aget v1, v2, v1

    sub-int/2addr v6, v0

    invoke-virtual {v3, p0, v8, v1, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 186
    :goto_0
    iput-boolean v5, p0, Lcom/qianhe/yct/view/UnitDropdownView;->isExpanded:Z

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->ivArrow:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private forceHorizontalParentLtr()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 214
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 215
    check-cast v0, Landroid/widget/LinearLayout;

    .line 216
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    .line 97
    iget v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    invoke-static {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->typeToSelectableIndex(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 99
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/qianhe/yct/R$layout;->item_dropdown:I

    invoke-virtual {v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v3, v2

    .line 100
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u200e"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/View;->setTextDirection(I)V

    .line 102
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    new-instance v4, Lcom/qianhe/yct/view/UnitDropdownView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lcom/qianhe/yct/view/UnitDropdownView$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/view/UnitDropdownView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/view/UnitDropdownView;->setSelectedUnitText(Ljava/lang/String;)V

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$layout;->popup_window:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    sget v2, Lcom/qianhe/yct/R$id;->container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 115
    iget-object v3, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 116
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 118
    :cond_3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 119
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    .line 120
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_round_white:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 123
    iget-object p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/qianhe/yct/view/UnitDropdownView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/view/UnitDropdownView$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/view/UnitDropdownView;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 62
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 66
    invoke-virtual {p0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->view_custom_dropdown:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    sget v1, Lcom/qianhe/yct/R$id;->tvSelected:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->tvSelectedUnit:Landroid/widget/TextView;

    .line 70
    sget v1, Lcom/qianhe/yct/R$id;->ivArrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->ivArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 73
    sget-object v1, Lcom/qianhe/yct/R$styleable;->UnitDropdownView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 75
    :try_start_0
    sget v1, Lcom/qianhe/yct/R$styleable;->UnitDropdownView_enabled:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->enabled:Z

    .line 76
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/view/UnitDropdownView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    throw p1

    .line 81
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->tvSelectedUnit:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 82
    iget-object p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 83
    new-instance p2, Lcom/qianhe/yct/view/UnitDropdownView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/view/UnitDropdownView$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/view/UnitDropdownView;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 85
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/UnitDropdownView;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method private normalizeMarginStartToLeft()V
    .locals 3

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 224
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 228
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    if-lez v1, :cond_1

    .line 229
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v2, :cond_1

    .line 230
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v1, 0x0

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSelectedUnitText(Ljava/lang/String;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->tvSelectedUnit:Landroid/widget/TextView;

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

    .line 144
    iget-boolean v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-boolean v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->isExpanded:Z

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/qianhe/yct/view/UnitDropdownView;->collapseDropdown()V

    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/view/UnitDropdownView;->expandDropdown()V

    return-void
.end method


# virtual methods
.method public getCurrnetUnit()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    return v0
.end method

.method public getSelectedUnitText()Ljava/lang/String;
    .locals 2

    .line 258
    iget v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    invoke-static {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->typeToSelectableIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public initUnit(Landroid/content/Context;I)V
    .locals 0

    .line 127
    invoke-static {p2}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p2

    iput p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    .line 128
    invoke-direct {p0, p1}, Lcom/qianhe/yct/view/UnitDropdownView;->initPopupWindow(Landroid/content/Context;)V

    .line 129
    iget-object p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->listener:Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    invoke-interface {p1, p2}, Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;->onUnitSelected(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 207
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 208
    invoke-direct {p0}, Lcom/qianhe/yct/view/UnitDropdownView;->forceHorizontalParentLtr()V

    .line 209
    invoke-direct {p0}, Lcom/qianhe/yct/view/UnitDropdownView;->normalizeMarginStartToLeft()V

    return-void
.end method

.method public setCurrnetUnit(Landroid/content/Context;I)V
    .locals 3

    .line 241
    invoke-static {p2}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p1

    .line 242
    iput p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->lastUnitType:I

    .line 243
    invoke-static {p1}, Lcom/qianhe/baselib/enums/UnitEnum;->typeToSelectableIndex(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 244
    iget-object p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_2

    .line 245
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/qianhe/yct/view/UnitDropdownView;->setSelectedUnitText(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->unitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->items:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 134
    iput-boolean p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->enabled:Z

    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 136
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 137
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->tvSelectedUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/view/UnitDropdownView;->ivArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnUnitSelectedListener(Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/qianhe/yct/view/UnitDropdownView;->listener:Lcom/qianhe/yct/view/UnitDropdownView$OnUnitSelectedListener;

    return-void
.end method
