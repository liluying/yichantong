.class Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;
.super Ljava/lang/Object;
.source "MultipleCoordsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 163
    iput-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    iput-object p2, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;->this$0:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/MultipleCoordsAdapter;)Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$2;->val$holder:Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$MyViewHolder;->tvCoordinate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/qianhe/yct/adapter/MultipleCoordsAdapter$OnActionListener;->onAction(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
