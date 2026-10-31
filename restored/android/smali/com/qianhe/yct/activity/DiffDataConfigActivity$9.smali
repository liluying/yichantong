.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;
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

    .line 308
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 312
    :try_start_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntrip_host:Ljava/lang/String;

    .line 315
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->getting_mounting_points:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/base/BaseConfig;->setPort(I)V

    .line 321
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setUsername(Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;->setPassword(Ljava/lang/String;)V

    .line 323
    new-instance p1, Lcom/qianhe/ntripclientlib/client/NtripClient;

    invoke-direct {p1}, Lcom/qianhe/ntripclientlib/client/NtripClient;-><init>()V

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/ntripclientlib/client/NtripClient;->getMountPoints(Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->port_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->port_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->enter_service_provider:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 335
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6302\u8f7d\u70b9\u5f02\u5e38:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method
