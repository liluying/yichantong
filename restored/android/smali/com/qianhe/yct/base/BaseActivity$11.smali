.class Lcom/qianhe/yct/base/BaseActivity$11;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->showPermissionNotGrantedDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$openRuntimeSettings:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$11;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-boolean p2, p0, Lcom/qianhe/yct/base/BaseActivity$11;->val$openRuntimeSettings:Z

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

    .line 674
    iget-boolean v0, p0, Lcom/qianhe/yct/base/BaseActivity$11;->val$openRuntimeSettings:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$11;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->openAllFilesAccessSettings(Landroid/content/Context;)V

    return-void

    .line 675
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$11;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mopenAppPermissionsSettings(Lcom/qianhe/yct/base/BaseActivity;)V

    return-void
.end method
