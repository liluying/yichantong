.class Lcom/qianhe/yct/activity/RTKInfoActivity$13;
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

    .line 269
    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$13;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 272
    iget-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$13;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-static {p1}, Lcom/qianhe/yct/activity/RTKInfoActivity;->-$$Nest$mensureDeviceConnected(Lcom/qianhe/yct/activity/RTKInfoActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 274
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$13;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v1, Lcom/qianhe/yct/R$string;->confirm_sensor_status:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$13;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    sget v1, Lcom/qianhe/yct/R$string;->disconnect1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextStr"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "requestKey"

    const-string v1, "clickaction"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$13;->this$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qianhe/yct/dialog/ChooseSensorDialogFragment;->showSafely(Landroidx/fragment/app/FragmentManager;Landroid/os/Bundle;)V

    return-void
.end method
