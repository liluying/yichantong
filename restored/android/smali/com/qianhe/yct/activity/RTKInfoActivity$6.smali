.class Lcom/qianhe/yct/activity/RTKInfoActivity$6;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$6;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$6;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$mensureDeviceConnected(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$6;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v0, Lcom/qianhe/yct/R$string;->are_you_sure_shut_down_host:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$6;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/RTKInfoActivity$6$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$6$1;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity$6;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
