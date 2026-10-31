.class Lcom/qianhe/yct/activity/CreateAccountActivity$3;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CreateAccountActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field final synthetic this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CreateAccountActivity;)V
    .locals 2

    .line 207
    iput-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3c

    .line 208
    iput-wide v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->count:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    new-instance v1, Lcom/qianhe/yct/activity/CreateAccountActivity$3$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/CreateAccountActivity$3$1;-><init>(Lcom/qianhe/yct/activity/CreateAccountActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
