.class Lcom/qianhe/yct/fragment/DikeStep2Fragment$3;
.super Ljava/lang/Object;
.source "DikeStep2Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DikeStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetdikeEntity(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/baselib/bean/DikeEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/DikeStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/DikeStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/DikeStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DikeStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentDikeStep2Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/DikeEntity;->east2:D

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
