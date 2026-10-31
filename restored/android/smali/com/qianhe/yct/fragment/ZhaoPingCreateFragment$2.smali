.class Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$2;
.super Ljava/lang/Object;
.source "ZhaoPingCreateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$2;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

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
