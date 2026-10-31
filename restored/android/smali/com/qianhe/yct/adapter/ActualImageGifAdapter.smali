.class public Lcom/qianhe/yct/adapter/ActualImageGifAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ActualImageGifAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final imageResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->imageResIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getImageResId(I)I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->imageResIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->imageResIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;I)V
    .locals 1

    .line 38
    iget-object p1, p1, Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->imageResIds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/utils/GifLoadHelper;->setGif(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/qianhe/yct/R$layout;->item_actual_image_gif:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->onViewRecycled(Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;)V
    .locals 1

    .line 43
    iget-object v0, p1, Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {v0}, Lcom/qianhe/yct/utils/GifLoadHelper;->recycle(Landroid/widget/ImageView;)V

    .line 44
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->imageResIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ActualImageGifAdapter;->imageResIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
