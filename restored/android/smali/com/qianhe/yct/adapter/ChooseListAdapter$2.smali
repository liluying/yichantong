.class Lcom/qianhe/yct/adapter/ChooseListAdapter$2;
.super Ljava/lang/Object;
.source "ChooseListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ChooseListAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseListAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ChooseListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ChooseListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    iput p2, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseListAdapter;)Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter$2;->this$0:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseListAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseListAdapter;)Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;

    move-result-object p1

    iget v0, p0, Lcom/qianhe/yct/adapter/ChooseListAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;->onAction(I)V

    :cond_0
    return-void
.end method
