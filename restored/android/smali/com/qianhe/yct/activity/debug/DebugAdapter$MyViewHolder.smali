.class public Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DebugAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/debug/DebugAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field tvDebugMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    sget v0, Lcom/qianhe/yct/R$id;->tvDebugMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;->tvDebugMessage:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 130
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;->tvDebugMessage:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;->tvDebugMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 132
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/DebugAdapter$MyViewHolder;->tvDebugMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
