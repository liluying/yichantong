.class Lcom/qianhe/yct/fragment/BaseConfigFragment$4;
.super Ljava/lang/Object;
.source "BaseConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BaseConfigFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BaseConfigFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_1

    .line 98
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHost:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 100
    iget-object p2, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHost:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 101
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object p2, p2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 102
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/manage/AppConfigManager;->setBaseHost(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->access$400(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHost:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 107
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->invalid_config:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->access$500(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method
