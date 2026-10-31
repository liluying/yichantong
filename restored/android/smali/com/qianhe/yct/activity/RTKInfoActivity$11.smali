.class Lcom/qianhe/yct/activity/RTKInfoActivity$11;
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

    .line 243
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$11;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 246
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$11;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    const-string v0, "basic"

    invoke-virtual {p1, v0}, Lcom/qianhe/yct/base/BaseActivity;->hasPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$11;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$muploadTodayLog(Lcom/qianhe/yct/activity/RTKInfoActivity;)V

    return-void

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$11;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qianhe/yct/base/BaseActivity;->checkPermissions(Ljava/lang/String;Z)V

    return-void
.end method
