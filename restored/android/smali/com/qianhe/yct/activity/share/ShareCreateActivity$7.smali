.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;
.super Ljava/lang/Object;
.source "ShareCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/share/ShareCreateActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 478
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 479
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->tvExpireTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->name_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v3, Lcom/qianhe/yct/R$string;->use_default_values:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultname"

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;Ljava/lang/String;)V

    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->project_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_2

    .line 489
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->maximum_20_projects:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v3, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShareEntity;->expireTime:J

    iget-object v3, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v3, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$mdateStringToTimestamp(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetinitProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v3}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$misEqualIgnoreOrder(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->no_modify_content:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 498
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/baselib/bean/ShareEntity;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityShareCreateBinding;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetinitProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$mhaveSameElements(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 502
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->no_modify_content:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 500
    :cond_5
    :goto_0
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmShareEntity(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Lcom/qianhe/baselib/bean/ShareEntity;

    move-result-object v1

    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyShare(Lcom/qianhe/baselib/bean/ShareEntity;Ljava/lang/String;Ljava/util/List;J)V

    return-void

    .line 506
    :cond_6
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$7;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v3, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$mdateStringToTimestamp(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/qianhe/yct/utils/NetworkUserLoader;->createShare(Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method
