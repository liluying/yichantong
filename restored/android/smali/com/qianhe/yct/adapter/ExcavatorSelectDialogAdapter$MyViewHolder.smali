.class Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExcavatorSelectDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyViewHolder"
.end annotation


# instance fields
.field item:Landroid/view/View;

.field tvName:Landroid/widget/TextView;

.field tvParams:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->item:Landroid/view/View;

    .line 83
    sget v0, Lcom/qianhe/yct/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/qianhe/yct/R$id;->tvParams:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->tvParams:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/qianhe/yct/R$id;->tvTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$MyViewHolder;->tvTime:Landroid/widget/TextView;

    return-void
.end method
