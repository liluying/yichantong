.class public Lcom/qianhe/yct/fragment/DemoCustomDataFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "DemoCustomDataFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

.field private isH5Pro:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplySourceGeodeticInput(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->applySourceGeodeticInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshDisplayCoords(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->refreshDisplayCoords()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;DI)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;DI)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private applySourceGeodeticInput()V
    .locals 10

    .line 103
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLon:Lcom/qianhe/yct/view/NumericEditText;

    .line 104
    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLat:Lcom/qianhe/yct/view/NumericEditText;

    .line 105
    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    iget-object v5, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvElev:Lcom/qianhe/yct/view/NumericEditText;

    .line 106
    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 103
    invoke-virtual/range {v0 .. v6}, Lcom/qianhe/yct/utils/DemoDataManager;->setINSCoords(DDD)V

    .line 107
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->refreshDisplayCoords()V

    .line 108
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getGeodeticLon()D

    move-result-wide v1

    .line 110
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/DemoDataManager;->getGeodeticLat()D

    move-result-wide v3

    .line 111
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qianhe/yct/utils/DemoDataManager;->getGeodeticElev()D

    move-result-wide v5

    const/4 v7, 0x3

    new-array v8, v7, [D

    const/4 v9, 0x0

    aput-wide v1, v8, v9

    const/4 v1, 0x1

    aput-wide v3, v8, v1

    const/4 v2, 0x2

    aput-wide v5, v8, v2

    .line 108
    invoke-virtual {v0, v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGAUSSXY([D)[D

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvEast:Lcom/qianhe/yct/view/NumericEditText;

    aget-wide v3, v0, v9

    invoke-virtual {p0, v3, v4, v7}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvNorth:Lcom/qianhe/yct/view/NumericEditText;

    aget-wide v3, v0, v1

    invoke-virtual {p0, v3, v4, v7}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsElev()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v7}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 37
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v3

    iput-boolean v3, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->isH5Pro:Z

    .line 38
    iget-object v4, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->lltDataStaus:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->refreshDisplayCoords()V

    .line 40
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v3

    .line 41
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/utils/DemoDataManager;->getGeodeticLon()D

    move-result-wide v6

    .line 42
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/utils/DemoDataManager;->getGeodeticLat()D

    move-result-wide v8

    .line 43
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qianhe/yct/utils/DemoDataManager;->getGeodeticElev()D

    move-result-wide v10

    new-array v4, v2, [D

    aput-wide v6, v4, v5

    aput-wide v8, v4, v1

    aput-wide v10, v4, v0

    .line 40
    invoke-virtual {v3, v4}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGAUSSXY([D)[D

    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvEast:Lcom/qianhe/yct/view/NumericEditText;

    aget-wide v6, v3, v5

    invoke-virtual {p0, v6, v7, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v4, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v4, v4, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvNorth:Lcom/qianhe/yct/view/NumericEditText;

    aget-wide v6, v3, v1

    invoke-virtual {p0, v6, v7, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->setupH5TypeSpinner()V

    .line 48
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->setupStatusSpinner()V

    .line 49
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->setupSolSpinner()V

    .line 50
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLon:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v3, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$1;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$1;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLat:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v3, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$2;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$2;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 66
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v3, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$3;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$3;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v3, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$4;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$4;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v3, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 96
    iget-object v2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spDataStatus:Landroid/widget/Spinner;

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/yct/utils/DemoDataManager;->getH5proDataStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1835010"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 97
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/DemoDataManager;->getQuality()I

    move-result v2

    .line 98
    iget-object v3, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spQuality:Landroid/widget/Spinner;

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private refreshDisplayCoords()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLon:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsLon()D

    move-result-wide v1

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvLat:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsLat()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsElev()D

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsLat()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsElev()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "current_coords"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setupH5TypeSpinner()V
    .locals 4

    .line 129
    const-string v0, "H5"

    const-string v1, "H5Pro"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$6;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    const v0, 0x1090009

    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spH5Type:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spH5Type:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$7;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 182
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spH5Type:Landroid/widget/Spinner;

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->isH5Pro:Z

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private setupSolSpinner()V
    .locals 4

    .line 244
    sget v0, Lcom/qianhe/yct/R$string;->fixed_solution:I

    .line 245
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->diff_solution:I

    .line 246
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->invalid_solution:I

    .line 247
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$10;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$10;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    const v0, 0x1090009

    .line 274
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spQuality:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spQuality:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$11;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$11;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setupStatusSpinner()V
    .locals 4

    .line 187
    sget v0, Lcom/qianhe/yct/R$string;->data_available:I

    .line 188
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->data_unavailable:I

    .line 189
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$8;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    const v0, 0x1090009

    .line 216
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spDataStatus:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->spDataStatus:Landroid/widget/Spinner;

    new-instance v1, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$9;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$9;-><init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    .line 32
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->initView()V

    .line 33
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->binding:Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 305
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseFragment;->onDestroyView()V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsLat()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsElev()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/qianhe/yct/base/BaseFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "current_coords"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524d\u8bbe\u5907\u5750\u6807(\u6f14\u793a\u6a21\u5f0f)\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    return-void
.end method
