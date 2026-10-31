.class Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$14;
.super Ljava/lang/Object;
.source "PolyLineWorkActivity.java"

# interfaces
.implements Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->showStartSetBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fputhasCheckBasestation(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Z)V

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$fputisCheckBase(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity$14;->this$0:Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;->-$$Nest$mshowFixedCoordinateStartupDialog(Lcom/qianhe/yct/activity/polyline/PolyLineWorkActivity;)V

    return-void
.end method
