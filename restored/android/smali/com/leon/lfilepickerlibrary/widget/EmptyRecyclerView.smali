.class public Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "EmptyRecyclerView.java"


# instance fields
.field private mEmptyView:Landroid/view/View;

.field observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;-><init>(Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p1, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;-><init>(Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView$1;-><init>(Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method private checkIfEmpty()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    return-void
.end method

.method public setmEmptyView(Landroid/view/View;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->mEmptyView:Landroid/view/View;

    .line 40
    invoke-direct {p0}, Lcom/leon/lfilepickerlibrary/widget/EmptyRecyclerView;->checkIfEmpty()V

    return-void
.end method
