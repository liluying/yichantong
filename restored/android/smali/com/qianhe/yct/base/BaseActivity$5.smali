.class Lcom/qianhe/yct/base/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$5;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 413
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$5;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iget-boolean v0, p1, Lcom/qianhe/yct/base/BaseActivity;->mAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showCalibrateDialog(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V

    :cond_0
    return-void

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$5;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseActivity$5;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    const-class v2, Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
