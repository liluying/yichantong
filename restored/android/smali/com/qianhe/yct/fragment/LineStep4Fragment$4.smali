.class Lcom/qianhe/yct/fragment/LineStep4Fragment$4;
.super Ljava/lang/Object;
.source "LineStep4Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/LineStep4Fragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/LineStep4Fragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 122
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {p1}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v2

    cmpl-double p1, v2, v0

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->please_enter_line_params:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->ivToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->access$200(Lcom/qianhe/yct/fragment/LineStep4Fragment;)I

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentLineStep4Binding;->edtSpacing:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    invoke-static {p1, v2, v3, v4}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->access$300(Lcom/qianhe/yct/fragment/LineStep4Fragment;ID)D

    move-result-wide v2

    const-wide v4, 0x40b3880000000000L    # 5000.0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/qianhe/yct/base/BaseActivity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    sget v1, Lcom/qianhe/yct/R$string;->interval_exceeds_limit:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$mcreateEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Ljava/util/Queue;

    move-result-object p1

    .line 128
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qianhe/baselib/bean/LineEntity;

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u63d2\u5165\u76f4\u7ebf\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/qianhe/baselib/base/BaseProEntity;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "loglog"

    nop

    nop

    nop

    .line 131
    iget-object v6, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v6}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v6

    iget-object v7, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/qianhe/yct/db/DatabaseManager;->insert(Lcom/qianhe/baselib/base/BaseProEntity;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    goto :goto_0

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/baselib/bean/LineEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, v2, Lcom/qianhe/baselib/base/BaseProEntity;->updateTime:J

    .line 137
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 139
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetmINS(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v3

    iget-object v6, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v6}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetinitEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_5

    iget-object v2, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v2}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/LineEntity;->spacing:D

    cmpl-double v4, v2, v0

    if-gtz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    .line 143
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 145
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/LineStep4Fragment;->-$$Nest$fgetlineEntity(Lcom/qianhe/yct/fragment/LineStep4Fragment;)Lcom/qianhe/baselib/bean/LineEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    const-string v2, "id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/fragment/LineStep4Fragment$4;->this$0:Lcom/qianhe/yct/fragment/LineStep4Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
