.class public Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "ShuaPoStep2Fragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

.field private cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

.field private initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

.field private isH5Pro:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private mToothType:I

.field private shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;


# direct methods
.method public static synthetic $r8$lambda$0c43B2tPgALilgMWfSpFvDGmOVI(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;Landroid/view/View;)Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    const/4 p1, 0x1

    .line 178
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$BhGy1j3UutjagpOYKiwVMYgj-k8(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;Landroid/view/View;)V
    .locals 7

    .line 174
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    .line 174
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget-object v0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->cadPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    iget-wide v3, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    iget-wide v5, p0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    .line 176
    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/cad/CadEntityChooseIntent;->singlePoint(DDD)[D

    move-result-object p0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {p1, v0, v1, p0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;->pickFromFile(Ljava/lang/String;I[D)V

    return-void
.end method

.method public static synthetic $r8$lambda$OBHpzCL3aR46eKe2p47A2ACBMp8(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;Landroid/view/View;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    .line 182
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mToothType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    iget p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mToothType:I

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->handleMeasureCollectClick(ILcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ebOK12u7krpov9NQWuPX9e1uh0A(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;Ljava/lang/String;[D)V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

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

    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmToothType(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mToothType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->clearCadPath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnext(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->next(DDD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCoords(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;DDD)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->showCoords(DDD)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private clearCadPath()V
    .locals 6

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

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

    .line 321
    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$11;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$11;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    return-object v0
.end method

.method private initObserve()V
    .locals 3

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;->observeCoordsStep2()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$10;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$10;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->lltSel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvCadImport:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivStep2:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_sp_down2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvSpType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->down_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivStep2:Landroid/widget/ImageView;

    sget v1, Lcom/qianhe/yct/R$drawable;->icon_sp_up2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvSpType:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->up_slope:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$1;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$2;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$3;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$4;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->createToothCollectHandler()Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->setupToothViewCollectListeners(Lcom/qianhe/yct/view/ToothView;Lcom/qianhe/yct/base/BaseProjectFragment$ToothCollectHandler;)V

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvCadImport:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvMeasure:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvPointLib:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$5;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->lltSel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$6;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$7;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$8;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->showData(Lcom/qianhe/baselib/bean/ShuaPoEntity;)V

    return-void
.end method

.method private next(DDD)V
    .locals 0

    .line 263
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-result p1

    move-object p2, p0

    if-nez p1, :cond_0

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget p3, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p4, p5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 266
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string p3, "next"

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private saveInputCoordsToGeodetic(DDD)Z
    .locals 9

    .line 306
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-wide p1, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    .line 307
    iput-wide p3, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    .line 308
    iput-wide p5, v0, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    const/4 v0, 0x3

    .line 309
    new-array v8, v0, [D

    .line 310
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

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    aget-wide p2, v8, p2

    invoke-virtual {p0, p2, p3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon2:D

    .line 316
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const/4 p2, 0x1

    aget-wide p3, v8, p2

    invoke-virtual {p0, p3, p4}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat2:D

    return p2

    .line 311
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLon2:D

    .line 312
    iput-wide p3, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetLat2:D

    return p2
.end method

.method private showCoords(DDD)V
    .locals 7

    .line 298
    invoke-direct/range {p0 .. p6}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->saveInputCoordsToGeodetic(DDD)Z

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 299
    iget-object p6, p1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object p6, p6, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

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

    .line 300
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, p4, v4

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p5, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p2, p1, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    cmpl-double p3, v0, v4

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0, v1, v3}, Lcom/qianhe/yct/base/BaseProjectFragment;->formatCoords(DI)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showData(Lcom/qianhe/baselib/bean/ShuaPoEntity;)V
    .locals 12

    .line 272
    iget-wide v0, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevationBenchmark:D

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_0

    iget-wide v2, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    cmpl-double v5, v0, v2

    if-nez v5, :cond_0

    .line 273
    iput v4, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    iget v1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mToothType:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/view/ToothView;->setCurrentType(I)V

    .line 276
    iget-wide v6, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->east2:D

    iget-wide v8, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->north2:D

    iget-wide v10, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->targetElevation2:D

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->showCoords(DDD)V

    .line 277
    iget-object v0, v5, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->ivSelB:Landroid/widget/ImageView;

    iget v1, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    const/4 v2, 0x0

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 278
    iget-object v0, v5, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    iget v1, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickB:I

    if-eq v1, v4, :cond_3

    iget p1, p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;->tickA:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

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

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/qianhe/yct/base/BaseProjectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance p1, Lcom/qianhe/yct/activity/cad/CadPickHelper;

    new-instance v0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;)V

    invoke-direct {p1, p0, v0}, Lcom/qianhe/yct/activity/cad/CadPickHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/qianhe/yct/activity/cad/CadPickHelper$Callback;)V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->cadPickHelper:Lcom/qianhe/yct/activity/cad/CadPickHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 60
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 62
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 64
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 66
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 67
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 68
    iget-object p3, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->initEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 75
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/ShuaPoEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->shuaPoEntity:Lcom/qianhe/baselib/bean/ShuaPoEntity;

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->initView()V

    .line 78
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->initObserve()V

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->binding:Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentSpStep2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 367
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 85
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/application/YCTApplication;->isH5Pro()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->isH5Pro:Z

    .line 86
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/ShuaPoStep2Fragment;->initView()V

    return-void
.end method
