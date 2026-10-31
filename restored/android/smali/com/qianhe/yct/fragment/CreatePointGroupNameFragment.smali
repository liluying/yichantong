.class public Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;
.super Lcom/qianhe/yct/base/BaseProjectFragment;
.source "CreatePointGroupNameFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

.field private editGroupLocalId:J

.field private editGroupOnly:Z

.field private initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

.field private isGroupName:Z

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

.field private pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;


# direct methods
.method public static synthetic $r8$lambda$6Y1J8VXwfOnk0jbQsW6XZXvLdNo(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 65
    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$EaOLfBDaBjittyiOgZc03_KWv_U(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 104
    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic $r8$lambda$NkPSwPzhPzvuXmC4xnVHaXqhTes(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$X_LidOIGVMjH6x33VQgHKGTYpZ0(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mlppE2CSEG72WymZopH-MBxYWLI(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->onContinue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpointlibEntity(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfocusNameInput(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->focusNameInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDefaultName(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->setDefaultName()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseProjectFragment;-><init>()V

    return-void
.end method

.method private focusNameInput()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 203
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleGroupNameContinue(Ljava/lang/String;)V
    .locals 8

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->use_default_values:I

    .line 129
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultname"

    .line 128
    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2, p1}, Lcom/qianhe/yct/db/DatabaseManager;->isPointGroupNameExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->point_group_name_already_exists:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    .line 135
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {p1, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 138
    :cond_3
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->editGroupOnly:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->editGroupLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    .line 139
    iget-object v4, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v4, v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryPointGroupByLocalId(J)Lcom/qianhe/baselib/bean/PointGroupEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 141
    iput-object p1, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->updateTime:J

    .line 143
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updatePointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)I

    .line 144
    iget-wide v4, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupId:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_4

    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyPointGroup(Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    .line 145
    :cond_4
    iget-wide v0, v0, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    invoke-direct {p0, v0, v1, p1}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->openPointList(JLjava/lang/String;)V

    :cond_5
    return-void

    .line 149
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz v0, :cond_7

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    .line 151
    invoke-virtual {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->isCreateNewGroup()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 152
    invoke-virtual {v0, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->setPendingGroupName(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->openPointListPending(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvNameDes:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->isGroupName:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/qianhe/yct/R$string;->point_group_name:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/qianhe/yct/R$string;->point_name:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->ivReset:Landroid/widget/ImageView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$1;-><init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvPrevious:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvContinue:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$2;-><init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    const-string v3, "defaultname"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 97
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-object v1, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->isGroupName:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->editGroupOnly:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getPendingGroupName()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    new-instance v1, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onContinue()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-boolean v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->isGroupName:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->handleGroupNameContinue(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    sget v1, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$string;->use_default_values:I

    .line 119
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "defaultname"

    .line 118
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object v0, v1, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private openPointList(JLjava/lang/String;)V
    .locals 3

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->openPointListAfterGroupNamed(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/PointListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string v1, "groupLocalId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 180
    const-string p1, "groupName"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private openPointListPending(Ljava/lang/String;)V
    .locals 4

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 163
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->openPointListAfterGroupNamed(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/qianhe/yct/activity/PointListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    const-string v1, "pendingGroupName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setDefaultName()V
    .locals 8

    .line 186
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->isGroupName:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/qianhe/yct/db/DatabaseManager;->generateDefaultPointGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupCreateActivity;->getGroupLocalId()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_2

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->id:J

    cmp-long v7, v5, v1

    if-lez v7, :cond_2

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0, v3, v4}, Lcom/qianhe/yct/db/DatabaseManager;->generateDefaultPointName(J)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    if-eqz v0, :cond_3

    .line 196
    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

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
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    const-string p2, "initEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->initEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 51
    const-string p2, "pointlibEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/PointlibEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointlibEntity:Lcom/qianhe/baselib/bean/PointlibEntity;

    .line 52
    const-string p2, "pointGroupEntity"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/qianhe/baselib/bean/PointGroupEntity;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->pointGroupEntity:Lcom/qianhe/baselib/bean/PointGroupEntity;

    .line 53
    const-string p2, "isGroupName"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->isGroupName:Z

    .line 54
    const-string p2, "editGroupOnly"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->editGroupOnly:Z

    .line 55
    const-string p2, "editGroupLocalId"

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->editGroupLocalId:J

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->tvNameDes:Landroid/widget/TextView;

    sget p2, Lcom/qianhe/yct/R$string;->point_group_name:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->initView()V

    .line 59
    iget-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->binding:Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
