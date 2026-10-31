.class Lcom/qianhe/yct/activity/line/LineCreateActivity$2;
.super Ljava/lang/Object;
.source "LineCreateActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/line/LineCreateActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/line/LineCreateActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/line/LineCreateActivity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/qianhe/yct/activity/line/LineCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 256
    const-string v0, "back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/qianhe/yct/activity/line/LineCreateActivity$2;->this$0:Lcom/qianhe/yct/activity/line/LineCreateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
