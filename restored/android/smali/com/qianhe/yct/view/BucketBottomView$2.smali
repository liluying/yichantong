.class Lcom/qianhe/yct/view/BucketBottomView$2;
.super Ljava/lang/Object;
.source "BucketBottomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/view/BucketBottomView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/view/BucketBottomView;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/view/BucketBottomView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/qianhe/yct/view/BucketBottomView$2;->this$0:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/view/BucketBottomView$2;->this$0:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/BucketBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/BucketBottomView;)Lcom/qianhe/yct/view/BucketBottomView$OnNavItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/view/BucketBottomView$2;->this$0:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-static {p1}, Lcom/qianhe/yct/view/BucketBottomView;->-$$Nest$fgetlistener(Lcom/qianhe/yct/view/BucketBottomView;)Lcom/qianhe/yct/view/BucketBottomView$OnNavItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/view/BucketBottomView$2;->this$0:Lcom/qianhe/yct/view/BucketBottomView;

    invoke-static {v0}, Lcom/qianhe/yct/view/BucketBottomView;->-$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/view/BucketBottomView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/qianhe/yct/view/BucketBottomView$OnNavItemClickListener;->onExecuteClick(I)V

    :cond_0
    return-void
.end method
