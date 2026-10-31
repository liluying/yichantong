.class Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$1;
.super Ljava/lang/Object;
.source "SiteLevelingStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-nez p2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->ivStatus:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$1;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    sget p2, Lcom/qianhe/yct/R$drawable;->icon_polyline_zheng:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/qianhe/yct/R$drawable;->icon_polyline_fu:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
