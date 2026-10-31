.class Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;
.super Ljava/lang/Object;
.source "ZhaoPingCreateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 189
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

    .line 190
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->north:D

    .line 191
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetElevation:D

    .line 192
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 193
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_collect_coordinates:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v4}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    iget-wide v5, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->east:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    iget-wide v7, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->north:D

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    iget-wide v9, v0, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->targetElevation:D

    invoke-static/range {v4 .. v10}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$msaveInputCoordsToGeodetic(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;DDD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->please_confirm_matches_engineering:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    iget v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->subType:I

    sget-object v1, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->LEVEING:Lcom/qianhe/baselib/enums/ZhaoPingEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ZhaoPingEnum;->getType()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentZpCreateBinding;->edtValue:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    .line 197
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    sget v2, Lcom/qianhe/yct/R$string;->enter_dig_value:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;Lcom/qianhe/baselib/bean/ZhaoPingEntity;)V

    .line 200
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    iget-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    .line 202
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    return-void

    .line 204
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/baselib/bean/ZhaoPingEntity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 209
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$fgetzhaoPingEntity(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)Lcom/qianhe/baselib/bean/ZhaoPingEntity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 211
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment$6;->this$0:Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;->-$$Nest$mnext(Lcom/qianhe/yct/fragment/ZhaoPingCreateFragment;)V

    return-void
.end method
