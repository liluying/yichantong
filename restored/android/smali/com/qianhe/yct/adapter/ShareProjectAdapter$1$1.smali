.class Lcom/qianhe/yct/adapter/ShareProjectAdapter$1$1;
.super Ljava/lang/Object;
.source "ShareProjectAdapter.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;

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
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;

    iget-object v0, v0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;

    iget-object v0, v0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->this$0:Lcom/qianhe/yct/adapter/ShareProjectAdapter;

    invoke-static {v0}, Lcom/qianhe/yct/adapter/ShareProjectAdapter;->-$$Nest$fgetonActionListener(Lcom/qianhe/yct/adapter/ShareProjectAdapter;)Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1$1;->this$1:Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;

    iget-object v1, v1, Lcom/qianhe/yct/adapter/ShareProjectAdapter$1;->val$baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    invoke-interface {v0, v1}, Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;->onDel(Lcom/qianhe/baselib/base/BaseProEntity;)V

    :cond_0
    return-void
.end method
