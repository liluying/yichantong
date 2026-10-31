.class public Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ShareMultipleProjectDialogFragment.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

.field private binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

.field private categoryAdapter:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;

.field private final categoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private confirmed:Z

.field private initSelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Ljava/lang/String;

.field private mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

.field private mFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/baselib/base/BaseProEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedProjectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3PbCGaaOVNoADotDgcAL9EB81ls(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;I)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    .line 175
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    .line 176
    invoke-virtual {p1}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->isSelected()Z

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->setSelected(Z)V

    goto :goto_0

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    .line 180
    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->setSelected(Z)V

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryAdapter:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 182
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->updateFilterList()V

    return-void
.end method

.method public static synthetic $r8$lambda$OVVTTdbI8Zli9uj8tyjBQ2eJdtk(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    .line 188
    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 194
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 195
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    .line 196
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$P4KnPMzYyse8hnXRjWi-5_U4EVs(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$TVLWW_R0Z0DsNDFA9F64_RZ6NGw(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZFIwN8hvWLaz-Iui2ojsx1RwxIo(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Landroid/view/View;)V
    .locals 6

    .line 97
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    .line 97
    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 98
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 99
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 101
    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 102
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 110
    iget-wide v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    iget-object p0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p0}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->refreshData(Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public static synthetic $r8$lambda$ggFmpzSfQguXGZoHWT8KBr0Q21c(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->forceHideKeyboard()V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$pOHDrui-mbKsCIFaWhVLeGft6tg(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Ljava/util/ArrayList;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->updateSelectAllState()V

    return-void
.end method

.method public static synthetic $r8$lambda$uOQA8U95lqojOZLhCWg7fNfK22Q(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->confirmed:Z

    .line 86
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v0, "action"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "selectedProjectIds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_project:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContent(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mContent:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFilterList(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->updateFilterList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mContent:Ljava/lang/String;

    return-void
.end method

.method private forceHideKeyboard()V
    .locals 3

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_2
    return-void
.end method

.method private initCategories()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->leveling:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->slope:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->ditch:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->dike:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->line:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->polyline:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->one_point_area:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->three_point_area:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->site_leveling:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    sget v2, Lcom/qianhe/yct/R$string;->arbitrary_line:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;-><init>(Ljava/lang/String;Lcom/qianhe/baselib/enums/ProjectEnum;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setupCategoryRecyclerView()V
    .locals 5

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 172
    :goto_1
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    new-instance v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryAdapter:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;

    .line 174
    new-instance v2, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda6;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;->setOnItemClickListener(Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$OnItemClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryAdapter:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda7;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 203
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rvCategory:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupProjectRecyclerView()V
    .locals 4

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    :goto_0
    new-instance v0, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    .line 217
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 218
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda5;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter$OnActionListener;)V

    return-void
.end method

.method private updateFilterList()V
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    .line 229
    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->getType()Lcom/qianhe/baselib/enums/ProjectEnum;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 236
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    .line 239
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->getType()Lcom/qianhe/baselib/enums/ProjectEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    iget-object v5, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v4, v2, v1, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 243
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;

    if-eqz v0, :cond_4

    .line 244
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/adapter/ChoiceMultipleProjectAdapter;->refreshData(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 246
    :cond_4
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->updateSelectAllState()V

    return-void
.end method

.method private updateSelectAllState()V
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 251
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 252
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    iget-wide v4, v2, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    .line 63
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 70
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->initCategories()V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v2, "selectedProjectIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_1
    const-string v2, "requestKey"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->selectedProjectIds:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->initSelList:Ljava/util/ArrayList;

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->lltAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseMultipleProjectBinding;->edtName:Landroid/widget/EditText;

    new-instance v2, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->setupCategoryRecyclerView()V

    .line 136
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->setupProjectRecyclerView()V

    if-eqz p1, :cond_3

    .line 139
    const-string v1, "selectedCategoryIndex"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 140
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->setSelected(Z)V

    .line 142
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryAdapter:Lcom/qianhe/yct/adapter/ProjectCategoryAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->updateFilterList()V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 306
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 307
    iget-boolean p1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->confirmed:Z

    if-eqz p1, :cond_0

    return-void

    .line 309
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 310
    const-string v0, "action"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v0, "selectedProjectIds"

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->initSelList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 262
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;->categoryItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;

    invoke-virtual {v1}, Lcom/qianhe/yct/adapter/ProjectCategoryAdapter$CategoryItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 270
    :goto_1
    const-string v1, "selectedCategoryIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 287
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v2, 0x3f666666    # 0.9f

    .line 293
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 294
    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 296
    :cond_1
    new-instance v1, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    new-instance p2, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/qianhe/yct/dialog/ShareMultipleProjectDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
