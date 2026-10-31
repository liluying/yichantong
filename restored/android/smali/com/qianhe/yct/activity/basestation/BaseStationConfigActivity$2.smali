.class Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$2;
.super Ljava/lang/Object;
.source "BaseStationConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 84
    iput-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 87
    iget-object p1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity$2;->this$0:Lcom/qianhe/yct/activity/basestation/BaseStationConfigActivity;

    const-class v2, Lcom/qianhe/yct/activity/basestation/BaseStationWorkModeConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
