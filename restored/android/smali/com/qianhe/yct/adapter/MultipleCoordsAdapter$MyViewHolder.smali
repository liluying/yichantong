.class public Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MultipleCoordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

.field item:Landroid/view/View;

.field ivDel:Landroid/widget/ImageView;

.field lltSegmentRatio:Landroid/widget/LinearLayout;

.field ratioWatcher:Landroid/text/TextWatcher;

.field tvCoordinate:Landroid/widget/TextView;

.field tvModify:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 376
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 377
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 378
    sget v0, Lcom/qianhe/yct/R$id;->tvCoordinate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvCoordinate:Landroid/widget/TextView;

    .line 379
    sget v0, Lcom/qianhe/yct/R$id;->ivDel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->ivDel:Landroid/widget/ImageView;

    .line 380
    sget v0, Lcom/qianhe/yct/R$id;->tvModify:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvModify:Landroid/widget/TextView;

    .line 381
    sget v0, Lcom/qianhe/yct/R$id;->lltSegmentRatio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->lltSegmentRatio:Landroid/widget/LinearLayout;

    .line 382
    sget v0, Lcom/qianhe/yct/R$id;->edtSegmentRatio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/view/NumericEditText;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->edtSegmentRatio:Lcom/qianhe/yct/view/NumericEditText;

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/NumericEditText;->setFillZeroOnBlur(Z)V

    return-void
.end method
