.class Lcom/qianhe/yct/fragment/H5ConfigFragment$18;
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

    .line 370
    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-nez p2, :cond_1

    .line 374
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 376
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget p2, p2, Lcom/qianhe/yct/bean/AppConfig$Details;->refstation_interval:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 377
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/manage/AppConfigManager;->setRefstationInterval(F)V

    .line 378
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetmDeviceType(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOG,REFSTATION,ONTIME,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$2000(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 383
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget p2, Lcom/qianhe/yct/R$string;->invalid_config:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;->this$0:Lcom/qianhe/yct/fragment/H5ConfigFragment;

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->access$2100(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_1
    return-void
.end method
