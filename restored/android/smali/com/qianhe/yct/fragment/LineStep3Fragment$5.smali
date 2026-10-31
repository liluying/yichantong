.class Lcom/qianhe/yct/fragment/LineStep3Fragment$5;
.super Ljava/lang/Object;
.source "LineStep3Fragment.java"

# interfaces
.implements Lcom/qianhe/yct/view/NumericEditText$OnFocusListener;


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

    .line 155
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 159
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$msyncDepthBFromUi(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    .line 160
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$monBChanged(Lcom/qianhe/yct/fragment/LineStep3Fragment;)V

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    .line 163
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep3Fragment$5;->this$0:Lcom/qianhe/yct/fragment/LineStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep3Binding;->edtValueB:Lcom/qianhe/yct/view/NumericEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
