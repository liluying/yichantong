.class Lcom/qianhe/yct/activity/AboutAppActivity$1;
.super Ljava/lang/Object;
.source "AboutAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/AboutAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/AboutAppActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/AboutAppActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity$1;->this$0:Lcom/qianhe/yct/activity/AboutAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 38
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity$1;->this$0:Lcom/qianhe/yct/activity/AboutAppActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity$1;->this$0:Lcom/qianhe/yct/activity/AboutAppActivity;

    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {p1, v0, v1}, Lcom/qianhe/yct/activity/AboutAppActivity;->access$000(Lcom/qianhe/yct/activity/AboutAppActivity;Lcom/qianhe/baselib/enums/DeviceType;Z)V

    return-void

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/AboutAppActivity$1;->this$0:Lcom/qianhe/yct/activity/AboutAppActivity;

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method
