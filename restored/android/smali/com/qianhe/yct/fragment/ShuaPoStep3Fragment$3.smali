.class Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;
.super Ljava/lang/Object;
.source "ShuaPoStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 136
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSpStep3Binding;->toothView:Lcom/qianhe/yct/view/ToothView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_select_shovel_tip:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$mclearCadPath(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)V

    .line 144
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment$3;->this$0:Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;->-$$Nest$fgetshuaPoEntity(Lcom/qianhe/yct/fragment/ShuaPoStep3Fragment;)Lcom/qianhe/baselib/bean/ShuaPoEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->shovelTipType:I

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;->goCollectCoordinates(I)V

    return-void
.end method
