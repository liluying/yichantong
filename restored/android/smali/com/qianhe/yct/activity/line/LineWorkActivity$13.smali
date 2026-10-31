.class Lcom/qianhe/yct/activity/line/LineWorkActivity$13;
.super Ljava/lang/Object;
.source "LineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/line/LineWorkActivity;Z)V

    .line 513
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/line/LineWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$13;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V

    return-void
.end method
