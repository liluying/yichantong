.class Lcom/qianhe/yct/fragment/BaseConfigFragment$5;
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

    .line 112
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_1

    .line 116
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide p1

    double-to-int p1, p1

    if-lez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 118
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget p2, p2, Lcom/qianhe/yct/bean/AppConfig$Details;->base_port:I

    if-eq p1, p2, :cond_1

    .line 119
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/manage/AppConfigManager;->setBasePort(I)V

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->access$600(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 124
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->invalid_config:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;->this$0:Lcom/qianhe/yct/fragment/BaseConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->access$700(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method
