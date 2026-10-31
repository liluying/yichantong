.class Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;
.super Ljava/lang/Object;
.source "RTKRegisterDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 81
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkRegisterBinding;->edtCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    sget v1, Lcom/qianhe/yct/R$string;->enter_register_code:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/dialog/RTKRegisterDialogFragment;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET,REGISTER,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
