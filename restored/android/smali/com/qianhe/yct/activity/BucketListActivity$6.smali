.class Lcom/qianhe/yct/activity/BucketListActivity$6;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity;->onMessageEvent(Lcom/qianhe/rtkclientlib/event/SetCalibrateParamEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BucketListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BucketListActivity;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$6;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$6;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$6;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mshowSwitchConfigFailedDialog(Lcom/qianhe/yct/activity/BucketListActivity;)V

    :cond_0
    return-void
.end method
