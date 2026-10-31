.class Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$14;
.super Ljava/lang/Object;
.source "WaGouWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 587
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Z)V

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/wagou/WaGouWorkActivity;)V

    return-void
.end method
