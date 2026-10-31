.class Lcom/qianhe/yct/activity/BucketListActivity$5;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity;->showSwitchConfigFailedDialog()V
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

    .line 445
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$5;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 453
    iget-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$5;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mrefreshCurrentBucketMarker(Lcom/qianhe/yct/activity/BucketListActivity;)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$5;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mrefreshCurrentBucketMarker(Lcom/qianhe/yct/activity/BucketListActivity;)V

    return-void
.end method
