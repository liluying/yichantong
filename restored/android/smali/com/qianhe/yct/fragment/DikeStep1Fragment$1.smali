.class Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;
.super Ljava/lang/Object;
.source "DikeStep1Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DikeStep1Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDikeStep1Binding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iget-object v4, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetactionType(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)I

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    if-nez v4, :cond_0

    neg-double v2, v2

    :cond_0
    iput-wide v2, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

    .line 104
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthB:D

    return-void

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep1Fragment$1;->this$0:Lcom/qianhe/yct/fragment/DikeStep1Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep1Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep1Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/DikeEntity;->depthA:D

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
