.class Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment$24;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

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
    .locals 4

    .line 486
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->resetConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/utils/AppConfigJsonUtil;->detailsToJsonStringValues(Lcom/qianhe/yct/bean/AppConfig;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->setConfig(Lorg/json/JSONObject;)V

    .line 489
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$3200(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvReset:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1$1;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24$1;->this$1:Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->operation_failed:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$3400(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V

    return-void
.end method
