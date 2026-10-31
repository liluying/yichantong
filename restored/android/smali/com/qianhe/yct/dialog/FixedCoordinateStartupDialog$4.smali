.class Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;
.super Ljava/lang/Object;
.source "FixedCoordinateStartupDialog.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->onEventMessage(Lcom/qianhe/rtkclientlib/event/BaseTooFarEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 3

    .line 188
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fputresetBase(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;Z)V

    .line 189
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {p1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SET,BASE,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    move-result-object v1

    iget v1, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->cutoffAngle:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->PDOP:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lon:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    move-result-object v1

    iget-wide v1, v1, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->lat:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-static {v0}, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;->-$$Nest$fgetinitBaseInfo(Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;)Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;

    move-result-object v0

    iget-wide v0, v0, Lcom/qianhe/rtkclientlib/event/GetBaseStationResponse;->elev:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",ENCA,REPEAT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/baselib/bean/OrderBean;

    sget-object v2, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {v1, v2, p1}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog$4;->this$0:Lcom/qianhe/yct/dialog/FixedCoordinateStartupDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onConfirm()V
    .locals 0

    .line 0
    return-void
.end method
