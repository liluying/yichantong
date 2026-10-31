.class public Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ExcavatorSelectDialogFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

.field private resultRequestKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$NE4lvt7vH19_bJ6oE0VjLezu4lU(Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v0, "createNew"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$VapQjhQQMya8ZUZc5_5ixMEyaVs(Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$YD6h9L1OU1nuRk_mGnojzreWjUE(Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;ILcom/qianhe/baselib/bean/ExcavatorEntity;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v0, "excavator"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    const-string p2, "createNew"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 41
    const-string v0, "forearm_select"

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    return-void
.end method

.method private loadExcavatorList()V
    .locals 5

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryExcavatorByUserId(J)Ljava/util/List;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;

    if-eqz v2, :cond_0

    .line 90
    iget-object v3, v2, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParams:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v2}, Lcom/qianhe/yct/utils/CalibParamsIdUtil;->isMode1Excavator(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 101
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    :goto_1
    new-instance v0, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 107
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    new-instance v1, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter;->setOnItemClickListener(Lcom/qianhe/yct/adapter/ExcavatorSelectDialogAdapter$OnItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->tvCreate:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newBucketSourceInstance()Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;
    .locals 2

    .line 48
    const-string v0, "bucket_from_excavator"

    sget v1, Lcom/qianhe/yct/R$string;->select_bucket:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;
    .locals 2

    .line 44
    const-string v0, "forearm_select"

    sget v1, Lcom/qianhe/yct/R$string;->select_forearm:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;
    .locals 3

    .line 52
    new-instance v0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v2, "requestKey"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo p0, "title"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    .line 64
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    sget v1, Lcom/qianhe/yct/R$string;->select_forearm:I

    if-eqz v0, :cond_2

    .line 74
    const-string v2, "requestKey"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    iput-object v2, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    .line 78
    :cond_1
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ExcavatorSelectDialogFragment;->loadExcavatorList()V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 134
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method
