.class Lcom/qianhe/yct/fragment/SettingFragment$9;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/SettingFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/SettingFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$9;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 173
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$9;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 174
    new-instance p1, Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;-><init>()V

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment$9;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "PasswordDialogFragment"

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v2, "requestKey"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return v1

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$9;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return v1
.end method
