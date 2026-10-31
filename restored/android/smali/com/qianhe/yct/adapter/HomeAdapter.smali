.class public Lcom/qianhe/yct/adapter/HomeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;,
        Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$mElJWnkSxnyTuuaUu60iNgXjuYI(Lcom/qianhe/yct/adapter/HomeAdapter;Lcom/qianhe/yct/bean/HomeItem;Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mListener:Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;

    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0, p1}, Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;->onItemClick(Lcom/qianhe/yct/bean/HomeItem;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qianhe/yct/bean/HomeItem;",
            ">;",
            "Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mData:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mListener:Lcom/qianhe/yct/adapter/HomeAdapter$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mData:Ljava/util/List;

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

    .line 14
    check-cast p1, Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/HomeAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;I)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qianhe/yct/bean/HomeItem;

    .line 38
    iget-object v0, p1, Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;->binding:Lcom/qianhe/yct/databinding/ItemHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ItemHomeBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/qianhe/yct/bean/HomeItem;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v0, p1, Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;->binding:Lcom/qianhe/yct/databinding/ItemHomeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ItemHomeBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/qianhe/yct/bean/HomeItem;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object p1, p1, Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;->binding:Lcom/qianhe/yct/databinding/ItemHomeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ItemHomeBinding;->lltItemContent:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/qianhe/yct/adapter/HomeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/qianhe/yct/adapter/HomeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/adapter/HomeAdapter;Lcom/qianhe/yct/bean/HomeItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/HomeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/qianhe/yct/databinding/ItemHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/qianhe/yct/databinding/ItemHomeBinding;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/HomeAdapter$ViewHolder;-><init>(Lcom/qianhe/yct/databinding/ItemHomeBinding;)V

    return-object p2
.end method

.method public onItemMove(II)V
    .locals 2

    if-eq p1, p2, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mData:Ljava/util/List;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/bean/HomeItem;

    .line 59
    iget-object v1, p0, Lcom/qianhe/yct/adapter/HomeAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method
