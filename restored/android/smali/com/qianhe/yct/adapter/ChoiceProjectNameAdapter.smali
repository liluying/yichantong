.class public Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChoiceProjectNameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isMultiple:Z

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;

.field private final selectedName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetisMultiple(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->isMultiple:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedName(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->selectedName:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->mList:Ljava/util/List;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->selectedName:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->context:Landroid/content/Context;

    .line 38
    iget-boolean p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->isMultiple:Z

    iput-boolean p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->isMultiple:Z

    .line 39
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->mList:Ljava/util/List;

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

    .line 29
    check-cast p1, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 53
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->selectedName:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 54
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_choose_multiple_project:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->selectedName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;

    return-void
.end method
