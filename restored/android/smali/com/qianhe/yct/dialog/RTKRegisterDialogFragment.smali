.class public Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;
.super Lcom/qianhe/yct/base/BaseDialogFragment;
.source "RTKRegisterDialogFragment.java"


# instance fields
.field private binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

.field private deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field private mSp:Landroid/content/SharedPreferences;

.field private final scanLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$fG-w_ITSwZBW39Ms0NL-EEhzy3c(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;Lcom/journeyapps/barcodescanner/ScanIntentResult;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/ScanIntentResult;->getContents()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/ScanIntentResult;->getContents()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->formatWithDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 214
    iget-object p0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object p0, p0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvError:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscanLauncher(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->scanLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclose(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->close()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;-><init>()V

    .line 208
    new-instance v0, Lcom/journeyapps/barcodescanner/ScanContract;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/ScanContract;-><init>()V

    new-instance v1, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->scanLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method static synthetic access$000(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    return-object p0
.end method

.method private close()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public formatWithDash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 194
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 195
    :cond_0
    const-string v1, "-"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 198
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    .line 199
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_1

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/qianhe/yct/application/YCTApplication;->getInstance()Lcom/qianhe/yct/application/YCTApplication;

    move-result-object v0

    const-string/jumbo v1, "sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    .line 67
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    invoke-virtual {v1}, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/qianhe/yct/R$drawable;->bg_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    const-string v2, "requestKey"

    const-string v3, "rtkregister"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qianhe/yct/base/BaseDialogFragment;->requestKey:Ljava/lang/String;

    .line 76
    const-string v2, "deviceType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/enums/DeviceType;

    iput-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvRegister:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;-><init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvClose:Landroid/widget/TextView;

    new-instance v2, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$2;-><init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->fltSaoma:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$3;-><init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v3, "_"

    const-string v4, ""

    if-ne v1, v2, :cond_2

    .line 120
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v5, "base_deviceSn"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v5, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v2, "deviceSn"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v6}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->formatWithDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_3

    .line 127
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkDataLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3, v4, v1}, Lcom/qianhe/yct/utils/NetworkDataLoader;->getRegisterInfo(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    new-instance v3, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$4;-><init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p1, :cond_4

    .line 176
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    const-string v3, "code"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 268
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 269
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMessage(Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 222
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->result:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v2, Lcom/qianhe/yct/R$string;->registered_success:I

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget v2, Lcom/qianhe/yct/R$string;->registered_failed:I

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v1, v1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->tvError:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->formatWithDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 229
    iget-object v0, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "base_deviceSn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "deviceSn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_2
    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/qianhe/rtkclientlib/event/RTKRegisterResult;->code:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    const-string v2, "GET,EXPIREDATE"

    invoke-direct {v0, v1, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 183
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->binding:Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 242
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/qianhe/yct/base/BaseDialogFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    .line 250
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

    const v1, 0x3e99999a    # 0.3f

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/qianhe/yct/base/BaseDialogFragment;->setWindowsCallback(Landroid/view/Window;)V

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$5;-><init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    return-void
.end method
