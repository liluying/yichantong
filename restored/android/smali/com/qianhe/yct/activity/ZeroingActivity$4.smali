.class Lcom/qianhe/yct/activity/ZeroingActivity$4;
.super Ljava/lang/Object;
.source "ZeroingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ZeroingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/ZeroingActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ZeroingActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$4;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 94
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$4;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetmDegrees(Lcom/qianhe/yct/activity/ZeroingActivity;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4046800000000000L    # 45.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$4;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    sget v0, Lcom/qianhe/yct/R$string;->device_angle_too_large_to_configure:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$4;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    sget v2, Lcom/qianhe/yct/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity;->showTipDialog(Ljava/lang/String;Ljava/lang/String;Lcom/qianhe/yct/dialog/TipsDialogFragment$OnConfirmListener;)V

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$4;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fputcancelZero(Lcom/qianhe/yct/activity/ZeroingActivity;Z)V

    .line 99
    iget-object p1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$4;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetrangeCurrentIndex(Lcom/qianhe/yct/activity/ZeroingActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$mgetLimitValue(Lcom/qianhe/yct/activity/ZeroingActivity;I)F

    move-result v4

    .line 100
    iget-object v1, p0, Lcom/qianhe/yct/activity/ZeroingActivity$4;->this$0:Lcom/qianhe/yct/activity/ZeroingActivity;

    invoke-static {v1}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$fgetmDegrees(Lcom/qianhe/yct/activity/ZeroingActivity;)D

    move-result-wide v2

    const-wide v5, 0x3fb999999999999aL    # 0.1

    invoke-static/range {v1 .. v6}, Lcom/qianhe/yct/activity/ZeroingActivity;->-$$Nest$mzeroing(Lcom/qianhe/yct/activity/ZeroingActivity;DFD)V

    return-void
.end method
