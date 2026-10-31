.class public Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseLanguageDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$OnConfirmListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

.field private binding:Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/baselib/bean/LanguageEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetonConfirmListener(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method private loadLanguagesJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "languages.json"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 87
    new-array v0, v0, [B

    .line 88
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 90
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bfb\u53d6\u8bed\u8a00\u5217\u8868\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 94
    const-string/jumbo p1, "{}"

    return-object p1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogLanguageListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

    .line 44
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogLanguageListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    const-string v1, "requestKey"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogLanguageListBinding;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/qianhe/yct/R$string;->select_language:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogLanguageListBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->loadLanguagesJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)V

    .line 62
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->mList:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogLanguageListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v0, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

    .line 65
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogLanguageListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogLanguageListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ChooseLanguageAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ChooseLanguageAdapter$OnActionListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 127
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

    .line 128
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/ChooseLanguageDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
