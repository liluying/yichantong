.class Lcom/qianhe/yct/activity/RTKInfoActivity$4;
.super Ljava/lang/Object;
.source "RTKInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/RTKInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$4;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$4;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$mensureDeviceConnected(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$4;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->lltBoard:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 136
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$4;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/RTKInfoActivity;)Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/ActivityRtkinfoBinding;->lltFirmware:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 137
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$4;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$mcheckFmwUpgrade(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    return-void
.end method
