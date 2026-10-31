.class public Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChoiceMultipleProjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;,
        Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private onActionListener:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;

.field private final selectedProjectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->selectedProjectIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->mList:Ljava/util/List;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->selectedProjectIds:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->context:Landroid/content/Context;

    .line 37
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->mList:Ljava/util/List;

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
    check-cast p1, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;I)V
    .locals 4
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 51
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 52
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->selectedProjectIds:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 53
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;->item:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$1;-><init>(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;Lcom/qianhe/baselib/base/BaseProEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_choose_multiple_project:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshData(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 83
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnActionListener(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->onActionListener:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;

    return-void
.end method
