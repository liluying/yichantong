.class public Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShareProjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ShareProjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field ivDel:Landroid/widget/ImageView;

.field lltItem:Landroid/view/View;

.field tvName:Landroid/widget/TextView;

.field tvType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 206
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 207
    sget v0, Lcom/qianhe/yct/R$id;->lltItem:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->lltItem:Landroid/view/View;

    .line 208
    sget v0, Lcom/qianhe/yct/R$id;->tvType:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->tvType:Landroid/widget/TextView;

    .line 209
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    .line 210
    sget v0, Lcom/qianhe/yct/R$id;->ivDel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    return-void
.end method
