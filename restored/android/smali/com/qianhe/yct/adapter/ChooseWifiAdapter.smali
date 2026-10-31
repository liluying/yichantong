.class public Lcom/qianhe/yct/adapter/ChooseWifiAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChooseWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentName:Ljava/lang/String;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseWifiAdapter;)Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->mList:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    iput-object p3, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->currentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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

    .line 26
    check-cast p1, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;->item:Landroid/view/View;

    iget-object v2, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->currentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 51
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ChooseWifiAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_choose_wifi:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;

    return-void
.end method
