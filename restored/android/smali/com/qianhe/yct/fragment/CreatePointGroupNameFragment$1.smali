.class Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$1;
.super Ljava/lang/Object;
.source "CreatePointGroupNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$1;->this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$1;->this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->-$$Nest$fgetpointlibEntity(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment$1;->this$0:Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;->-$$Nest$fgetpointlibEntity(Lcom/qianhe/yct/fragment/CreatePointGroupNameFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

    :cond_0
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
