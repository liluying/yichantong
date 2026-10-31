.class Lcom/qianhe/yct/activity/UserLoginActivity$6;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserLoginActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field final synthetic this$0:Lcom/qianhe/yct/activity/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserLoginActivity;)V
    .locals 2

    .line 316
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$6;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3c

    .line 317
    iput-wide v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$6;->count:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$6;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    new-instance v1, Lcom/qianhe/yct/activity/UserLoginActivity$6$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/UserLoginActivity$6$1;-><init>(Lcom/qianhe/yct/activity/UserLoginActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
