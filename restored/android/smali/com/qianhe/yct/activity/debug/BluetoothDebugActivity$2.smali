.class Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$2;
.super Ljava/lang/Object;
.source "BluetoothDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$2;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity$2;->this$0:Lcom/qianhe/yct/activity/debug/BluetoothDebugActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
