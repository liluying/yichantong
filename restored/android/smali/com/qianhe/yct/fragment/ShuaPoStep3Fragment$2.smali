.class Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$2;
.super Ljava/lang/Object;
.source "ShuaPoStep3Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetupdatingSlopeParams(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$msyncPointCEntityFromView(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    .line 131
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$2;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mscheduleSlopeUpdateFromABC(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

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
