.class Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;
.super Ljava/lang/Object;
.source "ExcavatorStep2Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->generateToolParamLocally()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

.field final synthetic val$comboCreate:Z

.field final synthetic val$shovelName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->val$shovelName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->val$comboCreate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 643
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-wide v0, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->localId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 644
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->val$shovelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->name:Ljava/lang/String;

    .line 645
    iget-boolean v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->val$comboCreate:Z

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v1}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->getMode()I

    move-result v1

    iput v1, v0, Lcom/qianhe/baselib/bean/ShovelEntity;->mode:I

    .line 647
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    iget-object v1, v0, Lcom/qianhe/baselib/bean/ExcavatorEntity;->shovelEntity:Lcom/qianhe/baselib/bean/ShovelEntity;

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG1()D

    move-result-wide v2

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG2()D

    move-result-wide v4

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getG3()D

    move-result-wide v6

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getLy()D

    move-result-wide v8

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getRy()D

    move-result-wide v10

    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/baselib/bean/ExcavatorEntity;->getAB()D

    move-result-wide v12

    .line 647
    invoke-virtual/range {v1 .. v13}, Lcom/qianhe/baselib/bean/ShovelEntity;->setMeasureValues(DDDDDD)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;->-$$Nest$fgetexcavatorEntity(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;)Lcom/qianhe/baselib/bean/ExcavatorEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper;->makeToolParam(Lcom/qianhe/baselib/bean/ExcavatorEntity;)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;->this$0:Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;

    invoke-direct {v2, p0, v0}, Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10$1;-><init>(Lcom/qianhe/yct/fragment/ExcavatorStep2Fragment$10;Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
