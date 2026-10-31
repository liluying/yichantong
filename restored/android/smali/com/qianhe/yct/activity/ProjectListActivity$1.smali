.class Lcom/qianhe/yct/activity/ProjectListActivity$1;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/view/ProjectBottomView$OnNavItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ProjectListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ProjectListActivity;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproListAdapter(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/adapter/ProjectListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->closeSelUi()V

    .line 133
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ProjectListActivity;Z)V

    return-void
.end method

.method public onExecuteClick(I)V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fputdatabaseManager(Lcom/qianhe/yct/activity/ProjectListActivity;Lcom/qianhe/yct/db/DatabaseManager;)V

    :cond_0
    if-nez p1, :cond_d

    .line 140
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 144
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/shuapo/ShuaPoCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/wagou/WaGouCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/dike/DikeCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 150
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 152
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/polyline/PolyLineCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 154
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/onepointarea/OnePointAreaCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 156
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/threepointarea/ThreePointAreaCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 158
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/siteleveling/SiteLevelingCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 160
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 161
    :cond_a
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 162
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/curvedslope/CurvedSlopeCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/ProjectEnum;->getType()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 164
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    const-class v1, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaCreateActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 166
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproType(Lcom/qianhe/yct/activity/ProjectListActivity;)I

    move-result v0

    const-string v1, "proType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 169
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 170
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 173
    :cond_e
    invoke-static {}, Lcom/qianhe/yct/db/UserSession;->get()Lcom/qianhe/yct/db/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qianhe/yct/db/UserSession;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->deletion_cannot_restored:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_f
    const-string p1, ""

    goto :goto_1

    .line 175
    :goto_2
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    sget p1, Lcom/qianhe/yct/R$string;->want_to_delete_project:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    sget v2, Lcom/qianhe/yct/R$string;->confirm:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;

    invoke-direct {v5, p0}, Lcom/qianhe/yct/activity/ProjectListActivity$1$1;-><init>(Lcom/qianhe/yct/activity/ProjectListActivity$1;)V

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    :cond_10
    const/4 v1, 0x2

    if-ne p1, v1, :cond_13

    .line 203
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 204
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->select_least_one:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_11
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v0, :cond_12

    .line 208
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    sget v0, Lcom/qianhe/yct/R$string;->only_one_can_selected_modify:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->showToastDialog(Ljava/lang/String;)V

    return-void

    .line 211
    :cond_12
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mopenModifyPage(Lcom/qianhe/yct/activity/ProjectListActivity;J)V

    return-void

    :cond_13
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 213
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mopenSharePage(Lcom/qianhe/yct/activity/ProjectListActivity;Ljava/util/ArrayList;)V

    :cond_14
    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproListAdapter(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/adapter/ProjectListAdapter;

    move-result-object v0

    sget-object v1, Lcom/qianhe/yct/enums/MenuActionEnum;->DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/qianhe/yct/enums/MenuActionEnum;->SHARE:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v2}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->showSelUi(Z)V

    .line 127
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$1;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v0, v3}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ProjectListActivity;Z)V

    return-void
.end method
