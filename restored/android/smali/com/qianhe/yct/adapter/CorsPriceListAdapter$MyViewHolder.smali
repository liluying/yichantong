.class public Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CorsPriceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/CorsPriceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field item:Landroid/view/View;

.field tvDuration:Landroid/widget/TextView;

.field tvDurationUnit:Landroid/widget/TextView;

.field tvOriginalPrice:Landroid/widget/TextView;

.field tvPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 99
    sget v0, Lcom/qianhe/yct/R$id;->tvDuration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvDuration:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->tvDurationUnit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvDurationUnit:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->tvPrice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/qianhe/yct/R$id;->tvOriginalPrice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;->tvOriginalPrice:Landroid/widget/TextView;

    return-void
.end method
