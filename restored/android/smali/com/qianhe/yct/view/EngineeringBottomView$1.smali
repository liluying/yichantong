.class Lcom/qianhe/yct/view/EngineeringBottomView$1;
.super Ljava/lang/Object;
.source "EngineeringBottomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/EngineeringBottomView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/EngineeringBottomView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/EngineeringBottomView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/qianhe/yct/view/EngineeringBottomView$1;->this$0:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/view/EngineeringBottomView$1;->this$0:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/EngineeringBottomView;->closeExecuteUi()V

    .line 96
    iget-object p1, p0, Lcom/qianhe/yct/view/EngineeringBottomView$1;->this$0:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/EngineeringBottomView;->clearSelection()V

    .line 97
    iget-object p1, p0, Lcom/qianhe/yct/view/EngineeringBottomView$1;->this$0:Lcom/qianhe/yct/view/EngineeringBottomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/view/EngineeringBottomView;->setSelectedIndex(I)V

    .line 98
    iget-object p1, p0, Lcom/qianhe/yct/view/EngineeringBottomView$1;->this$0:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/EngineeringBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/EngineeringBottomView;)Lcom/qianhe/yct/view/EngineeringBottomView$OnNavItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/view/EngineeringBottomView$1;->this$0:Lcom/qianhe/yct/view/EngineeringBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/EngineeringBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/EngineeringBottomView;)Lcom/qianhe/yct/view/EngineeringBottomView$OnNavItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qianhe/yct/view/EngineeringBottomView$OnNavItemClickListener;->onCancel()V

    :cond_0
    return-void
.end method
