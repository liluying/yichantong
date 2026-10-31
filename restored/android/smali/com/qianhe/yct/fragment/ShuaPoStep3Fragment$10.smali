.class Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$10;
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

    .line 230
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 233
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 234
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mrecalcHeightFromFlatDistance(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    :cond_0
    return-void
.end method
