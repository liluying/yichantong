.class Lcom/qianhe/yct/base/BaseActivity$24;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/PoleHeightInputDialogFragment$OnPoleHeightConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->showPoleHeightInputDialog(Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/base/BaseActivity;

.field final synthetic val$onConfirm:Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/base/BaseActivity;Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2789
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$24;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    iput-object p2, p0, Lcom/qianhe/yct/base/BaseActivity$24;->val$onConfirm:Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm(F)V
    .locals 1

    .line 2792
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$24;->val$onConfirm:Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qianhe/yct/base/BaseActivity$OnPoleHeightInputConfirmListener;->onConfirm(F)V

    :cond_0
    return-void
.end method
