.class Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$1;
.super Ljava/lang/Object;
.source "RTKFeatureCodeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 59
    iget-object p1, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogRtkFeatureCodeBinding;->edtCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment$1;->this$0:Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/dialog/RTKFeatureCodeDialogFragment;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET,FEATURE_CODE,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
