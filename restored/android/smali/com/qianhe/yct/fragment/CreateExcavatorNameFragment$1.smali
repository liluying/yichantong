.class Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$1;
.super Ljava/lang/Object;
.source "CreateExcavatorNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->initView()V
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

    .line 62
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$1;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment$1;->this$0:Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/CreateExcavatorNameFragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->name:Ljava/lang/String;

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
