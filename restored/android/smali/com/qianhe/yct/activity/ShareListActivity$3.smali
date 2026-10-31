.class Lcom/qianhe/yct/activity/ShareListActivity$3;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ShareListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ShareListActivity;->initShareList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ShareListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ShareListActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetdatabaseManager(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/db/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fputdatabaseManager(Lcom/qianhe/yct/activity/ShareListActivity;Lcom/qianhe/yct/db/DatabaseManager;)V

    .line 235
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    const-class v2, Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "shareEntityJson"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetlauncher(Lcom/qianhe/yct/activity/ShareListActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/bean/ShareEntity;)V
    .locals 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 252
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mopenShareWay(Lcom/qianhe/yct/activity/ShareListActivity;Lcom/qianhe/baselib/bean/ShareEntity;)V

    return-void

    .line 255
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->bottomBtn:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/ShareBottomView;->setSelectedIndex(I)V

    .line 256
    iget-object p2, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/databinding/ActivityShareListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityShareListBinding;->bottomBtn:Lcom/qianhe/yct/view/ShareBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/ShareBottomView;->showExecuteUi()V

    .line 257
    iget-object p2, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fgetshareListAdapter(Lcom/qianhe/yct/activity/ShareListActivity;)Lcom/qianhe/yct/adapter/ShareListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v3}, Lcom/qianhe/yct/adapter/ShareListAdapter;->showSelUi(Z)V

    .line 258
    iget-object p2, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p2, v0}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ShareListActivity;Z)V

    return-void
.end method

.method public onSelItem(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ShareListActivity;Ljava/util/List;)V

    .line 245
    iget-object p1, p0, Lcom/qianhe/yct/activity/ShareListActivity$3;->this$0:Lcom/qianhe/yct/activity/ShareListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ShareListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ShareListActivity;)V

    return-void
.end method
