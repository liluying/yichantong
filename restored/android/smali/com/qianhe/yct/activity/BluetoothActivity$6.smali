.class Lcom/qianhe/yct/activity/BluetoothActivity$6;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "BluetoothActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->initViewpager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    .line 237
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetmPosition(Lcom/qianhe/yct/activity/BluetoothActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 240
    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/qianhe/yct/event/BluetoothScanActionEvent;

    sget-object v2, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/qianhe/yct/event/BluetoothScanActionEvent;-><init>(Lcom/qianhe/yct/enums/BluetoothActionEnum;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v2}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvDisconnectNow:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/qianhe/rtkclientlib/MultiBluetoothManager;

    move-result-object v3

    sget-object v4, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v3, v4}, Lcom/qianhe/rtkclientlib/MultiBluetoothManager;->isDeviceConnected(Lcom/qianhe/baselib/enums/DeviceType;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBluetoothBinding;->tvScan:Landroid/widget/TextView;

    new-instance v1, Lcom/qianhe/yct/activity/BluetoothActivity$6$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/BluetoothActivity$6$1;-><init>(Lcom/qianhe/yct/activity/BluetoothActivity$6;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$6;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v0, p1}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fputmPosition(Lcom/qianhe/yct/activity/BluetoothActivity;I)V

    return-void
.end method
