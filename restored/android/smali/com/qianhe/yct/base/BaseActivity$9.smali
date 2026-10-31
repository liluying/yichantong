.class Lcom/qianhe/yct/base/BaseActivity$9;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V
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

    .line 566
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$9;->this$0:Lcom/qianhe/yct/base/BaseActivity;

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
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$9;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mcontinueBasicPermissionFlow(Lcom/qianhe/yct/base/BaseActivity;)V

    return-void
.end method
