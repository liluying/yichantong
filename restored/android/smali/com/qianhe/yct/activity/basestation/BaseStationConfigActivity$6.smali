.class Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;
.super Ljava/lang/Object;
.source "BaseStationConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 109
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$6;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;)Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityBasestationConfigBinding;->ivVPN:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
