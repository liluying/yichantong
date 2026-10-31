.class Lcom/qianhe/yct/base/BaseActivity$12$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity$12;->onDownloadError(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/base/BaseActivity$12;

.field final synthetic val$forced:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity$12;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 915
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12$2;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iput-boolean p2, p0, Lcom/qianhe/yct/base/BaseActivity$12$2;->val$forced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 923
    iget-boolean p1, p0, Lcom/qianhe/yct/base/BaseActivity$12$2;->val$forced:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12$2;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object p1, p1, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity$12$2;->val$forced:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12$2;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
