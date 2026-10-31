.class public Lcom/qianhe/yct/adapter/EngineeringListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EngineeringListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final format:Ljava/text/SimpleDateFormat;

.field private final idStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

.field private showSelUi:Z


# direct methods
.method public static synthetic $r8$lambda$4rfvjtvrJA8qy-n1Pt0Xe9ghyeQ(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;Landroid/view/View;)V
    .locals 2

    .line 78
    iget-boolean p3, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi:Z

    if-nez p3, :cond_1

    .line 79
    iget-object p0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onItemClick(Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object p2, p2, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-nez p2, :cond_3

    .line 82
    iget-boolean p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->isMultiple:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_3
    iget-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_4

    iget-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 88
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$ElYjL9vNhlNzDvgwZ1RootV5URM(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Landroid/view/View;)Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi:Z

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$h6ooJC_0vxm-3Cism8_b1xCpNvc(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    const/4 p3, 0x2

    .line 120
    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 121
    :cond_0
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$vu0AKUIxlk6A2qudYcb1OQW1uQE(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object p3, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    .line 110
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 111
    iget-object p3, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object p3, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    iget-object p3, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {p3, v0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz p0, :cond_2

    const/4 p3, 0x1

    invoke-interface {p0, p3, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onMenuAction(ILcom/qianhe/baselib/bean/EngineeringEntity;)V

    .line 116
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
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
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

    iput-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->format:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    iput-object p2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/EngineeringEntity;)V
    .locals 8

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_engineering_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 105
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 106
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 109
    sget v2, Lcom/qianhe/yct/R$id;->tvDelete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v2, Lcom/qianhe/yct/R$id;->tvModify:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x2

    .line 128
    new-array v5, v2, [I

    .line 129
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 130
    aget v3, v5, v3

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 132
    iget-object v6, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 134
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

    .line 143
    invoke-virtual {v1, p1, v7, v4, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public closeSelUi()V
    .locals 2

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi:Z

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mData:Ljava/util/List;

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

    .line 32
    check-cast p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 57
    iget-boolean v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    .line 62
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyLocaleNameStyle(Landroid/widget/TextView;)V

    .line 63
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-wide v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->createTime:J

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 66
    :cond_2
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->format:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget v0, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 69
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->fltSel:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 77
    iget-object v0, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p1, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/EngineeringListAdapter;Lcom/qianhe/baselib/bean/EngineeringEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_engineering:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

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

    .line 194
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectAll(Z)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 160
    iget-object v1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 164
    iget-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public selectCurrentItem()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/EngineeringEntity;

    .line 177
    iget v2, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->currentUsage:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/EngineeringEntity;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 183
    iget-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->idStrList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;->onSelItem(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/EngineeringEntity;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->mData:Ljava/util/List;

    .line 153
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/EngineeringListAdapter$OnActionListener;

    return-void
.end method

.method public showSelUi(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->showSelUi:Z

    .line 169
    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter;->isMultiple:Z

    .line 170
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
