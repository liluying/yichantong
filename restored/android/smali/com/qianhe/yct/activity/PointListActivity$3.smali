.class Lcom/qianhe/yct/activity/PointListActivity$3;
.super Ljava/lang/Object;
.source "PointListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/PointListAdapter$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/PointListActivity;->initProjectList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/PointListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/PointListActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetmReturnValue(Lcom/qianhe/yct/activity/PointListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mreturnSelectedPoint(Lcom/qianhe/yct/activity/PointListActivity;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mopenPointDetail(Lcom/qianhe/yct/activity/PointListActivity;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void
.end method

.method public onMenuAction(ILcom/qianhe/baselib/bean/PointlibEntity;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {p1, p2}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mopenPointDetail(Lcom/qianhe/yct/activity/PointListActivity;Lcom/qianhe/baselib/bean/PointlibEntity;)V

    return-void

    .line 239
    :cond_0
    iget-object p2, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/view/PointBottomView;->setSelectedIndex(I)V

    .line 240
    iget-object p2, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/databinding/ActivityPointListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/ActivityPointListBinding;->bottomBtn:Lcom/qianhe/yct/view/PointBottomView;

    invoke-virtual {p2}, Lcom/qianhe/yct/view/PointBottomView;->showExecuteUi()V

    .line 241
    iget-object p2, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {p2}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetpointAdapter(Lcom/qianhe/yct/activity/PointListActivity;)Lcom/qianhe/yct/adapter/PointListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/qianhe/yct/adapter/PointListAdapter;->showSelUi(Z)V

    .line 242
    iget-object p2, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p2, v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mshowSelectAll(Lcom/qianhe/yct/activity/PointListActivity;Z)V

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

    .line 228
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iget-object v0, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$fgetidStrList(Lcom/qianhe/yct/activity/PointListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object p1, p0, Lcom/qianhe/yct/activity/PointListActivity$3;->this$0:Lcom/qianhe/yct/activity/PointListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/PointListActivity;->-$$Nest$mupdateSelectAllState(Lcom/qianhe/yct/activity/PointListActivity;)V

    return-void
.end method
