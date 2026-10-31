.class Lcom/qianhe/yct/activity/RTKInfoActivity$19;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/UpgradeFmwDialogFragment$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->onEventMessage(Lcom/qianhe/yct/event/FirmwareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$19;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onClose(I)V
    .locals 0

    .line 634
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$19;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$minitTimer(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    return-void
.end method
