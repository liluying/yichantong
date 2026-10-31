.class public Lcom/qianhe/yct/adapter/CorsPriceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CorsPriceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private mCurrnetIndex:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/RenewPriceBean;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/CorsPriceListAdapter;)Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrnetIndex(Lcom/qianhe/yct/adapter/CorsPriceListAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->mCurrnetIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/RenewPriceBean;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->mList:Ljava/util/List;

    const/4 v1, -0x1

    .line 36
    iput v1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->mCurrnetIndex:I

    .line 39
    iput-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->context:Landroid/content/Context;

    .line 40
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->mList:Ljava/util/List;

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
    check-cast p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;I)V
    .locals 8
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/bean/RenewPriceBean;

    .line 54
    iget-object v1, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->item:Landroid/view/View;

    iget v2, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->mCurrnetIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 55
    iget-object v1, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvDuration:Landroid/widget/TextView;

    iget v2, v0, Lcom/qianhe/yct/bean/RenewPriceBean;->count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvDurationUnit:Landroid/widget/TextView;

    iget v2, v0, Lcom/qianhe/yct/bean/RenewPriceBean;->unit:I

    if-nez v2, :cond_1

    sget v2, Lcom/qianhe/yct/R$string;->day:I

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    sget v2, Lcom/qianhe/yct/R$string;->moon:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/qianhe/yct/R$string;->year:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget v1, v0, Lcom/qianhe/yct/bean/RenewPriceBean;->price:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v5, v1

    int-to-float v6, v5

    .line 58
    const-string v7, "%s"

    cmpl-float v6, v1, v6

    if-nez v6, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_2
    iget-object v5, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget v1, v0, Lcom/qianhe/yct/bean/RenewPriceBean;->original_price:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 62
    iget-object v2, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvOriginalPrice:Landroid/widget/TextView;

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    float-to-int v2, v1

    int-to-float v5, v2

    cmpl-float v5, v1, v5

    if-nez v5, :cond_5

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_4
    iget-object v2, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvOriginalPrice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/qianhe/yct/R$string;->currency_unit:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v5, v6, v4

    const-string v1, "%s%s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvOriginalPrice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 67
    iget-object p1, p1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v1, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/CorsPriceListAdapter;ILcom/qianhe/yct/bean/RenewPriceBean;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_cors_pricelist:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;

    return-void
.end method
