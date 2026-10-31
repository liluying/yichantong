.class Lcom/qianhe/yct/fragment/SettingFragment$10;
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

    .line 188
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$10;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$10;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fgetcount(Lcom/qianhe/yct/fragment/SettingFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fputcount(Lcom/qianhe/yct/fragment/SettingFragment;I)V

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$10;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fgetcount(Lcom/qianhe/yct/fragment/SettingFragment;)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 194
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SettingFragment$10;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/SettingFragment;->-$$Nest$fputcount(Lcom/qianhe/yct/fragment/SettingFragment;I)V

    .line 195
    new-instance p1, Lcom/qianhe/yct/dialog/PasswordDialogFragment;

    invoke-direct {p1}, Lcom/qianhe/yct/dialog/PasswordDialogFragment;-><init>()V

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    const-string v1, "requestKey"

    const-string v2, "logdetails"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SettingFragment$10;->this$0:Lcom/qianhe/yct/fragment/SettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PasswordDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
