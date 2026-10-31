.class Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ActualImageGifAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ActualImageGifAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field final gifIv:Lpl/droidsonroids/gif/GifImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 61
    sget v0, Lcom/qianhe/yct/R$id;->gifIv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ActualImageGifAdapter$ViewHolder;->gifIv:Lpl/droidsonroids/gif/GifImageView;

    return-void
.end method
