.class Lcom/qianhe/yct/fragment/PointCreateFragment$3;
.super Ljava/lang/Object;
.source "PointCreateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/PointCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/PointCreateFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$3;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/fragment/PointCreateFragment$3;->this$0:Lcom/qianhe/yct/fragment/PointCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/PointCreateFragment;->-$$Nest$fgetpointlibEntity(Lcom/qianhe/yct/fragment/PointCreateFragment;)Lcom/qianhe/baselib/bean/PointlibEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/PointlibEntity;->name:Ljava/lang/String;

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
