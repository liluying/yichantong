.class Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;
.super Ljava/lang/Object;
.source "PointGroupListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/PointGroupListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 4

    .line 281
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    const-class v2, Lcom/qianhe/yct/activity/PointListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    iget-wide v1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->groupLocalId:J

    const-string v3, "groupLocalId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 283
    const-string v1, "groupName"

    iget-object p1, p1, Lcom/qianhe/baselib/bean/PointGroupEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetmReturnValue(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mputPickExtras(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Landroid/content/Intent;)V

    .line 286
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetpointListLauncher(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/bean/PointGroupEntity;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 302
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mopenModifyPage(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 306
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mexportPointGroup(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Lcom/qianhe/baselib/bean/PointGroupEntity;)V

    return-void

    .line 309
    :cond_1
    iget-object p2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/PointBottomView;->setSelectedIndex(I)V

    .line 310
    iget-object p2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityPointGroupListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/PointBottomView;->showExecuteUi()V

    .line 311
    iget-object p2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Lcom/qianhe/yct/adapter/PointGroupListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/qianhe/yct/adapter/PointGroupListAdapter;->showSelUi(Z)V

    .line 312
    iget-object p2, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {p2, v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;Z)V

    return-void
.end method

.method public onSelItem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object p1, p0, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity$4;->this$0:Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/pointlib/PointGroupListActivity;)V

    return-void
.end method
