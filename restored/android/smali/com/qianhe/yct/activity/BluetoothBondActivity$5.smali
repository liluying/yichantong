.class Lcom/qianhe/yct/activity/BluetoothBondActivity$5;
.super Ljava/lang/Object;
.source "BluetoothBondActivity.java"

# interfaces
.implements Lcom/qianhe/yct/utils/BluetoothBondHelper$BondCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothBondActivity;->startBondAttempt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

.field final synthetic val$mgr:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothBondActivity;Lcom/qianhe/rtkclientlib/MultiBluetoothManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->val$mgr:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBondStarted(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fputcreateBondIssued(Lcom/qianhe/yct/activity/BluetoothBondActivity;Z)V

    .line 310
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mallowTouchesThroughToPairingDialog(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$misDeviceBondedNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mstartBondedPoll(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    .line 316
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mscheduleFinishIfNotificationPairing(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->val$mgr:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    iget-object v1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetbondEpoch(Lcom/qianhe/yct/activity/BluetoothBondActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->wasBondCancelledSince(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const-string p1, "BluetoothBondActivity: createBond \u56de\u8c03\u65f6\u5df2\u53d6\u6d88"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->val$mgr:Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    invoke-virtual {p1}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->cancelBondingIfNeeded()V

    .line 321
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 324
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$fgetbondFinished(Lcom/qianhe/yct/activity/BluetoothBondActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 325
    const-string p1, "BluetoothBondActivity: createBond \u5931\u8d25"

    invoke-static {p1}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/qianhe/yct/activity/BluetoothBondActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothBondActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/BluetoothBondActivity;->-$$Nest$mfinishNow(Lcom/qianhe/yct/activity/BluetoothBondActivity;)V

    :cond_3
    return-void
.end method
