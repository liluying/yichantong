.class public Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChoiceMultipleProjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field item:Landroid/view/View;

.field ivSel:Landroid/widget/ImageView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    sget v0, Lcom/qianhe/yct/R$id;->item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 100
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/qianhe/yct/R$id;->ivSel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$MyViewHolder;->ivSel:Landroid/widget/ImageView;

    return-void
.end method
