.class public Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "WaGouChoiceTypeFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

.field private initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mINS:Lcom/qianhe/baselib/bean/InsNavi;

.field private waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)Lcom/qianhe/baselib/bean/WaGouEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$1;-><init>(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$2;-><init>(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$3;-><init>(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$4;-><init>(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment$5;-><init>(Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->showData()V

    return-void
.end method

.method private showData()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    iget-object v5, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v6, v5, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    const-wide/16 v10, 0x0

    cmpl-double v12, v6, v10

    if-nez v12, :cond_0

    .line 118
    iget v5, v5, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v6, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 119
    iget-object v5, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v10, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    iget-wide v12, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    new-array v14, v2, [D

    aput-wide v6, v14, v4

    aput-wide v10, v14, v3

    aput-wide v12, v14, v1

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v10, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v12, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide v10, v2, v3

    aput-wide v12, v2, v1

    invoke-static {v14, v2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v1

    iput-wide v1, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    :cond_0
    move-wide/from16 v16, v8

    goto/16 :goto_4

    .line 120
    :cond_1
    iget-object v5, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->depth:D

    cmpl-double v12, v6, v10

    if-eqz v12, :cond_0

    iget-wide v12, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    cmpl-double v14, v12, v10

    if-eqz v14, :cond_0

    .line 123
    iget-wide v12, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevationBenchmark:D

    iget-wide v14, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation1:D

    cmpl-double v16, v12, v14

    if-nez v16, :cond_2

    sub-double v6, v14, v6

    .line 124
    iget-wide v12, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    sub-double/2addr v6, v12

    move-wide/from16 v16, v8

    goto :goto_0

    :cond_2
    move-wide/from16 v16, v8

    .line 125
    iget-wide v8, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    cmpl-double v18, v12, v8

    if-nez v18, :cond_3

    sub-double/2addr v8, v6

    sub-double v6, v14, v8

    goto :goto_0

    :cond_3
    move-wide v6, v10

    :goto_0
    cmpl-double v8, v6, v10

    if-eqz v8, :cond_4

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-object v6, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v6, v6, Lcom/qianhe/baselib/bean/WaGouEntity;->ratio:D

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v9

    div-double/2addr v1, v6

    goto :goto_1

    :cond_4
    iget-wide v6, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->east1:D

    iget-wide v9, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->north1:D

    new-array v11, v2, [D

    aput-wide v6, v11, v4

    aput-wide v9, v11, v3

    aput-wide v14, v11, v1

    iget-wide v6, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->east2:D

    iget-wide v9, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->north2:D

    iget-wide v12, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->targetElevation2:D

    new-array v2, v2, [D

    aput-wide v6, v2, v4

    aput-wide v9, v2, v3

    aput-wide v12, v2, v1

    invoke-static {v11, v2}, Lcom/qianhe/baselib/utils/CoordsCalculUtils;->calculateDistanceGAUSS([D[D)D

    move-result-wide v1

    :goto_1
    iput-wide v1, v5, Lcom/qianhe/baselib/bean/WaGouEntity;->length:D

    .line 129
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    if-lez v8, :cond_5

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    :goto_2
    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    goto :goto_2

    :goto_3
    iput v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 132
    :goto_4
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_6

    goto :goto_6

    .line 137
    :cond_6
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne v1, v2, :cond_7

    goto :goto_5

    .line 143
    :cond_7
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    iget-wide v5, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v2, v5, v16

    if-eqz v2, :cond_8

    .line 144
    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 145
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 146
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 147
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_8
    return-void

    .line 138
    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->UP:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 139
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 140
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 141
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 133
    :cond_a
    :goto_6
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->DOWN:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    iput v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    .line 134
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgDown:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 135
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgFlat:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 136
    iget-object v1, v0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->ivWgUp:Lcom/qianhe/yct/view/NightAwareImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

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

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 32
    const-string p1, ","

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 34
    iget-object p2, p0, Lcom/qianhe/yct/base/BaseProjectFragment;->mSp:Landroid/content/SharedPreferences;

    const-string p3, "current_coords"

    const-string v0, ""

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 36
    new-instance p3, Lcom/qianhe/baselib/bean/InsNavi;

    invoke-direct {p3}, Lcom/qianhe/baselib/bean/InsNavi;-><init>()V

    iput-object p3, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    .line 38
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->longitude:D

    .line 39
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/qianhe/baselib/bean/InsNavi;->latitude:D

    .line 40
    iget-object p3, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->mINS:Lcom/qianhe/baselib/bean/InsNavi;

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

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 46
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->initEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 47
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/bean/WaGouEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->waGouEntity:Lcom/qianhe/baselib/bean/WaGouEntity;

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->initView()V

    .line 50
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->binding:Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentWgChoiceTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 56
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/WaGouChoiceTypeFragment;->showData()V

    return-void
.end method
