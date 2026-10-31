.class Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;
.super Ljava/lang/Object;
.source "WaGouStep2Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetisUpdatingFields(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentWgStep2Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    .line 109
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetactionType(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)I

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    if-nez v4, :cond_1

    neg-double v2, v2

    :cond_1
    iput-wide v2, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

    .line 110
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v2, Lcom/qianhe/baselib/enums/WaGouEnum;->FLAT:Lcom/qianhe/baselib/enums/WaGouEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/WaGouEnum;->getType()I

    move-result v2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthA:D

    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/WaGouStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/WaGouStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/WaGouStep2Fragment;->-$$Nest$fgetwaGouEntity(Lcom/qianhe/yct/fragment/WaGouStep2Fragment;)Lcom/qianhe/baselib/bean/WaGouEntity;

    move-result-object p1

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/WaGouEntity;->depthB:D

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
