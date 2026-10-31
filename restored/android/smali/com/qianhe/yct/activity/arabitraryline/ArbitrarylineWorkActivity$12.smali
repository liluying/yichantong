.class Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$12;
.super Ljava/lang/Object;
.source "ArbitrarylineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 513
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;Z)V

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity$12;->this$0:Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/arabitraryline/ArbitrarylineWorkActivity;)V

    return-void
.end method
