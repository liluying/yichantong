.class Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;
.super Ljava/lang/Object;
.source "ArbitrarylineCreateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 145
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v1

    .line 146
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    .line 147
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    .line 148
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    const/4 p1, 0x0

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    cmpl-double v0, v7, v9

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    cmpl-double v0, v7, v9

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static/range {v0 .. v6}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;DDD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentArbitrarylineCreateBinding;->edtRatio:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_2

    .line 153
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_enter_slope_ratio:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;Lcom/qianhe/baselib/bean/ArbitraryLineEntity;)V

    .line 156
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 157
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 158
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    return-void

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/ArbitraryLineEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 162
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 163
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 165
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$fgetmArbitraryLineEntity(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)Lcom/qianhe/baselib/bean/ArbitraryLineEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment$4;->this$0:Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ArbitrarylineCreateFragment;)V

    return-void
.end method
