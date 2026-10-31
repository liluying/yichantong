.class public Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExcavatorListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ExcavatorListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field fltSel:Landroid/view/View;

.field item:Landroid/view/View;

.field ivDel:Landroid/widget/ImageView;

.field ivSel:Landroid/widget/ImageView;

.field ivSensor:Landroid/widget/ImageView;

.field tvCurrentUse:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 251
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 252
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 253
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    .line 254
    sget v0, Lcom/qianhe/yct/R$id;->tvTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    .line 255
    sget v0, Lcom/qianhe/yct/R$id;->tvCurrentUse:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    .line 256
    sget v0, Lcom/qianhe/yct/R$id;->ivSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    .line 257
    sget v0, Lcom/qianhe/yct/R$id;->fltSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->fltSel:Landroid/view/View;

    .line 258
    sget v0, Lcom/qianhe/yct/R$id;->ivDel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    .line 259
    sget v0, Lcom/qianhe/yct/R$id;->ivSensor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorListAdapter$MyViewHolder;->ivSensor:Landroid/widget/ImageView;

    return-void
.end method
