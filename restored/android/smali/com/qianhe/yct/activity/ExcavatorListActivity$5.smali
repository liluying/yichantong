.class Lcom/qianhe/yct/activity/ExcavatorListActivity$5;
.super Ljava/lang/Object;
.source "ExcavatorListActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ExcavatorListActivity;->promptAddHostCalibParams(Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputpromptingHostCalibAdd(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetpendingHostCalibEvent(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetpendingHostCalibEvent(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;->calibParamsId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputdismissedHostCalibParamsId(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/lang/String;)V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputpendingHostCalibEvent(Lcom/qianhe/yct/activity/ExcavatorListActivity;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputpromptingHostCalibAdd(Lcom/qianhe/yct/activity/ExcavatorListActivity;Z)V

    .line 296
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fgetpendingHostCalibEvent(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputpendingHostCalibEvent(Lcom/qianhe/yct/activity/ExcavatorListActivity;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)V

    .line 298
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputdismissedHostCalibParamsId(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v1, v0}, Lcom/qianhe/yct/utils/CurrentExcavatorCalibHelper;->createLocalFromDeviceParam(Landroid/content/Context;Lcom/qianhe/rtkclientlib/event/GetCalibrateParamEvent;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->calibParamsId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$fputdeviceCalibParamsId(Lcom/qianhe/yct/activity/ExcavatorListActivity;Ljava/lang/String;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$mloadLocalListAsync(Lcom/qianhe/yct/activity/ExcavatorListActivity;)V

    .line 308
    iget-object v0, p0, Lcom/qianhe/yct/activity/ExcavatorListActivity$5;->this$0:Lcom/qianhe/yct/activity/ExcavatorListActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/ExcavatorListActivity;->-$$Nest$muploadUnsyncedIfIdle(Lcom/qianhe/yct/activity/ExcavatorListActivity;)Z

    return-void
.end method
