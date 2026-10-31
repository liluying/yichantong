.class Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;
.super Ljava/lang/Object;
.source "BaseStationConfigActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 280
    const-string v0, "baseresetdatalink"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    const-string p1, "list"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    const-string v0, "index"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 284
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    sget v2, Lcom/qianhe/yct/R$string;->reset_to_network_datalink:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$mresetToNetworkDataLink(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    return-void

    .line 286
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    sget v0, Lcom/qianhe/yct/R$string;->reset_to_radio_datalink:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$9;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$mresetToRadioDataLink(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)V

    :cond_1
    return-void
.end method
