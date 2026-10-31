.class Lcom/qianhe/yct/activity/BluetoothActivity$8;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->notifyStartScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/BluetoothActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/BluetoothActivity;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$8;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$8;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    sget v1, Lcom/qianhe/yct/R$string;->permission_not_obtained:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
