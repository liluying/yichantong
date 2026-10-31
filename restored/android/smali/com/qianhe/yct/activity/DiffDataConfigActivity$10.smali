.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 343
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->access$100(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->getType()I

    move-result v0

    const-string v1, "mode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 344
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 345
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetchannelArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetprotocolArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetpowerArray(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_wait:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$msendRadioConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/enums/DeviceType;)V

    return-void

    .line 346
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->data_anomaly:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 355
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    sget-object v0, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    .line 356
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isDemo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 357
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->xfixed_not_supported_in_demo_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 360
    :cond_3
    new-instance p1, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    invoke-direct {p1}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;-><init>()V

    .line 361
    sget-object v0, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 362
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetmGGA(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetmGGA(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->connecting:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fputmSave(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    .line 365
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 367
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->solution_invalid:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 370
    :cond_5
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$misProviderNameMissing(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 371
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetisAdd(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetinitCorsBean(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/baselib/bean/CorsEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    :goto_1
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mshowCorsProviderInputDialog(Lcom/qianhe/yct/activity/DiffDataConfigActivity;JZ)V

    return-void

    .line 374
    :cond_7
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 375
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    .line 377
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    .line 378
    :cond_8
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    .line 379
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/qianhe/baselib/base/BaseConfig;->username:Ljava/lang/String;

    .line 380
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v4}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/qianhe/baselib/base/BaseConfig;->password:Ljava/lang/String;

    .line 381
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 382
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->domain_name_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_9
    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v3

    iget v3, v3, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_port:I

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_2

    .line 389
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 390
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->username_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 393
    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 394
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->password_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 397
    :cond_c
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseConfig;->mount_point:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 398
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->mount_point_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 401
    :cond_d
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$msaveCorsToDatabase(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/base/BaseConfig;Z)V

    .line 402
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->setCors(Lcom/qianhe/baselib/base/BaseConfig;)V

    .line 403
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetmGGA(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetmGGA(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/baselib/bean/GGAEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/bean/GGAEntity;->quality:I

    if-lez p1, :cond_e

    .line 404
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->connecting:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetonCloseListener(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->access$200(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/lang/String;Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;)V

    .line 405
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fputmSave(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    .line 406
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 408
    :cond_e
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->solution_invalid:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 386
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$10;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->port_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 412
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5dee\u5206\u6570\u636e\u6e90\u914d\u7f6e\u5f02\u5e38\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method
