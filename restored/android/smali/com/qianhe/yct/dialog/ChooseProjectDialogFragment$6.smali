.class Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;
.super Ljava/lang/Object;
.source "ChooseProjectDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 201
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fputmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;Lcom/qianhe/yct/db/DatabaseManager;)V

    .line 202
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 203
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvZP:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 205
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvSP:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 206
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvDike:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 207
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvLine:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 213
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v5}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v4

    sget-object v5, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v5}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v5

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v6}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 217
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 218
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetadapter(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->refreshData(Ljava/util/List;)V

    return-void
.end method
