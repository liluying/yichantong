.class Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;
.super Ljava/lang/Object;
.source "ChooseProjectDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 98
    iput-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fputmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;Ljava/lang/String;)V

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 115
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvZP:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 116
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v6}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvSP:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v6}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvWG:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v6}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 121
    :cond_2
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvDike:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v6}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/DialogChooseProjectBinding;->tvLine:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v6}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object p1

    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v5, v1}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    sget-object v2, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v2}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v2

    sget-object v3, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v3

    sget-object v4, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v4}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v4

    iget-object v6, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v6}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmContent(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/qianhe/yct/db/DatabaseManager;->queryEntityByEditStateAndName(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v4}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetadapter(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment$3;->this$0:Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;->-$$Nest$fgetmFilterList(Lcom/qianhe/yct/dialog/ChooseProjectDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/adapter/ChoiceProjectNameAdapter;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
