.class Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;
.super Ljava/lang/Object;
.source "MultipleCoordsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

.field final synthetic val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgeteditState(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$3;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v2, p1, v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$mshowInsertPopup(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;Landroid/view/View;I)V

    return v1
.end method
