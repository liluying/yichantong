.class public Lcom/qianhe/yct/activity/ZeroingActivity;
.super Lcom/qianhe/yct/base/BaseActivity;
.source "ZeroingActivity.java"


# instance fields
.field protected angleLastTime:J

.field private binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

.field private cancelZero:Z

.field private horizontalAngleRange:Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;

.field private isAvailable:Z

.field private isRefresAngleRange:Z

.field private lastDegrees:D

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDegrees:D

.field private rangeCurrentIndex:I

.field private rangeInitialIndex:I

.field private zeroDegrees:D


# direct methods
.method public static synthetic $r8$lambda$Ntgww5V74YuL7DbvRxE5bG-IxG4(Lcom/qianhe/yct/activity/ZeroingActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 118
    :try_start_0
    const-string/jumbo v0, "zerolist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 120
    iput p2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeCurrentIndex:I

    .line 121
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvLimit:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 123
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->data_anomaly:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "\u6316\u673a\u89d2\u5ea6\u9650\u5236\u5f02\u5e38\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$bC-PH_xI7Am1xVFPz78JPqxbass(Lcom/qianhe/yct/activity/ZeroingActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    const-string/jumbo v0, "tiltdisplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 136
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvTiltDisplay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget p1, p1, Lcom/qianhe/yct/bean/AppConfig$Details;->tilt_display:I

    if-eq p2, p1, :cond_1

    .line 138
    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/manage/AppConfigManager;->setTiltDisplay(I)V

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iput p2, p1, Lcom/qianhe/yct/bean/AppConfig$Details;->tilt_display:I

    .line 142
    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->config_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ZeroingActivity;)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlist(Lcom/qianhe/yct/activity/ZeroingActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDegrees(Lcom/qianhe/yct/activity/ZeroingActivity;)D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->mDegrees:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrangeCurrentIndex(Lcom/qianhe/yct/activity/ZeroingActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeCurrentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrangeInitialIndex(Lcom/qianhe/yct/activity/ZeroingActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeInitialIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcancelZero(Lcom/qianhe/yct/activity/ZeroingActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->cancelZero:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrangeCurrentIndex(Lcom/qianhe/yct/activity/ZeroingActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeCurrentIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrangeInitialIndex(Lcom/qianhe/yct/activity/ZeroingActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeInitialIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLimitValue(Lcom/qianhe/yct/activity/ZeroingActivity;I)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/activity/ZeroingActivity;->getLimitValue(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mzeroing(Lcom/qianhe/yct/activity/ZeroingActivity;DFD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/qianhe/yct/activity/ZeroingActivity;->zeroing(DFD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/qianhe/yct/activity/ZeroingActivity$1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ZeroingActivity$1;-><init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V

    iput-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->list:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeInitialIndex:I

    const-wide/high16 v0, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 48
    iput-wide v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->zeroDegrees:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 49
    iput-wide v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->lastDegrees:D

    return-void
.end method

.method private getLimitValue(I)F
    .locals 1

    .line 0
    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x40400000    # 3.0f

    return p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/high16 p1, 0x40800000    # 4.0f

    return p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/high16 p1, 0x40a00000    # 5.0f

    return p1

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const/high16 p1, 0x40c00000    # 6.0f

    return p1

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    const/high16 p1, 0x40e00000    # 7.0f

    return p1

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    const/high16 p1, 0x41000000    # 8.0f

    return p1

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    const/high16 p1, 0x41100000    # 9.0f

    return p1

    :cond_8
    const/high16 p1, 0x41200000    # 10.0f

    return p1
.end method

.method private refrshAngle(D)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->angleLastTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x320

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    iget-object v2, p0, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v2, v2, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v2, v2, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    sget-object v3, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_1:Lcom/qianhe/baselib/enums/FrequencyEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/FrequencyEnum;->getFrequency()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 213
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRange:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "%.2f\u00b0"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->isRefresAngleRange:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeZero:Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->zeroDegrees:D

    sub-double/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {v3, v4, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->angleLastTime:J

    return-void
.end method

.method private zeroing(DFD)V
    .locals 8

    float-to-double v0, p3

    sub-double v2, p1, v0

    sub-double v4, v2, p4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    .line 280
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    div-double/2addr v4, v6

    add-double/2addr v2, p4

    mul-double v2, v2, v6

    .line 282
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    div-double/2addr v2, v6

    add-double/2addr p1, v0

    sub-double v0, p1, p4

    mul-double v0, v0, v6

    .line 284
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v6

    add-double/2addr p1, p4

    mul-double p1, p1, v6

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    div-double/2addr p1, v6

    .line 288
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    new-instance p4, Lcom/qianhe/baselib/bean/OrderBean;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET,HORIZONTAL_ANGLE,"

    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 289
    const-string/jumbo p1, "\u4e0b\u53d1\u7f6e\u96f6\u6307\u4ee4\u3002"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getGGA(Lcom/qianhe/baselib/bean/GGAEntity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 0
    return-void
.end method

.method protected initTopBar()Landroid/widget/FrameLayout;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/TitlebarBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->zero:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->topBar:Lcom/qianhe/yct/databinding/TitlebarBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/TitlebarBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    .line 58
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvTiltDisplay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/qianhe/yct/manage/AppConfigManager;->getInstance()Lcom/qianhe/yct/manage/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/manage/AppConfigManager;->getAppConfig()Lcom/qianhe/yct/bean/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v0, v0, Lcom/qianhe/yct/bean/AppConfig$Details;->tilt_display:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/qianhe/yct/R$string;->display:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/qianhe/yct/R$string;->hide:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvTiltDisplay:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/ZeroingActivity$2;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ZeroingActivity$2;-><init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvLimit:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/qianhe/yct/activity/ZeroingActivity$3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ZeroingActivity$3;-><init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvZero:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/ZeroingActivity$4;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ZeroingActivity$4;-><init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvCancelZero:Landroid/widget/TextView;

    new-instance v0, Lcom/qianhe/yct/activity/ZeroingActivity$5;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ZeroingActivity$5;-><init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/ZeroingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ZeroingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V

    const-string/jumbo v1, "zerolist"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/qianhe/yct/activity/ZeroingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/activity/ZeroingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V

    const-string/jumbo v1, "tiltdisplay"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->isRefresAngleRange:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 317
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseActivity;->onDestroy()V

    .line 318
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 295
    iget-boolean v1, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->state:Z

    if-eqz v1, :cond_1

    .line 296
    new-instance v2, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;

    iget-object v3, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    iget v4, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->l1:F

    iget v5, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->l2:F

    iget v6, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->h1:F

    iget v7, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->h2:F

    invoke-direct/range {v2 .. v7}, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;-><init>(Lcom/qianhe/baselib/enums/DeviceType;FFFF)V

    iput-object v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->horizontalAngleRange:Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;

    .line 297
    iget v1, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->l1:F

    .line 300
    iget p1, p1, Lcom/qianhe/rtkclientlib/event/SETHorizontalAngle;->h2:F

    sub-float v1, p1, v1

    .line 301
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->zeroDegrees:D

    .line 302
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeZero:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v4, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->mDegrees:D

    sub-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v1, "%.2f\u00b0"

    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-boolean p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->cancelZero:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/qianhe/yct/R$string;->has_been_canceled:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget p1, Lcom/qianhe/yct/R$string;->zero_successful:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :cond_1
    sget p1, Lcom/qianhe/yct/R$string;->operation_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    .line 307
    :goto_2
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->cancelZero:Z

    return-void
.end method

.method protected onHorizontalAngleRange(Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 255
    iget-boolean v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->isRefresAngleRange:Z

    if-nez v2, :cond_2

    .line 256
    iput-boolean v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->isRefresAngleRange:Z

    .line 257
    iput-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->horizontalAngleRange:Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;

    .line 258
    iget v2, p1, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->l1:F

    .line 261
    iget p1, p1, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->h2:F

    sub-float v2, p1, v2

    .line 262
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p1, v3

    float-to-double v5, p1

    iput-wide v5, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->zeroDegrees:D

    .line 263
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 264
    iget-wide v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->lastDegrees:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->zeroDegrees:D

    iput-wide v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->lastDegrees:D

    :cond_0
    const/4 v2, 0x0

    .line 265
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 266
    iget-object v3, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 267
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string/jumbo v5, "\u00b1%s\u00b0"

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeInitialIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 268
    iput v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeCurrentIndex:I

    iput v2, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeInitialIndex:I

    .line 269
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvLimit:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onINsNavi(Lcom/qianhe/baselib/bean/InsNavi;)V
    .locals 8

    .line 223
    :try_start_0
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iput-wide v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->mDegrees:D

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/qianhe/yct/activity/ZeroingActivity;->refrshAngle(D)V

    .line 226
    iget-object v0, p1, Lcom/qianhe/baselib/bean/InsNavi;->insStausHex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 227
    :goto_0
    iput-boolean v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->isAvailable:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvStatus:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvStatus:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 237
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->horizontalAngleRange:Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;

    if-eqz v0, :cond_3

    .line 238
    iget-wide v4, p1, Lcom/qianhe/baselib/bean/InsNavi;->pitchDegrees:D

    iget p1, v0, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->l1:F

    float-to-double v6, p1

    cmpl-double p1, v4, v6

    if-ltz p1, :cond_2

    iget p1, v0, Lcom/qianhe/rtkclientlib/event/GETHorizontalAngleRange;->h2:F

    float-to-double v0, p1

    cmpg-double p1, v4, v0

    if-gtz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeState:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->horizontal_state:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeState:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeState:Landroid/widget/TextView;

    sget v0, Lcom/qianhe/yct/R$string;->excessive_angle:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvRangeState:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 247
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 162
    const-string v0, "rangeCurrentIndex"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeCurrentIndex:I

    .line 163
    const-string v0, "rangeInitialIndex"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeInitialIndex:I

    .line 165
    iget p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeCurrentIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->binding:Lcom/qianhe/yct/databinding/ActivityZeroingBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityZeroingBinding;->tvLimit:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string v0, "rangeCurrentIndex"

    iget v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeCurrentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v0, "rangeInitialIndex"

    iget v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity;->rangeInitialIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
