.class Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;
.super Ljava/lang/Object;
.source "CreateExcavatorNameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->setDefaultCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
