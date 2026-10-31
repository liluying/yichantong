.class Lcom/qianhe/yct/view/ShareBottomView$2;
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

    .line 104
    iput-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$2;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$2;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/ShareBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/ShareBottomView;)Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/view/ShareBottomView$2;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/ShareBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/ShareBottomView;)Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/view/ShareBottomView$2;->this$0:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-static {v0}, Lcom/qianhe/yct/view/ShareBottomView;->-$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/view/ShareBottomView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/view/ShareBottomView$OnNavItemClickListener;->onExecuteClick(I)V

    :cond_0
    return-void
.end method
