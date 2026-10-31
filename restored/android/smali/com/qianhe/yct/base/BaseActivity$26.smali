.class Lcom/qianhe/yct/base/BaseActivity$26;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->showCalibrateTips()V
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

    .line 3230
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$26;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    .line 3238
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$26;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/qianhe/yct/base/BaseActivity;->count:I

    return-void
.end method

.method public synthetic onClose(ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener$-CC;->$default$onClose(Lcom/qianhe/yct/dialog/CalibrateDialogFragment$OnConfirmListener;ZZ)V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 3233
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$26;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/qianhe/yct/base/BaseActivity;->count:I

    return-void
.end method
