.class Lcom/qianhe/yct/base/BaseActivity$13;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/AppForcedUpgradeDialogFragment$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->showAppForcedUpgradeDialog(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 983
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$13;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$13;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInstall()V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$13;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$13;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$minstallApkWithRestart(Lcom/qianhe/yct/base/BaseActivity;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
