.class public Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShareListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ShareListAdapter;
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

.field tvFrom:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 209
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 210
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 211
    sget v0, Lcom/qianhe/yct/R$id;->fltSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->fltSel:Landroid/view/View;

    .line 212
    sget v0, Lcom/qianhe/yct/R$id;->ivSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    .line 213
    sget v0, Lcom/qianhe/yct/R$id;->ivDel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    .line 214
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    .line 215
    sget v0, Lcom/qianhe/yct/R$id;->tvTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    .line 216
    sget v0, Lcom/qianhe/yct/R$id;->tvFrom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareListAdapter$MyViewHolder;->tvFrom:Landroid/widget/TextView;

    return-void
.end method
