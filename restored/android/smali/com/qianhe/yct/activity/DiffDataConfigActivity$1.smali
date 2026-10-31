.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$1;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/LoadingFragment$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$1;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "diffClientDisconnect"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$1;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetmSave(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$1;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fputmSave(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Z)V

    :cond_0
    return-void
.end method
