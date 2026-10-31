.class Lcom/qianhe/yct/activity/dike/DikeWorkActivity$14;
.super Ljava/lang/Object;
.source "DikeWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Z)V

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/qianhe/yct/activity/dike/DikeWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/dike/DikeWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/dike/DikeWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/dike/DikeWorkActivity;)V

    return-void
.end method
