.class Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4$1;
.super Ljava/lang/Object;
.source "ExcavatorStep3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/PasswordDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;

    iget-object v0, v0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4$1;->this$1:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;

    iget-object v1, v1, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment$4;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ExcavatorStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentExcavatorStep3Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->leftDist:D

    .line 152
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
