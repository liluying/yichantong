.class public Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "BucketSelectDialogFragment.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/BucketSelectDialogAdapter;

.field private binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

.field private currentIndex:I

.field private filterDistanceMeasure:Z

.field private hasMeasureFilter:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/bean/ShovelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private resultRequestKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0vZNH3thgfccWu7CSUj08oOIKns(Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;ILcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 134
    const-string v0, "bucket"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    const-string p2, "createNew"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$ttkbnv_fg49uoA0lMDwFpiq0UOI(Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 143
    const-string v0, "createNew"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$vX9nK3ZAEYFYZr0b3Ngy5SeSlqs(Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->currentIndex:I

    .line 52
    const-string v0, "bucket_select"

    iput-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    return-void
.end method

.method private loadBucketList()V
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryShovelByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->mList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/bean/ShovelEntity;

    .line 109
    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesAutoGenerateParams()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v2, v1, Lcom/qianhe/baselib/bean/ShovelEntity;->param:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->hasMeasureFilter:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/qianhe/baselib/bean/ShovelEntity;->usesDistanceMeasure()Z

    move-result v2

    iget-boolean v3, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->filterDistanceMeasure:Z

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    :goto_1
    new-instance v0, Lcom/qianhe/yct/adapter/BucketSelectDialogAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->mList:Ljava/util/List;

    iget v3, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->currentIndex:I

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/adapter/BucketSelectDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/BucketSelectDialogAdapter;

    .line 130
    iget-object v1, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/BucketSelectDialogAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/BucketSelectDialogAdapter;->setOnItemClickListener(Lcom/qianhe/yct/adapter/BucketSelectDialogAdapter$OnItemClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->tvCreate:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0}, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->newInstance(ZLjava/lang/String;I)Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(ZLjava/lang/String;I)Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;
    .locals 3

    .line 59
    new-instance v0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;

    invoke-direct {v0}, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v2, "distanceMeasure"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    const-string p0, "requestKey"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string p0, "currentIndex"

    const/4 p1, -0x1

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 65
    const-string/jumbo p0, "title"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    .line 75
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, -0x1

    .line 85
    const-string v3, "currentIndex"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->currentIndex:I

    .line 86
    const-string v2, "distanceMeasure"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->hasMeasureFilter:Z

    .line 87
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->filterDistanceMeasure:Z

    .line 88
    const-string v2, "requestKey"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    iput-object v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    goto :goto_1

    .line 91
    :cond_1
    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->hasMeasureFilter:Z

    if-eqz v2, :cond_3

    .line 92
    iget-boolean v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->filterDistanceMeasure:Z

    if-eqz v2, :cond_2

    const-string v2, "bucket_select_distance"

    goto :goto_0

    :cond_2
    const-string v2, "bucket_select_reading"

    :goto_0
    iput-object v2, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->resultRequestKey:Ljava/lang/String;

    .line 94
    :cond_3
    :goto_1
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v1, p0, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogBucketSelectBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 100
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/BucketSelectDialogFragment;->loadBucketList()V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 151
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 158
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
