.class Lcom/qianhe/yct/activity/RTKInfoActivity$9;
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

    .line 213
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 216
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$mensureDeviceConnected(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v2, Lcom/qianhe/yct/R$string;->reset_host:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$9;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/activity/RTKInfoActivity$9$1;-><init>(Lcom/qianhe/yct/activity/RTKInfoActivity$9;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
