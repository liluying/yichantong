.class Lcom/qianhe/yct/activity/RTKInfoActivity$12;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 253
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$12;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 256
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$12;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    new-instance p1, Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;-><init>()V

    .line 258
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$12;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PasswordDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$12;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v2, Lcom/qianhe/yct/R$string;->log_list:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btnContent"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "requestKey"

    const-string v2, "loglist"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$12;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
