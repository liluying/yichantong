.class Lcom/qianhe/yct/activity/line/LineWorkActivity$10;
.super Ljava/lang/Object;
.source "LineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/CheckBasestationDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineWorkActivity;->onEventMessage(Lcom/qianhe/baselib/bean/BaseStationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineWorkActivity;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qianhe/yct/activity/line/LineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/line/LineWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 6

    .line 399
    iget-object v0, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    sget v1, Lcom/qianhe/yct/R$string;->base_station_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    sget v3, Lcom/qianhe/yct/R$string;->connected:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    sget v4, Lcom/qianhe/yct/R$string;->not_connected:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qianhe/yct/activity/line/LineWorkActivity$10;->this$0:Lcom/qianhe/yct/activity/line/LineWorkActivity;

    sget v5, Lcom/qianhe/yct/R$string;->base_station_inspection_tips:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/qianhe/yct/activity/line/LineWorkActivity$10$1;

    invoke-direct {v5, p0}, Lcom/qianhe/yct/activity/line/LineWorkActivity$10$1;-><init>(Lcom/qianhe/yct/activity/line/LineWorkActivity$10;)V

    invoke-virtual/range {v0 .. v5}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void
.end method
