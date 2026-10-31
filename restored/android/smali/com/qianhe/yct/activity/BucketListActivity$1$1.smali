.class Lcom/qianhe/yct/activity/BucketListActivity$1$1;
.super Ljava/lang/Object;
.source "BucketListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BucketListActivity$1;->onClick(Lcom/qianhe/baselib/bean/ShovelEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/BucketListActivity$1;

.field final synthetic val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BucketListActivity$1;Lcom/qianhe/baselib/bean/ShovelEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/qianhe/yct/activity/BucketListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$1;

    iput-object p2, p0, Lcom/qianhe/yct/activity/BucketListActivity$1$1;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/qianhe/yct/activity/BucketListActivity$1$1;->this$1:Lcom/qianhe/yct/activity/BucketListActivity$1;

    iget-object v0, v0, Lcom/qianhe/yct/activity/BucketListActivity$1;->this$0:Lcom/qianhe/yct/activity/BucketListActivity;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BucketListActivity$1$1;->val$bucket:Lcom/qianhe/baselib/bean/ShovelEntity;

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BucketListActivity;->-$$Nest$mswicthBucket(Lcom/qianhe/yct/activity/BucketListActivity;Lcom/qianhe/baselib/bean/ShovelEntity;)V

    return-void
.end method
