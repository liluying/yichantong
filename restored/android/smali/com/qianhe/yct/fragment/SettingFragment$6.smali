.class Lcom/qianhe/yct/fragment/SettingFragment$6;
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

    .line 139
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fgetdealerResponse(Lcom/qianhe/yct/fragment/SettingFragment;)Lcom/qianhe/yct/event/DealerResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fgetdealerResponse(Lcom/qianhe/yct/fragment/SettingFragment;)Lcom/qianhe/yct/event/DealerResponse;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/event/DealerResponse;->contact_info:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fgetdealerResponse(Lcom/qianhe/yct/fragment/SettingFragment;)Lcom/qianhe/yct/event/DealerResponse;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/event/DealerResponse;->contact_info:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 144
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/DealerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fgetdealerResponse(Lcom/qianhe/yct/fragment/SettingFragment;)Lcom/qianhe/yct/event/DealerResponse;

    move-result-object v0

    const-string v1, "dealerResponse"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$6;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method
