.class Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;
.super Ljava/lang/Object;
.source "ExcavatorStep4Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->startLocalCalibration(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

.field final synthetic val$insSnapshot:Lcom/qianhe/baselib/bean/InsNavi;

.field final synthetic val$sensorSnapshot:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->val$insSnapshot:Lcom/qianhe/baselib/bean/InsNavi;

    iput-object p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->val$sensorSnapshot:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->val$insSnapshot:Lcom/qianhe/baselib/bean/InsNavi;

    iget-object v2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->val$sensorSnapshot:Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->calibrate(Lcom/qianhe/baselib/bean/ExcavatorEntity;Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/rtkclientlib/event/SensorInfoEvent;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep4Fragment$7;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
