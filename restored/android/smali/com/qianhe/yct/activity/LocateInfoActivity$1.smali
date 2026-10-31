.class Lcom/qianhe/yct/activity/LocateInfoActivity$1;
.super Ljava/lang/Object;
.source "LocateInfoActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/LocateInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/LocateInfoActivity;

.field final synthetic val$adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/LocateInfoActivity;Lcom/qianhe/yct/adapter/ViewPagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$1;->this$0:Lcom/qianhe/yct/activity/LocateInfoActivity;

    iput-object p2, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$1;->val$adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/qianhe/yct/activity/LocateInfoActivity$1;->val$adapter:Lcom/qianhe/yct/adapter/ViewPagerAdapter;

    invoke-virtual {v0, p2}, Lcom/qianhe/yct/adapter/ViewPagerAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method
