.class Lcom/qianhe/yct/base/BaseActivity$18;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/base/BaseActivity;->onEventMessage(Ljava/lang/String;)V
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

    .line 1410
    iput-object p1, p0, Lcom/qianhe/yct/base/BaseActivity$18;->this$0:Lcom/qianhe/yct/base/BaseActivity;

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

    .line 1413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$18;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->hasExternalStorageAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$18;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/baselib/utils/FileUtil;->openAllFilesAccessSettings(Landroid/content/Context;)V

    return-void

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseActivity$18;->this$0:Lcom/qianhe/yct/base/BaseActivity;

    invoke-static {v0}, Lcom/qianhe/yct/base/BaseActivity;->-$$Nest$mopenAppPermissionsSettings(Lcom/qianhe/yct/base/BaseActivity;)V

    return-void
.end method
