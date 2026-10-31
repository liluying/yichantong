.class Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;
.super Ljava/lang/Object;
.source "MultipleCoordsAdapter.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v0, v0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v2, v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetmList(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v2, v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->syncSegmentRatioSize()V

    .line 145
    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v2, v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetsegmentRatios(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v2, v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v2}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetsegmentRatios(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 148
    iget-object v4, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v4, v4, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v4}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetsegmentRatios(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v4, v4, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v4}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetsegmentRatios(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v2, v2, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v2, v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fputhighlightInsertIndex(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;I)V

    .line 152
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v1, v1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 153
    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v1, v1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;

    iget-object v1, v1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$1;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;->onDel(I)V

    :cond_3
    :goto_0
    return-void
.end method
