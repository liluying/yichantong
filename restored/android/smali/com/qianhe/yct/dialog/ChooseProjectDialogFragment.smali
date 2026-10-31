.class public Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseProjectDialogFragment.java"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

.field private baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

.field private binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

.field private initSelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMultiple:Z

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


# direct methods
.method public static synthetic $r8$lambda$DmcBCl-pqtGLWe-DMisYasE3dWg(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->forceHideKeyboard()V

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbaseProEntity(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/baselib/base/BaseProEntity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbaseProEntity(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->baseProEntity:Lcom/qianhe/baselib/base/BaseProEntity;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;Lcom/qianhe/yct/db/DatabaseManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method private forceHideKeyboard()V
    .locals 3

    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 382
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

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    .line 63
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const-string v3, "multiple"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->isMultiple:Z

    .line 74
    const-string v3, "requestKey"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->initSelList:Ljava/util/ArrayList;

    .line 76
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->lltAll:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->isMultiple:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvConfirm:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->edtName:Landroid/widget/EditText;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvZP:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvSP:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$5;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvDike:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$7;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$7;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvLine:Landroid/widget/TextView;

    new-instance v3, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$8;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$8;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    .line 288
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 289
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 290
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 291
    iget-object v5, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v6, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v6

    iget-object v7, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v5, v6, v1, v7}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 292
    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mDatabaseManager:Lcom/qianhe/yct/db/DatabaseManager;

    sget-object v7, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v7}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v7

    iget-object v8, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mContent:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v8}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 293
    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 301
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 304
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 306
    :cond_4
    :goto_1
    new-instance v1, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->mFilterList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    .line 307
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 308
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    new-instance v2, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$9;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$9;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter$OnActionListener;)V

    if-eqz p1, :cond_9

    .line 317
    const-string/jumbo v1, "zp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 318
    const-string/jumbo v2, "sp"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 319
    const-string/jumbo v3, "wg"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 320
    const-string v4, "dike"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 321
    const-string v5, "line"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz v1, :cond_5

    .line 322
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvZP:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    :cond_5
    if-eqz v2, :cond_6

    .line 323
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvSP:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    :cond_6
    if-eqz v3, :cond_7

    .line 324
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    :cond_7
    if-eqz v4, :cond_8

    .line 325
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvDike:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    :cond_8
    if-eqz p1, :cond_9

    .line 326
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvLine:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_9
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 370
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 371
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 372
    const-string v0, "action"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 333
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvZP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string/jumbo v1, "zp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvSP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string/jumbo v1, "sp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string/jumbo v1, "wg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvDike:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "dike"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v1, "line"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 344
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 352
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 356
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$10;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$10;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/qianhe/yct/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    new-instance p2, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
