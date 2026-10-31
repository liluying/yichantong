.class public Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "CurvedSlopeStep2Fragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

.field private isH5Pro:Z

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mToothType:I


# direct methods
.method public static synthetic $r8$lambda$pYnA0JiDJwNqUzm0BjnupZNHa-Q(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;Landroid/view/View;)V
    .locals 7

    .line 160
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 160
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east2:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north2:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev2:D

    .line 162
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$rNwUbcp-3hpyvcFVPHPeS2IrfYY(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;Landroid/view/View;)Z
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 164
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$z7JW-VkqzFRrtpYMfCY_VcrYh6o(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 53
    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    aget-wide v1, p2, p1

    const/4 p1, 0x1

    aget-wide v3, p2, p1

    const/4 p1, 0x2

    aget-wide v5, p2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurvedSlopeEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)Lcom/qianhe/baselib/bean/CurvedSlopeEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->mToothType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;DDD)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;
    .locals 1

    .line 274
    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$10;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$10;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;->observeCoordsStep2()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$9;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$9;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$3;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$4;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$5;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setOnTypetSelectedListener(Lcom/qianhe/yct/view/DitchTypeDropdown$OnTypeSelectedListener;)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$6;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$7;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$8;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->showData()V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 259
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east2:D

    .line 260
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north2:D

    .line 261
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev2:D

    const/4 v0, 0x3

    .line 262
    new-array v8, v0, [D

    .line 263
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertToGeodeticInverse(DDD[D)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v8}, Lcom/qianhe/yct/base/BaseProjectFragment;->isVaildCoords([D)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lon2:D

    .line 269
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lat2:D

    return p2

    .line 264
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lon2:D

    .line 265
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->lat2:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 251
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 252
    iget-object p6, p1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    const-string v2, ""

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    cmpl-double v6, p2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0, p2, p3, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p2, p1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p2, p1, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData()V
    .locals 8

    .line 217
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->mToothType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->fillDigType:Lcom/qianhe/yct/view/DitchTypeDropdown;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v4, v1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthB:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/DitchTypeDropdown;->setCurrentType(I)V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->lltCollect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthB:D

    cmpl-double v3, v1, v6

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->depthB:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatMetertoOther(ID)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    const-string v1, "0"

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    if-eqz v0, :cond_a

    iget-wide v2, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->east2:D

    iget-wide v4, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->north2:D

    iget-wide v6, v0, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;->elev2:D

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->showCoords(DDD)V

    :cond_a
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

    .line 317
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 60
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    .line 61
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 63
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 65
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 66
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 67
    iget-object p3, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 74
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->curvedSlopeEntity:Lcom/qianhe/baselib/bean/CurvedSlopeEntity;

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->initView()V

    .line 77
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->initObserve()V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 3

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 84
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->isH5Pro:Z

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCurvedslopeStep2Binding;->unitDropdown:Lcom/qianhe/yct/view/UnitDropdownView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->getGlobalUnit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/view/UnitDropdownView;->initUnit(Landroid/content/Context;I)V

    .line 86
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CurvedSlopeStep2Fragment;->showData()V

    return-void
.end method
