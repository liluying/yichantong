.class Lcom/qianhe/yct/activity/BluetoothActivity$5;
.super Ljava/lang/Object;
.source "BluetoothActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/BluetoothActivity;->initViewpager()V
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

    .line 226
    iput-object p1, p0, Lcom/qianhe/yct/activity/BluetoothActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/qianhe/yct/activity/BluetoothActivity$5;->this$0:Lcom/qianhe/yct/activity/BluetoothActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/BluetoothActivity;->-$$Nest$fgetadapter(Lcom/qianhe/yct/activity/BluetoothActivity;)Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method
