.class public Lcom/qianhe/yct/fragment/BaseConfigFragment;
.super Lcom/qianhe/yct/base/BaseFragment;
.source "BaseConfigFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

.field private final mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/BaseConfigFragment;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseFragment;-><init>()V

    .line 23
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->mDeviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/qianhe/yct/base/BaseFragment;->showToastDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qianhe/yct/fragment/BaseConfigFragment;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/qianhe/yct/base/BaseFragment;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 35
    new-instance v0, Lcom/qianhe/yct/utils/KeyboardUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/fragment/BaseConfigFragment$1;-><init>(Lcom/qianhe/yct/fragment/BaseConfigFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/KeyboardUtil;-><init>(Landroid/app/Activity;Lcom/qianhe/yct/utils/KeyboardUtil$OnKeyboardVisibilityListener;)V

    .line 60
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHeightCutoffAngle:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/BaseConfigFragment$2;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BaseConfigFragment$2;-><init>(Lcom/qianhe/yct/fragment/BaseConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/BaseConfigFragment$3;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BaseConfigFragment$3;-><init>(Lcom/qianhe/yct/fragment/BaseConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHost:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BaseConfigFragment$4;-><init>(Lcom/qianhe/yct/fragment/BaseConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    new-instance v1, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/fragment/BaseConfigFragment$5;-><init>(Lcom/qianhe/yct/fragment/BaseConfigFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHeightCutoffAngle:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_height_cutoff_angle:F

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPDOP:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_pdop_limit:F

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtHost:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->edtPort:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, v1, Lcom/qianhe/yct/base/BaseActivity;->appConfig:Lcom/qianhe/yct/bean/AppConfig;

    iget-object v1, v1, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    iget v1, v1, Lcom/qianhe/yct/bean/AppConfig$Details;->base_port:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/base/BaseFragment;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    .line 28
    invoke-direct {p0}, Lcom/qianhe/yct/fragment/BaseConfigFragment;->initView()V

    .line 29
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/utils/ConfigLayoutHelper;->applyContentDirectionByLanguage(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/qianhe/yct/fragment/BaseConfigFragment;->binding:Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;

    invoke-virtual {p1}, Lcom/qianhe/yct/databinding/FragmentBaseConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
