.class public Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ExcavatorChoiceModeFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;


# direct methods
.method public static synthetic $r8$lambda$DNQbegAeYU9C9bb1oEPbXsMtRq8(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Landroid/view/View;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    .line 145
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static synthetic $r8$lambda$IFrqew6w0-ncdmkvyVsTROfRac0(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    .line 143
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static synthetic $r8$lambda$JqGqO0-IHFA8LrXzMBxBn9rT-f4(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Landroid/view/View;)V
    .locals 2

    .line 147
    sget p1, Lcom/qianhe/yct/R$string;->excavator_mode_sensor_combo_title:I

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_all_sensor:I

    sget v1, Lcom/qianhe/yct/R$string;->excavator_mode_sensor_combo_desc:I

    .line 147
    invoke-direct {p0, p1, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showModeDesDialog(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$QgDcYOAC7i2AaE13tmOK5gjWCjE(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 372
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$R2w-urguJAohiTqxb3rET-jdwb4(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Landroid/view/View;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    .line 144
    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static synthetic $r8$lambda$hfBW2CM682q0MTTJMS4NeAXh8Fg(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Landroid/view/View;)V
    .locals 2

    .line 148
    sget p1, Lcom/qianhe/yct/R$string;->excavator_mode_sensor_combo2_title:I

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_all_mode4_sensor:I

    sget v1, Lcom/qianhe/yct/R$string;->excavator_mode_sensor_combo2_desc:I

    .line 148
    invoke-direct {p0, p1, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showModeDesDialog(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1AH78CfS_h9VT6NWIhUQxziGdE(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Landroid/view/View;)V
    .locals 2

    .line 146
    sget p1, Lcom/qianhe/yct/R$string;->excavator_mode_simple_title:I

    sget v0, Lcom/qianhe/yct/R$drawable;->icon_excavator_all:I

    sget v1, Lcom/qianhe/yct/R$string;->excavator_mode_simple_desc:I

    .line 146
    invoke-direct {p0, p1, v0, v1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showModeDesDialog(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndShowInstallTips(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->checkAndShowInstallTips(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDistanceMeasureIfNeeded(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->clearDistanceMeasureIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearModeSelection(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->clearModeSelection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgoNext(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->goNext()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mseclectMode3(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->seclectMode3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mseclectMode4(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->seclectMode4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInstallTipsDialog(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showInstallTipsDialog(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private applyScrollViewHeightLimit(Landroidx/core/widget/NestedScrollView;II)V
    .locals 3

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 397
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 398
    invoke-virtual {v1, p3, v0}, Landroid/view/View;->measure(II)V

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 400
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 401
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private beginCalibrateSession()V
    .locals 3

    .line 238
    invoke-static {}, Lcom/qianhe/baselib/utils/CalibrateLogToFile;->discardSession()V

    .line 239
    invoke-static {}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->clearAwaitSetParamReply()V

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const-string v2, "local"

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/CalibrateSessionHelper;->beginForExcavator(Landroid/content/Context;Lcom/qianhe/baselib/bean/ExcavatorEntity;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndShowInstallTips(Ljava/lang/Runnable;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_install_sensor_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showInstallTipsDialog(Ljava/lang/Runnable;)V

    return-void

    .line 264
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private clearDistanceMeasureIfNeeded()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->usesDistanceMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->clearMeasureParams()V

    :cond_0
    return-void
.end method

.method private clearModeSelection()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 213
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 214
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes3:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes4:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private getModeDesMaxScrollHeight(IFZZ)I
    .locals 1

    const v0, 0x3f3851ec    # 0.72f

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3f47ae14    # 0.78f

    :cond_1
    :goto_0
    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/high16 p3, 0x430b0000    # 139.0f

    mul-float p3, p3, p2

    float-to-int p3, p3

    const/high16 p4, 0x42f00000    # 120.0f

    mul-float p2, p2, p4

    float-to-int p2, p2

    sub-int/2addr p1, p3

    .line 380
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private goNext()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvContinue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->beginCalibrateSession()V

    .line 233
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 87
    new-instance v0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    .line 94
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvDoubtSensor:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvDoubtSensor4:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes1:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes3:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes4:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivDoubtMode1:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivDoubtMode3:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivDoubtMode4:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$5;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$6;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$7;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$7;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    const-string v3, "clickaction"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$8;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$8;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;)V

    const-string v3, "sensorscanlist"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 207
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showData()V

    return-void
.end method

.method private seclectMode3()V
    .locals 2

    .line 244
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->clearModeSelection()V

    .line 245
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 246
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes3:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 248
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    .line 249
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->clearDistanceMeasureIfNeeded()V

    return-void
.end method

.method private seclectMode4()V
    .locals 3

    .line 220
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->clearModeSelection()V

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes4:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    sget-object v2, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    iput v2, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    .line 225
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-boolean v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    return-void
.end method

.method private showData()V
    .locals 7

    .line 405
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-boolean v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->distanceBucketMeasure:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    sget-object v6, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v6}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 408
    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    iget-object v5, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    if-ne v5, v1, :cond_2

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 409
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 410
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes1:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 411
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes3:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode3:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 412
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object v1, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvModeDes4:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode4:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private showInstallTipsDialog(Ljava/lang/Runnable;)V
    .locals 12

    .line 269
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->dialog_install_tips:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 273
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const v4, 0x3f2e147b    # 0.68f

    goto :goto_0

    :cond_0
    const v4, 0x3f666666    # 0.9f

    .line 282
    :goto_0
    sget v5, Lcom/qianhe/yct/R$id;->tvTitle:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 283
    sget v6, Lcom/qianhe/yct/R$id;->ivInstallImage:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    .line 284
    sget v7, Lcom/qianhe/yct/R$id;->tvContent:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 285
    sget v8, Lcom/qianhe/yct/R$id;->nsvContent:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 286
    sget v8, Lcom/qianhe/yct/R$id;->lltNoMore:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 287
    sget v9, Lcom/qianhe/yct/R$id;->ivNoMore:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 288
    sget v10, Lcom/qianhe/yct/R$id;->tvPrevious:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 289
    sget v11, Lcom/qianhe/yct/R$id;->tvNext:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    sget v11, Lcom/qianhe/yct/R$string;->install_attitude_sensor:I

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    .line 292
    sget v5, Lcom/qianhe/yct/R$string;->install_attitude_sensor_step:I

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    const/16 v5, 0x11

    .line 293
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v7, 0x8

    .line 294
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 295
    sget v10, Lcom/qianhe/yct/R$string;->next:I

    goto :goto_1

    :cond_1
    sget v10, Lcom/qianhe/yct/R$string;->ok:I

    :goto_1
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isKe76Pro()Z

    move-result v10

    .line 298
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v10, :cond_2

    .line 299
    sget v10, Lcom/qianhe/yct/R$drawable;->icon_install_sensor_xfix:I

    goto :goto_2

    :cond_2
    sget v10, Lcom/qianhe/yct/R$drawable;->icon_install_sensor_yct:I

    :goto_2
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 300
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 302
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 303
    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 304
    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 305
    iput v5, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 306
    invoke-virtual {v6, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v3, 0x106000d

    .line 307
    invoke-virtual {v6, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_3
    const/4 v3, 0x1

    .line 309
    new-array v3, v3, [Z

    aput-boolean v2, v3, v2

    .line 310
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    .line 311
    :goto_3
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;

    invoke-direct {v2, p0, v3, v9}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$9;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;[ZLandroid/widget/ImageView;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$10;-><init>(Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;[ZLandroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showModeDesDialog(III)V
    .locals 12

    .line 334
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$layout;->dialog_excavator_mode_des:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 338
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 344
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    instance-of v7, v7, Lcom/qianhe/yct/base/BaseActivity;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/qianhe/yct/base/BaseActivity;

    invoke-virtual {v7}, Lcom/qianhe/yct/base/BaseActivity;->isPad()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 346
    :goto_1
    sget v7, Lcom/qianhe/yct/R$id;->tvTitle:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 347
    sget v8, Lcom/qianhe/yct/R$id;->ivModeImage:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/qianhe/yct/view/HdImageView;

    .line 348
    sget v9, Lcom/qianhe/yct/R$id;->tvContent:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 349
    sget v10, Lcom/qianhe/yct/R$id;->tvOk:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 350
    sget v11, Lcom/qianhe/yct/R$id;->nsvContent:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 352
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    invoke-virtual {v8, p2}, Lcom/qianhe/yct/view/HdImageView;->setImageResource(I)V

    .line 354
    invoke-virtual {v9, p3}, Landroid/widget/TextView;->setText(I)V

    .line 356
    invoke-direct {p0, v4, v5, v6, v2}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->getModeDesMaxScrollHeight(IFZZ)I

    move-result p1

    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    const p2, 0x3f2e147b    # 0.68f

    goto :goto_2

    :cond_2
    const p2, 0x3f0ccccd    # 0.55f

    goto :goto_2

    :cond_3
    const p2, 0x3f666666    # 0.9f

    :goto_2
    int-to-float p3, v3

    mul-float p3, p3, p2

    float-to-int p2, p3

    const/high16 p3, 0x42200000    # 40.0f

    mul-float v5, v5, p3

    float-to-int p3, v5

    sub-int p3, p2, p3

    .line 359
    invoke-direct {p0, v1, p1, p3}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->applyScrollViewHeightLimit(Landroidx/core/widget/NestedScrollView;II)V

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    int-to-float p1, p1

    const p3, 0x3ee66666    # 0.45f

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 360
    :goto_3
    invoke-virtual {v8, p1}, Lcom/qianhe/yct/view/HdImageView;->setMaxDisplayHeight(I)V

    .line 362
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 364
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 365
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p2, -0x2

    .line 366
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x11

    .line 367
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 368
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p2, 0x106000d

    .line 369
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 372
    :cond_5
    new-instance p1, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v10, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public gga(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public insNavi(Lcom/qianhe/baselib/bean/InsNavi;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 432
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 55
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 57
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 59
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 61
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 62
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p3, Lcom/qianhe/baselib/bean/InsNavi;->elevation:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 68
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 69
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->initView()V

    .line 71
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide p2, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    iget p1, p1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->mode:I

    if-nez p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->ivMode1:Lcom/qianhe/yct/view/HdImageView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 437
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->showData()V

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorChoiceModeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentExcavatorChoiceModeBinding;->tvContinue:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
