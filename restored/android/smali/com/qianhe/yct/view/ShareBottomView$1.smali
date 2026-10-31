.class Lcom/qianhe/yct/view/ShareBottomView$1;
.super Ljava/lang/Object;
.source "ShareBottomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/ShareBottomView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/ShareBottomView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/ShareBottomView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$1;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$1;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/ShareBottomView;->closeExecuteUi()V

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$1;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/ShareBottomView;->clearSelection()V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$1;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/ShareBottomView;->setSelectedIndex(I)V

    .line 101
    iget-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$1;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/ShareBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/ShareBottomView;)Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$1;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/ShareBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/ShareBottomView;)Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;->onCancel()V

    :cond_0
    return-void
.end method
