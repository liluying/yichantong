.class public Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EngineeringListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/EngineeringListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field fltSel:Landroid/widget/FrameLayout;

.field item:Landroid/view/View;

.field ivSel:Landroid/widget/ImageView;

.field tvCurrentUse:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 206
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 207
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 208
    sget v0, Lcom/qianhe/yct/R$id;->fltSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->fltSel:Landroid/widget/FrameLayout;

    .line 209
    sget v0, Lcom/qianhe/yct/R$id;->ivSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    .line 210
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    .line 211
    sget v0, Lcom/qianhe/yct/R$id;->tvTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    .line 212
    sget v0, Lcom/qianhe/yct/R$id;->tvCurrentUse:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/EngineeringListAdapter$MyViewHolder;->tvCurrentUse:Landroid/widget/TextView;

    return-void
.end method
