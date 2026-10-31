.class Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;
.super Ljava/lang/Object;
.source "CreateProjectNameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->setDefaultCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$fgetbaseProEntity(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$fgetbaseProEntity(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$3;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentCreateNameBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
