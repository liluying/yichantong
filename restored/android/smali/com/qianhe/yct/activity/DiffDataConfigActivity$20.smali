.class Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;
.super Ljava/lang/Object;
.source "DiffDataConfigActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/ChooseListDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/DiffDataConfigActivity;->onEventMessage(Lcom/qianhe/ntripclientlib/event/MountPointsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

.field final synthetic val$event:Lcom/qianhe/ntripclientlib/event/MountPointsEvent;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/DiffDataConfigActivity;Lcom/qianhe/ntripclientlib/event/MountPointsEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 882
    iput-object p1, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;->val$event:Lcom/qianhe/ntripclientlib/event/MountPointsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(I)V
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;->val$event:Lcom/qianhe/ntripclientlib/event/MountPointsEvent;

    iget-object v0, v0, Lcom/qianhe/ntripclientlib/event/MountPointsEvent;->mountPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;->val$event:Lcom/qianhe/ntripclientlib/event/MountPointsEvent;

    iget-object v0, v0, Lcom/qianhe/ntripclientlib/event/MountPointsEvent;->mountPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityDiffDataConfigBinding;->edtMountpoint:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/qianhe/yct/activity/DiffDataConfigActivity$20;->this$0:Lcom/qianhe/yct/activity/DiffDataConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/DiffDataConfigActivity;->-$$Nest$fgetntripClientConfig(Lcom/qianhe/yct/activity/DiffDataConfigActivity;)Lcom/qianhe/ntripclientlib/client/config/NtripClientConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qianhe/baselib/base/BaseConfig;->setMountPoint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
