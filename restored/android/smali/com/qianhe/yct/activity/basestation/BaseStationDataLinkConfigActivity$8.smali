.class Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;
.super Ljava/lang/Object;
.source "BaseStationDataLinkConfigActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 307
    const-string v0, "datalink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 311
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->tvDataLink:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->device_internet:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltNetworkItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 316
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->radio_station:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetdeviceType(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    const-string v2, "GET,RADIO_CHANNEL"

    invoke-direct {p2, v0, v2}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 319
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity$8;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationDataLinkConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityBasestationDatalinkBinding;->lltRadioItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
