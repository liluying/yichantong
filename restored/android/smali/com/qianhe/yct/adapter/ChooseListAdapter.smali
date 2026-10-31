.class public Lcom/qianhe/yct/adapter/ChooseListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChooseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final currnetIndex:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;

.field private final showDel:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/adapter/ChooseListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseListAdapter;)Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qianhe/yct/adapter/ChooseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->mList:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->context:Landroid/content/Context;

    .line 43
    iput-boolean p4, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->showDel:Z

    .line 44
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    iput p3, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->currnetIndex:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->mList:Ljava/util/ArrayList;

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

    .line 30
    check-cast p1, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;->item:Landroid/view/View;

    iget v1, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->currnetIndex:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 61
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->showDel:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/adapter/ChooseListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/qianhe/yct/adapter/ChooseListAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ChooseListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ChooseListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ChooseListAdapter$2;-><init>(Lcom/qianhe/yct/adapter/ChooseListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChooseListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_choose_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

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

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;

    return-void
.end method
