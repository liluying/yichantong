.class public Lcom/qianhe/yct/fragment/CreateProjectNameFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "CreateProjectNameFragment.java"


# instance fields
.field private baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

.field private binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

.field private initEntity:Lcom/qianhe/baselib/base/BaseProEntity;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;


# direct methods
.method public static synthetic $r8$lambda$-CIvXvrf7csBBUDnjlWmcChYYqY(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 81
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object p0, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$BRo4ZKS1w6GhcWQQQ22rLdhGlT0(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;Landroid/view/View;)V
    .locals 3

    .line 86
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 86
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "defaultname"

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->isNameExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->project_name_already_exists:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iput-object p1, p0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string p1, "next"

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eHxOQE2xv2R7fdoP1Lbatm0b9uU(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbaseProEntity(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/baselib/base/BaseProEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDefaultName(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->setDefaultName()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->ivReset:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->editState:I

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$1;-><init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$2;-><init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V

    const-string v3, "defaultname"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 121
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->setDefaultCursor()V

    return-void
.end method

.method private isNameExists(Ljava/lang/String;)Z
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExistsInEngineering(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private setDefaultCursor()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;-><init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultName()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 140
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityById(ILjava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 143
    sget v3, Lcom/qianhe/yct/R$string;->leveling:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 145
    sget v3, Lcom/qianhe/yct/R$string;->slope:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 147
    sget v3, Lcom/qianhe/yct/R$string;->ditch:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 149
    sget v3, Lcom/qianhe/yct/R$string;->dike:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 151
    sget v3, Lcom/qianhe/yct/R$string;->line:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 152
    :cond_4
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 153
    sget v3, Lcom/qianhe/yct/R$string;->polyline:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 154
    :cond_5
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 155
    sget v3, Lcom/qianhe/yct/R$string;->one_point_area:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 156
    :cond_6
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 157
    sget v3, Lcom/qianhe/yct/R$string;->three_point_area:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 158
    :cond_7
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 159
    sget v3, Lcom/qianhe/yct/R$string;->site_leveling:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 160
    :cond_8
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 161
    sget v3, Lcom/qianhe/yct/R$string;->arbitrary_line:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 162
    :cond_9
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 163
    sget v3, Lcom/qianhe/yct/R$string;->curved_slope:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 164
    :cond_a
    iget-object v3, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget v3, v3, Lcom/qianhe/baselib/base/BaseProEntity;->type:I

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 165
    sget v3, Lcom/qianhe/yct/R$string;->multi_point_area:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 164
    :cond_b
    const-string v3, ""

    :goto_0
    if-eqz v2, :cond_e

    .line 167
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 168
    iget-object v4, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v4, v4, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_c

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    goto :goto_1

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%s"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_1
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->isNameExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 170
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v3, v1, v6

    if-nez v3, :cond_d

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_d
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 175
    :cond_e
    iget-object v2, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    const-string v4, "%s1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

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

    .line 0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/base/BaseProEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    .line 54
    const-string p2, "baseProEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qianhe/baselib/base/BaseProEntity;

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvNameDes:Landroid/widget/TextView;

    sget p2, Lcom/qianhe/yct/R$string;->project_name:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initView()V

    .line 58
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 44
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initView()V

    return-void
.end method
