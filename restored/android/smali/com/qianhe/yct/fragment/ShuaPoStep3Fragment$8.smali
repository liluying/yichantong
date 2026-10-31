.class Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$8;
.super Ljava/lang/Object;
.source "ShuaPoStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->initView()V
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

    .line 214
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 217
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetupdatingSlopeParams(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$8;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$monRatioInputFinished(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    :cond_0
    return-void
.end method
