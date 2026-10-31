.class Lcom/qianhe/yct/activity/CorsRenewActivity$3;
.super Ljava/lang/Object;
.source "CorsRenewActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CorsRenewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CorsRenewActivity;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$3;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 129
    const-string v0, "payment_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    const-string p1, "confirm"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$3;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$3;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$3;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/qianhe/yct/activity/CorsRenewActivity$3;->this$0:Lcom/qianhe/yct/activity/CorsRenewActivity;

    const-class v1, Lcom/qianhe/yct/activity/OrderRecordListActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
