.class public Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProjectCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;,
        Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;,
        Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$OnItemClickListener;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nNwZe9MDAIV2SRNZPLXW_26A5No(Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;ILandroid/view/View;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->listener:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$OnItemClickListener;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    .line 39
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;
    .locals 2

    .line 32
    iget-object p2, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_project_category:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$OnItemClickListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->listener:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$OnItemClickListener;

    return-void
.end method
