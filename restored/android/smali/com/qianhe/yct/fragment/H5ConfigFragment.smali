.class public Lcom/qianhe/yct/fragment/H5ConfigFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "H5ConfigFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

.field private mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public static synthetic $r8$lambda$7Gmf9dI1lydy98gJaJX3s5SqMVw(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    const-string v0, "datasmoot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 592
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 593
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 595
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 596
    iget-object p2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDataSmoot:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    sget p2, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/qianhe/yct/R$string;->second:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 598
    :cond_0
    sget p2, Lcom/qianhe/yct/R$string;->second:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->data_smoot:I

    if-eq p2, v0, :cond_2

    .line 601
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->setDataSmoot(I)V

    .line 602
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET,POS_SMOOTH,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 603
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$80xRR_1uonegcgQSfk0VB3m6J3Q(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    const-string v0, "distanceformproject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 627
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 629
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDistanceProjectStarting:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget p1, p1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    if-eq p2, p1, :cond_0

    .line 631
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/manage/AppConfigManager;->setDistanceFromProjectVisibility(I)V

    .line 632
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$NGYQriC6NOZT3KVYICmTJbX27aY(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    const-string/jumbo p1, "themeMode"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/qianhe/yct/utils/ThemeModeManager;->setThemeMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->updateThemeModeValue()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$R7y8TZF2-v38nqjNEZSr5QcRsvQ(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    const-string v0, "changelanguage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    const-string p1, "languageCode"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/qianhe/baselib/utils/LanguagePrefs;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 574
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/SplashActivity;->resolveWelcomeDrawable(Landroid/content/Context;)I

    move-result p2

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->coverWithWelcomeBackground(Landroid/app/Activity;I)V

    .line 576
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/SplashActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 577
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 579
    invoke-virtual {p1, p0, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 580
    invoke-static {p1}, Landroidx/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$VFi7nCrC2XnhtdvAeI8SWQOoayI(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    const-string/jumbo v0, "unitpref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 610
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 611
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 613
    invoke-static {p2}, Lcom/qianhe/baselib/enums/UnitEnum;->selectableIndexToType(I)I

    move-result v0

    .line 614
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvUnitPreference:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 616
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->setUnitPreference(I)V

    .line 617
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvPoleHeightUnit:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getSymbol(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qianhe/yct/manage/AppConfigManager;->getPoleHeight()F

    move-result p2

    float-to-double v1, p2

    const/4 p2, 0x3

    invoke-static {v0, v1, v2, p2}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->fromMeter(IDI)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p0, p2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$aLwZyJ48fRdBbhSNvbm3TgVBOis(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    const-string/jumbo v0, "verifyaccuracyhorizontalerror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 640
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 642
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvVerifyAccuracyHorizontalError:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget p1, p1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_verify_horizontal_error:I

    if-eq p2, p1, :cond_0

    .line 644
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/manage/AppConfigManager;->setVerifyAccuracyHorizontalErrorVisibility(I)V

    .line 645
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$qtzu6DC1Go9DKCuQMXuIJA-FZHY(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 651
    const-string/jumbo v0, "solutionmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 652
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 655
    iget-object p0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvSolutionMode:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceType(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUnitLabelList(Lcom/qianhe/yct/fragment/H5ConfigFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->getUnitLabelList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 59
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showLoadingDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showLoadingDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qianhe/yct/fragment/H5ConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private coverWithWelcomeBackground(Landroid/app/Activity;I)V
    .locals 2

    .line 760
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 763
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 764
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 765
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 766
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 767
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    .line 768
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 769
    check-cast v0, Landroid/view/ViewGroup;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getUnitLabel(I)Ljava/lang/String;
    .locals 1

    .line 751
    invoke-static {p1}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p1

    .line 752
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 753
    sget p1, Lcom/qianhe/yct/R$string;->in:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 755
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->meter:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnitLabelList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    invoke-static {}, Lcom/qianhe/baselib/enums/UnitEnum;->getSelectableTypes()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 745
    invoke-direct {p0, v4}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->getUnitLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initData()V
    .locals 3

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/AppConfigActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/AppConfigActivity;->observeAdmin()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/H5ConfigFragment$26;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$26;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 567
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    const-string v2, "changelanguage"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    const-string v2, "change_theme"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 590
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    const-string v2, "datasmoot"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    const-string/jumbo v2, "unitpref"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 624
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    const-string v2, "distanceformproject"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    const-string/jumbo v2, "verifyaccuracyhorizontalerror"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 650
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    const-string/jumbo v2, "solutionmode"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 662
    new-instance v0, Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$27;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/KeyboardUtil;-><init>(Landroid/app/Activity;Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;)V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 93
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->updateThemeModeValue()V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvUnitPreference:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->getUnitLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvUnitPreference:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$1;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDistanceProjectStarting:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->display:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->hide:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvVerifyAccuracyHorizontalError:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->display_verify_horizontal_error:I

    if-ne v1, v2, :cond_1

    sget v1, Lcom/qianhe/yct/R$string;->display:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/qianhe/yct/R$string;->hide:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "GET,FEATURES"

    invoke-direct {v1, v2, v3}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDiffDataSource:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$2;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvLanguage:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$3;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvThemeModeValues:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$4;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDataSmoot:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$5;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtWorktolerance:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$6;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$7;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtHRMS:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$8;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtVRMS:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$9;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDistanceProjectStarting:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$10;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvVerifyAccuracyHorizontalError:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$11;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtBaseMobilityThreshold:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$12;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$12;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtDop:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$13;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$13;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 298
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtGst:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$14;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$14;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSnr:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$15;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$15;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 334
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSav:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$16;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$16;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 352
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSau:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$17;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$17;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$18;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 388
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtIns:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$19;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$19;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 408
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtExtsensor1:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$20;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$20;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 426
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtInsUnavailableCount:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$21;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 443
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtGGa:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$22;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$22;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 461
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtBestpos:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$23;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$23;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvReset:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$24;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvSolutionMode:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/H5ConfigFragment$25;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment$25;-><init>(Lcom/qianhe/yct/fragment/H5ConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtWorktolerance:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/manage/AppConfigManager;->getUnitPreference()I

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvPoleHeightUnit:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/qianhe/baselib/enums/UnitEnum;->getSymbol(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtPoleHeight:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v3, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v3, v3, Lcom/qianhe/yct/bean/AppConfig$Details;->pole_height:F

    float-to-double v3, v3

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Lcom/qianhe/baselib/utils/UnitConvertUtils;->fromMeter(IDI)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtDop:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->dop_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtGst:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->gst_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSnr:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->snr_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSav:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->sav_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtSau:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->sau_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtRefstation:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->refstation_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtIns:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtExtsensor1:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->extsensor_1:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtInsUnavailableCount:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtGGa:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->gga_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtBestpos:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->bestpos_interval:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtHRMS:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->hrms_limit:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtVRMS:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v2, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->vrms_limit:F

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->edtBaseMobilityThreshold:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/qianhe/baselib/Constant;->NTRIPTYPE:Ljava/lang/String;

    sget-object v2, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 555
    sget-object v1, Lcom/qianhe/baselib/enums/NtripTypeEnum;->NTRIP:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 556
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->lltBaseMobilityThreshold:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateThemeModeValue()V
    .locals 6

    .line 698
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ThemeModeManager;->getSavedMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 700
    sget v1, Lcom/qianhe/yct/R$string;->theme_select_theme_mode:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 703
    const-string/jumbo v2, "system"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    sget v0, Lcom/qianhe/yct/R$string;->theme_select_theme_follow_system:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_0
    const-string v2, "dark"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    sget v0, Lcom/qianhe/yct/R$string;->theme_select_theme_dark:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_1
    sget v0, Lcom/qianhe/yct/R$string;->theme_select_theme_light:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 711
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvThemeModeValues:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iput-object p2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object p1

    sget-object p2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {p1, p2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iput-object p2, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/application/YCTApplication;

    invoke-virtual {p1}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->lltDataSmooth:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v1, "GET,POS_SMOOTH"

    invoke-direct {p2, v0, v1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->lltDataSmooth:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->initView()V

    .line 78
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/H5ConfigFragment;->initData()V

    if-eqz p3, :cond_3

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->lltAdmin:Landroid/widget/LinearLayout;

    const-string p2, "lltAdmin"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyContentDirectionByLanguage(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 774
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseFragment;->onDestroyView()V

    .line 775
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/FeaturesEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 723
    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/FeaturesEvent;->value:Ljava/lang/String;

    const-string v0, "NO_NTRIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 725
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/NtripTypeEnum;->SDK:Lcom/qianhe/baselib/enums/NtripTypeEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/NtripTypeEnum;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/manage/AppConfigManager;->setNtriptype(I)V

    .line 726
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDiffDataSource:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 728
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDiffDataSource:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/GetPosSmoothResponse;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 735
    :try_start_0
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetPosSmoothResponse;->smooth:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/manage/AppConfigManager;->setDataSmoot(I)V

    .line 736
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->tvDataSmoot:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/GetPosSmoothResponse;->smooth:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/GetPosSmoothResponse;->smooth:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->close:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 738
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/qianhe/yct/fragment/H5ConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentH5ConfigBinding;->lltAdmin:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "lltAdmin"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
