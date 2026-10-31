.class Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;
.super Ljava/lang/Object;
.source "ThreePointAreaStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 181
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 182
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 183
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentThreepointAreaStep3Binding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double p1, v1, v7

    if-nez p1, :cond_0

    cmpl-double p1, v3, v7

    if-nez p1, :cond_0

    cmpl-double p1, v5, v7

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_collect_pointC:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;DDD)Z

    move-result p1

    if-nez p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$mcheckPointsNotCoincide(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    .line 193
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 195
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    return-void

    .line 197
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/ThreePointAreaEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 199
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 200
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 202
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$fgetthreePointAreaEntity(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)Lcom/qianhe/baselib/bean/ThreePointAreaEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 204
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ThreePointAreaStep3Fragment;)V

    return-void
.end method
