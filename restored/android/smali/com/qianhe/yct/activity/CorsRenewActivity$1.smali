.class Lcom/qianhe/yct/activity/CorsRenewActivity$1;
.super Ljava/lang/Object;
.source "CorsRenewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CorsRenewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->-$$Nest$fgetmPriceBean(Lcom/qianhe/yct/activity/CorsRenewActivity;)Lcom/qianhe/yct/bean/RenewPriceBean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-virtual {p1}, Lcom/qianhe/yct/base/BaseActivity;->cancelLoadingDialog()V

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    sget v0, Lcom/qianhe/yct/R$string;->data_anomaly:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    .line 83
    const-string/jumbo p1, "\u7eed\u8d39\u4fe1\u606f\u4e3a\u7a7a\uff1amPriceBean = null"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/CorsRenewActivity;->access$000(Lcom/qianhe/yct/activity/CorsRenewActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getWxGZHAppId()V

    return-void

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    sget v0, Lcom/qianhe/yct/R$string;->wechat_not_installed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$1;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    sget v2, Lcom/qianhe/yct/R$string;->scan_pay:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "wechat_not_installed"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void
.end method
