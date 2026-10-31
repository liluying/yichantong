.class public Lcom/qianhe/yct/adapter/HostListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HostListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/HostListAdapter$OnActionListener;,
        Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private currentUsedCorsId:J

.field private currentUsedCorsName:Ljava/lang/String;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnActionListener;

.field private onMenuListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;


# direct methods
.method public static synthetic $r8$lambda$TVgKjIt63X8zA4R0NvUOd2-91z0(Lcom/qianhe/yct/adapter/HostListAdapter;Landroid/widget/PopupWindow;Lcom/qianhe/baselib/bean/CorsEntity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 100
    invoke-direct {p0, p2}, Lcom/qianhe/yct/adapter/HostListAdapter;->isCurrentUsedProvider(Lcom/qianhe/baselib/bean/CorsEntity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->onMenuListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;->onDeleteCurrentBlocked()V

    return-void

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->onMenuListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;->onDelete(Lcom/qianhe/baselib/bean/CorsEntity;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$aUv6_Vv7AnMM7lbvys3nTuUm3g4(Lcom/qianhe/yct/adapter/HostListAdapter;Landroid/widget/PopupWindow;Lcom/qianhe/baselib/bean/CorsEntity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 95
    iget-object p0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->onMenuListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;->onEdit(Lcom/qianhe/baselib/bean/CorsEntity;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$pbM0ETDCZThTQh5PVEO5sbr_vuQ(Lcom/qianhe/yct/adapter/HostListAdapter;Lcom/qianhe/baselib/bean/CorsEntity;Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnActionListener;

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/HostListAdapter$OnActionListener;->onAction(Lcom/qianhe/baselib/bean/CorsEntity;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$us9AW6MfaPgVcF8JUKAI-XR_xvE(Lcom/qianhe/yct/adapter/HostListAdapter;Lcom/qianhe/baselib/bean/CorsEntity;Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    .line 77
    iget-object p0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->onMenuListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;->onPresetBlocked()V

    :cond_0
    return v4

    .line 80
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/qianhe/yct/adapter/HostListAdapter;->showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/CorsEntity;)V

    return v4
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->mList:Ljava/util/List;

    const-wide/16 v1, -0x1

    .line 31
    iput-wide v1, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->currentUsedCorsId:J

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->currentUsedCorsName:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 36
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private isCurrentUsedProvider(Lcom/qianhe/baselib/bean/CorsEntity;)Z
    .locals 8

    .line 48
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    iget-wide v5, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->currentUsedCorsId:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    return v2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->currentUsedCorsName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->currentUsedCorsName:Ljava/lang/String;

    iget-object p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private showPopupMenu(Landroid/view/View;Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$layout;->popup_cors_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 90
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 93
    sget v2, Lcom/qianhe/yct/R$id;->tvEdit:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v1, p2}, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/adapter/HostListAdapter;Landroid/widget/PopupWindow;Lcom/qianhe/baselib/bean/CorsEntity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v2, Lcom/qianhe/yct/R$id;->tvDelete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    new-instance v5, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v1, p2}, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/adapter/HostListAdapter;Landroid/widget/PopupWindow;Lcom/qianhe/baselib/bean/CorsEntity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x2

    .line 110
    new-array v5, v2, [I

    .line 111
    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 112
    aget v3, v5, v3

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 114
    iget-object v6, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 115
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

    .line 118
    invoke-virtual {v1, p1, v7, v4, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->mList:Ljava/util/List;

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

    .line 27
    check-cast p1, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/HostListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;I)V
    .locals 7
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/CorsEntity;

    .line 64
    iget-object v2, p2, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 65
    :goto_0
    iget-object v3, p1, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/qianhe/yct/R$string;->service_provider:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\uff1a%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p2, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    iget-object v2, p1, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;->lltHost:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v2, p1, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;->tvHost:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/qianhe/yct/R$string;->domain_name:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;->lltHost:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :goto_1
    iget-object v0, p1, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/HostListAdapter;Lcom/qianhe/baselib/bean/CorsEntity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p1, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/HostListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/adapter/HostListAdapter;Lcom/qianhe/baselib/bean/CorsEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/HostListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_choose_host:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/HostListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/CorsEntity;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_0
    iput-wide p2, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->currentUsedCorsId:J

    if-eqz p4, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    const-string p4, ""

    :goto_0
    iput-object p4, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->currentUsedCorsName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/HostListAdapter$OnActionListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnActionListener;

    return-void
.end method

.method public setOnMenuListener(Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/qianhe/yct/adapter/HostListAdapter;->onMenuListener:Lcom/qianhe/yct/adapter/HostListAdapter$OnMenuListener;

    return-void
.end method
