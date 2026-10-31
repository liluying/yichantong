.class Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;
.super Ljava/lang/Object;
.source "SiteLevelingStep2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 71
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 74
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget p1, p1, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentSitelevelingStep2Binding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_slope_ratio:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;Lcom/qianhe/baselib/bean/SiteLevelingEntity;)V

    .line 78
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 80
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)V

    return-void

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/SiteLevelingEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 85
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 87
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$fgetsiteLevelingEntity(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)Lcom/qianhe/baselib/bean/SiteLevelingEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment$3;->this$0:Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/SiteLevelingStep2Fragment;)V

    return-void
.end method
