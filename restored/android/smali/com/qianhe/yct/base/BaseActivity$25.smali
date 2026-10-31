.class Lcom/qianhe/yct/base/BaseActivity$25;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->wrapCalibrateListener(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3208
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$25;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$25;->val$listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    .line 3216
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$25;->val$listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;->onClose(Z)V

    :cond_0
    return-void
.end method

.method public onClose(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3222
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/qianhe/yct/application/YCTApplication;->setIgnoreSensorOfflineForData(Z)V

    .line 3224
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$25;->val$listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;->onClose(Z)V

    :cond_1
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 3211
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$25;->val$listener:Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;->onConfirm()V

    :cond_0
    return-void
.end method
