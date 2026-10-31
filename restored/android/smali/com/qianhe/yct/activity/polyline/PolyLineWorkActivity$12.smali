.class Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;
.super Ljava/lang/Object;
.source "PolyLineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

.field final synthetic val$event:Lcom/qianhe/baselib/bean/BaseStationEntity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Lcom/qianhe/baselib/bean/BaseStationEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->val$event:Lcom/qianhe/baselib/bean/BaseStationEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Z)V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 5

    .line 480
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->val$event:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lon:D

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->access$000(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLon:D

    .line 481
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->val$event:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->lat:D

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->access$100(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationLat:D

    .line 482
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->val$event:Lcom/qianhe/baselib/bean/BaseStationEntity;

    iget-wide v2, v2, Lcom/qianhe/baselib/bean/BaseStationEntity;->elev:D

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->access$200(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;DI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/qianhe/baselib/base/BaseProEntity;->baseStationElev:D

    .line 483
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetmDatabaseManager(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/yct/db/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qianhe/yct/db/DatabaseManager;->updateEntityById(Lcom/qianhe/baselib/base/BaseProEntity;)I

    .line 485
    invoke-static {}, Lcom/qianhe/yct/utils/NetworkUserLoader;->getInstance()Lcom/qianhe/yct/utils/NetworkUserLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetmINS(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/InsNavi;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fgetpolyLineEntity(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)Lcom/qianhe/baselib/bean/PolyLineEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qianhe/yct/utils/NetworkUserLoader;->modifyProject(Lcom/qianhe/baselib/bean/InsNavi;Lcom/qianhe/baselib/base/BaseProEntity;)V

    return-void
.end method
