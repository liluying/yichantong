.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/ChooseCorsHostDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->showChooseCorsDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

.field final synthetic val$fromDiffSourceSwitch:Z


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 685
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    iput-boolean p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->val$fromDiffSourceSwitch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Lcom/qianhe/baselib/bean/CorsEntity;)V
    .locals 5

    .line 689
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->val$fromDiffSourceSwitch:Z

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$misXFixedProvider(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/bean/CorsEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 692
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mapplyXFixedDiffSource(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 695
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mapplyCustomCorsUiShell(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    .line 698
    :cond_1
    :goto_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 699
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mapplyLocalCorsSelection(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/bean/CorsEntity;)V

    return-void

    .line 702
    :cond_2
    const-string/jumbo v0, "\u95ea\u7535\u56fa\u5b9a"

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    sget v1, Lcom/qianhe/yct/R$string;->x_fixed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvCorsName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->corsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$misXFixedProvider(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/baselib/bean/CorsEntity;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_6

    .line 705
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fputisAdd(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    .line 706
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v0

    iput v0, p1, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 708
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    iget-object v0, v0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    sget-object v3, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v3

    if-eq v0, v3, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 712
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fputisAdd(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    .line 713
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->lltCorsAccountExpire:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltRenew:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->rltOrderList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    new-instance v1, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    invoke-direct {v1}, Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;-><init>()V

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fputntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;)V

    .line 718
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/base/BaseConfig;->ntripType:I

    .line 719
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtHost:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/base/BaseConfig;->setHost(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    iget v1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    invoke-virtual {v0, v1}, Lcom/qianhe/baselib/base/BaseConfig;->setPort(I)V

    .line 722
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPort:Landroid/widget/EditText;

    iget p1, p1, Lcom/qianhe/baselib/bean/CorsEntity;->port:I

    const-string v1, ""

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v1

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mupdateChoosePortVisibility(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    return-void
.end method

.method public onCustom()V
    .locals 4

    .line 732
    iget-boolean v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->val$fromDiffSourceSwitch:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->tvDiffSource:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/qianhe/yct/R$string;->custom_cors:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 734
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mapplyCustomCorsUiShell(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mresetCustomCorsForm(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$19;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$mshowCorsProviderInputDialog(Lcom/qianhe/yct/activity/DiffDataConfigActivity;JZ)V

    return-void
.end method
