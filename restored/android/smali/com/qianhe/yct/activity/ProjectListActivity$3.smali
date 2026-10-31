.class Lcom/qianhe/yct/activity/ProjectListActivity$3;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ProjectListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ProjectListActivity;->initProjectList(Landroid/os/Bundle;)V
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

    .line 321
    iput-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinueWork(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mcontinueWork(Lcom/qianhe/yct/activity/ProjectListActivity;Lcom/qianhe/baselib/base/BaseProEntity;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 4

    .line 337
    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 339
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    iget-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mopenModifyPage(Lcom/qianhe/yct/activity/ProjectListActivity;J)V

    return-void

    .line 343
    :cond_0
    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->SHARE:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 345
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-wide v0, p2, Lcom/qianhe/baselib/base/BaseProEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object p2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p2, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mopenSharePage(Lcom/qianhe/yct/activity/ProjectListActivity;Ljava/util/ArrayList;)V

    :cond_1
    return-void

    .line 351
    :cond_2
    iget-object p2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/ProjectBottomView;->setSelectedIndex(I)V

    .line 352
    iget-object p2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/databinding/ActivityProjectListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityProjectListBinding;->bottomBtn:Lcom/qianhe/yct/view/ProjectBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/ProjectBottomView;->showExecuteUi()V

    .line 353
    iget-object p2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fgetproListAdapter(Lcom/qianhe/yct/activity/ProjectListActivity;)Lcom/qianhe/yct/adapter/ProjectListAdapter;

    move-result-object p2

    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/qianhe/yct/adapter/ProjectListAdapter;->showSelUi(Z)V

    .line 354
    iget-object p2, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-virtual {v0}, Lcom/qianhe/yct/enums/MenuActionEnum;->getType()I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {p2, v2}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/ProjectListActivity;Z)V

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

    .line 330
    iget-object v0, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$fputidStrList(Lcom/qianhe/yct/activity/ProjectListActivity;Ljava/util/ArrayList;)V

    .line 331
    iget-object p1, p0, Lcom/qianhe/yct/activity/ProjectListActivity$3;->this$0:Lcom/qianhe/yct/activity/ProjectListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ProjectListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/ProjectListActivity;)V

    return-void
.end method
