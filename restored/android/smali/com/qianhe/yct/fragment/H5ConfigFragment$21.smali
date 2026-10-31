.class Lcom/qianhe/yct/fragment/H5ConfigFragment$21;
.super Ljava/lang/Object;
.source "H5ConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/H5ConfigFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_1

    .line 430
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtInsUnavailableCount:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 431
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtInsUnavailableCount:Lcom/qianhe/yct/view/NumericEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 432
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtInsUnavailableCount:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide p1

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_1

    .line 433
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtInsUnavailableCount:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/manage/AppConfigManager;->setInsUnavailableCount(I)V

    .line 434
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$2600(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtInsUnavailableCount:Lcom/qianhe/yct/view/NumericEditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 438
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->invalid_config:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$2700(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method
