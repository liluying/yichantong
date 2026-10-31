.class public Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "CreateExcavatorNameFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

.field private excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;


# direct methods
.method public static synthetic $r8$lambda$1mDeaEkJn6zMBAAmyNoUODjb9-E(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cF6403tychB1k9SBw7tRk1A1avE(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 59
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object p0, p0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eOA0bmGhZuFOHCn6tFIumIxnSSY(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;Landroid/view/View;)V
    .locals 3

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 80
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
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

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->containsUnderscore(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->name_cannot_contain_underscore:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string v2, "excavator"

    invoke-virtual {v0, v2, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->excavator_name_already_exists:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->onNameValidated()V

    return-void
.end method

.method public static synthetic $r8$lambda$tloLd1uNnMRQ2uFg71B_p4DKef8(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    const-string p1, "index"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->onCreateOrReplaceChosen(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDefaultName(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->setDefaultName()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvNameDes:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->excavator_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/qianhe/yct/utils/NoUnderscoreInputFilter;->apply(Landroid/widget/EditText;)V

    .line 58
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$1;-><init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/qianhe/yct/base/BaseProjectFragment;->bindContinueClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$2;-><init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V

    const-string v3, "defaultname"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->setDefaultCursor()V

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V

    const-string v2, "create_or_replace"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    return-void
.end method

.method private onCreateOrReplaceChosen(I)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-nez p1, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->onChooseCreateNewExcavator()V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 169
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->onChooseReplaceBucket()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onNameValidated()V
    .locals 6

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->proceedCreate()V

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;

    .line 129
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->proceedCreate()V

    return-void

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->getHostLibMode()I

    move-result v1

    .line 134
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/excavator/ExcavatorCreateActivity;->isHostCalibReceived()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_5

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->proceedCreate()V

    return-void

    .line 139
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->showCreateOrReplaceDialog()V

    return-void

    .line 135
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->proceedCreate()V

    return-void
.end method

.method private proceedCreate()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvContinue:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->postWizardNext(Landroid/view/View;)V

    return-void
.end method

.method private setDefaultCursor()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;-><init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultName()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-wide/16 v3, 0x0

    .line 198
    invoke-virtual {v2, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 199
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 200
    iget-object v5, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v5, v5, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/qianhe/yct/R$string;->excavator:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    const-string v2, "excavator"

    invoke-virtual {v1, v2, v0}, Lcom/qianhe/yct/db/DatabaseManager;->isEntityNameExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    iget-wide v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->localId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    sget v3, Lcom/qianhe/yct/R$string;->excavator:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "%s1"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

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

.method private showCreateOrReplaceDialog()V
    .locals 6

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChooseListDialogFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    sget v2, Lcom/qianhe/yct/R$string;->create_new_excavator:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget v2, Lcom/qianhe/yct/R$string;->replace_bucket:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;

    invoke-direct {v2}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;-><init>()V

    .line 153
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 154
    sget v4, Lcom/qianhe/yct/R$string;->create_or_replace_title:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v4, "list"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 156
    const-string v0, "requestKey"

    const-string v4, "create_or_replace"

    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

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

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 49
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveInitExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 50
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;->resolveExcavatorEntity()Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->excavatorEntity:Lcom/qianhe/baselib/bean/ExcavatorEntity;

    .line 51
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initView()V

    .line 52
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvContinue:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseProjectFragment;->restoreContinueEnabled(Landroid/view/View;)V

    return-void
.end method
