.class public Lcom/qianhe/yct/dialog/ChooseListDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "ChooseListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;
    }
.end annotation


# static fields
.field public static RADIO_PROTOCOL:Ljava/lang/String; = "radio_protocol"


# instance fields
.field private adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

.field private binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onConfirmListener:Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmList(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonConfirmListener(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/DialogChooseListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    .line 62
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    invoke-virtual {v0}, Lcom/qianhe/yct/databinding/DialogChooseListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 70
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    iget-object v2, v2, Lcom/qianhe/yct/databinding/DialogChooseListBinding;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const-string v2, "requestKey"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 72
    const-string v2, "list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->mList:Ljava/util/ArrayList;

    .line 73
    const-string v2, "currentIndex"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 74
    const-string/jumbo v3, "showDel"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 78
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 81
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogChooseListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    :cond_2
    :goto_0
    new-instance v1, Lcom/qianhe/yct/adapter/ChooseListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/qianhe/yct/adapter/ChooseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object v1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    .line 84
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseListBinding;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->adapter:Lcom/qianhe/yct/adapter/ChooseListAdapter;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/adapter/ChooseListAdapter;->setOnActionListener(Lcom/qianhe/yct/adapter/ChooseListAdapter$OnActionListener;)V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogChooseListBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseListBinding;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 137
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 144
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

    .line 145
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/ChooseListDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/ChooseListDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public setOnConfirmListener(Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseListDialogFragment;->onConfirmListener:Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;

    return-void
.end method
