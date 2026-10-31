.class Lcom/qianhe/yct/fragment/CreateProjectNameFragment$1;
.super Ljava/lang/Object;
.source "CreateProjectNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->initView()V
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

    .line 64
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$1;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreateProjectNameFragment$1;->this$0:Lcom/qianhe/yct/fragment/CreateProjectNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreateProjectNameFragment;->-$$Nest$fgetbaseProEntity(Lcom/qianhe/yct/fragment/CreateProjectNameFragment;)Lcom/qianhe/baselib/base/BaseProEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

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
