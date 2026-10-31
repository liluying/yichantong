.class public Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/BucketListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field fltSel:Landroid/view/View;

.field item:Landroid/view/View;

.field ivSel:Landroid/widget/ImageView;

.field ivSensor:Landroid/widget/ImageView;

.field tvCurrentUse:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 263
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 264
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 265
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    .line 266
    sget v0, Lcom/qianhe/yct/R$id;->tvTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    .line 267
    sget v0, Lcom/qianhe/yct/R$id;->tvCurrentUse:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    .line 268
    sget v0, Lcom/qianhe/yct/R$id;->ivSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    .line 269
    sget v0, Lcom/qianhe/yct/R$id;->fltSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->fltSel:Landroid/view/View;

    .line 270
    sget v0, Lcom/qianhe/yct/R$id;->ivSensor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/BucketListAdapter$MyViewHolder;->ivSensor:Landroid/widget/ImageView;

    return-void
.end method
