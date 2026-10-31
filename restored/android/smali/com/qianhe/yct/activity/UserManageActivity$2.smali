.class Lcom/qianhe/yct/activity/UserManageActivity$2;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserManageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/UserManageActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserManageActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 61
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    const-class v2, Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    iget-object p1, p0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    sget v1, Lcom/qianhe/yct/R$string;->logout_confirm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    sget v3, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/UserManageActivity$2;->this$0:Lcom/qianhe/yct/activity/UserManageActivity;

    sget v4, Lcom/qianhe/yct/R$string;->cancel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/qianhe/yct/activity/UserManageActivity$2$1;

    invoke-direct {v5, p0, p1}, Lcom/qianhe/yct/activity/UserManageActivity$2$1;-><init>(Lcom/qianhe/yct/activity/UserManageActivity$2;Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
