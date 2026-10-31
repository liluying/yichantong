.class Lcom/qianhe/yct/fragment/BucketCreateFragment$4;
.super Ljava/lang/Object;
.source "BucketCreateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/BucketCreateFragment;->initNameView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/BucketCreateFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/BucketCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/BucketCreateFragment;->-$$Nest$fgetbucket(Lcom/qianhe/yct/fragment/BucketCreateFragment;)Lcom/qianhe/baselib/bean/ShovelEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

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
