.class Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;
.super Ljava/lang/Object;
.source "CorsPriceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/CorsPriceListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/CorsPriceListAdapter;

.field final synthetic val$entity:Lcom/qianhe/yct/bean/RenewPriceBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/CorsPriceListAdapter;ILcom/qianhe/yct/bean/RenewPriceBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/CorsPriceListAdapter;

    iput p2, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->val$entity:Lcom/qianhe/yct/bean/RenewPriceBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/CorsPriceListAdapter;

    iget v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->-$$Nest$fputmCurrnetIndex(Lcom/qianhe/yct/adapter/CorsPriceListAdapter;I)V

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/CorsPriceListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/CorsPriceListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/CorsPriceListAdapter;)Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->this$0:Lcom/qianhe/yct/adapter/CorsPriceListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/CorsPriceListAdapter;)Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$1;->val$entity:Lcom/qianhe/yct/bean/RenewPriceBean;

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/CorsPriceListAdapter$OnActionListener;->onAction(Lcom/qianhe/yct/bean/RenewPriceBean;)V

    :cond_0
    return-void
.end method
