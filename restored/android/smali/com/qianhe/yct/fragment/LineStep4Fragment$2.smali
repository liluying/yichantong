.class Lcom/qianhe/yct/fragment/LineStep4Fragment$2;
.super Ljava/lang/Object;
.source "LineStep4Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep4Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep4Fragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->access$000(Lcom/qianhe/yct/fragment/LineStep4Fragment;)I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$2;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->access$100(Lcom/qianhe/yct/fragment/LineStep4Fragment;ID)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/LineEntity;->pileSpacing:D

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
