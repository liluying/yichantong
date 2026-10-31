.class Lcom/qianhe/yct/fragment/LineStep3Fragment$2;
.super Ljava/lang/Object;
.source "LineStep3Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 120
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetisUpdatingFields(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    .line 123
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object p1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetactionTypeB(Lcom/qianhe/yct/fragment/LineStep3Fragment;)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    if-nez v2, :cond_1

    neg-double v0, v0

    :cond_1
    iput-wide v0, p1, Lcom/qianhe/baselib/bean/LineEntity;->depthB:D

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
