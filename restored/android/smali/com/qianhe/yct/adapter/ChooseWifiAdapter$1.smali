.class Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;
.super Ljava/lang/Object;
.source "ChooseWifiAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->onBindViewHolder(Lcom/qianhe/yct/adapter/ChooseWifiAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ChooseWifiAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    iput p2, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseWifiAdapter;)Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ChooseWifiAdapter;

    invoke-static {p1}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ChooseWifiAdapter;)Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;

    move-result-object p1

    iget v0, p0, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/qianhe/yct/adapter/ChooseWifiAdapter$OnActionListener;->onAction(I)V

    :cond_0
    return-void
.end method
