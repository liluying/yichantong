.class Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;
.super Ljava/lang/Object;
.source "ShareCreateActivity.java"

# interfaces
.implements Lcom/qianhe/yct/adapter/ShareProjectAdapter$OnActionListener;


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

    .line 411
    iput-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$mopenSharedOrLocalProject(Lcom/qianhe/yct/activity/share/ShareCreateActivity;Lcom/qianhe/baselib/base/BaseProEntity;)V

    return-void
.end method

.method public onDel(Lcom/qianhe/baselib/base/BaseProEntity;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 420
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 421
    iget-object v0, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetmData(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qianhe/baselib/base/BaseProEntity;

    .line 425
    iget-wide v2, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-wide v4, p1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 426
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$fgetselectedProjectIds(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-wide v0, v1, Lcom/qianhe/baselib/base/BaseProEntity;->projectId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/share/ShareCreateActivity;->-$$Nest$mrefreshSelectProject(Lcom/qianhe/yct/activity/share/ShareCreateActivity;)V

    return-void

    .line 433
    :cond_3
    iget-object p1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v0, Lcom/qianhe/yct/R$string;->project_empty:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/share/ShareCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/share/ShareCreateActivity;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    :cond_4
    return-void
.end method
