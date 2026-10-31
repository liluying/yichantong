.class public Lcom/qianhe/yct/adapter/PointGroupListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PointGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final format:Ljava/text/SimpleDateFormat;

.field private final idStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMultiple:Z

.field private final mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

.field private showSelUi:Z


# direct methods
.method public static synthetic $r8$lambda$3RJTuXtHFHR1hyZNKhzFDGyrEI8(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;Landroid/view/View;)V
    .locals 2

    .line 69
    iget-boolean p3, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi:Z

    if-nez p3, :cond_0

    .line 70
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onClick(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void

    .line 72
    :cond_0
    iget-object p2, p2, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-nez p2, :cond_2

    .line 73
    iget-boolean p2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->isMultiple:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 74
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 75
    iget-object p2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    .line 78
    iget-object p2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public static synthetic $r8$lambda$AwwLSoovCAf4uY9dXpELpahWxuI(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p3, 0x3

    .line 114
    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$aljjgBX4g2MyORGDXTltjswhiCQ(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Landroid/view/View;)Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi:Z

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$hVkU996mlikVxEUfBFbU3QIHwpE(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p3, 0x2

    .line 110
    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$lkrhjae5gbqXHFH-2vtTk5PXQj4(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 102
    iget-object p3, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    .line 102
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 103
    iget-object p3, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    iget-object p3, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p3, v0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz p0, :cond_2

    const/4 p3, 0x1

    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 107
    :cond_2
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    iput-object p2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_point_group_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 98
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 101
    sget v2, Lcom/qianhe/yct/R$id;->tvDelete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v2, Lcom/qianhe/yct/R$id;->tvModify:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v2, Lcom/qianhe/yct/R$id;->tvExport:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x2

    .line 121
    new-array v5, v2, [I

    .line 122
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 123
    aget v3, v5, v3

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 125
    iget-object v6, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, p2

    div-int/2addr v7, v2

    add-int/2addr v3, v5

    add-int/2addr v3, v0

    add-int/lit16 v6, v6, -0x96

    if-le v3, v6, :cond_0

    neg-int p2, v0

    sub-int v4, p2, v5

    :cond_0
    const p2, 0x800003

    .line 129
    invoke-virtual {v1, p1, v7, v4, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public closeSelUi()V
    .locals 2

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi:Z

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 31
    check-cast p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;I)V
    .locals 9
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 55
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v1, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    .line 61
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->tvFrom:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyLocaleNameStyle(Landroid/widget/TextView;)V

    .line 63
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-wide v2, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 65
    iget-object v2, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    const/16 v5, 0xa

    if-ne v0, v5, :cond_2

    iget-wide v5, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    goto :goto_0

    :cond_2
    iget-wide v5, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->createTime:J

    :goto_0
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v3, p2, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 67
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->fltSel:Landroid/view/View;

    iget-boolean v2, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p1, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/PointGroupListAdapter;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_projectlist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshIdStrList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selecteAll(Z)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mData:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 165
    iget-object v1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->idStrList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;->onSelItem(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/PointGroupEntity;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->mData:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;

    return-void
.end method

.method public showSelUi(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi:Z

    .line 144
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->isMultiple:Z

    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
