.class Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$12;
.super Ljava/lang/Object;
.source "ZhaoPingWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;Z)V

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/zhaoping/ZhaoPingWorkActivity;)V

    return-void
.end method
