.class Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$7;
.super Ljava/lang/Object;
.source "MultiPointAreaWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Z)V

    .line 720
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity$7;->this$0:Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/multipointarea/MultiPointAreaWorkActivity;)V

    return-void
.end method
