.class Lcom/qianhe/yct/fragment/SettingFragment$7;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 153
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$7;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$7;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$7;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SettingFragment$7;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$7;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method
