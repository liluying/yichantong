.class Lcom/qianhe/yct/base/BaseActivity$12$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity$12;->onDownloadDone(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/base/BaseActivity$12;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity$12;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 891
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$12$1;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$12$1;->val$filePath:Ljava/lang/String;

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

    .line 895
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$12$1;->this$1:Lcom/qianhe/yct/base/BaseActivity$12;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity$12;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$12$1;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$minstallApkWithRestart(Lcom/qianhe/yct/base/BaseActivity;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
