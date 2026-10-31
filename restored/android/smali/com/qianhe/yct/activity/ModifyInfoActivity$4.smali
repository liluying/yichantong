.class Lcom/qianhe/yct/activity/ModifyInfoActivity$4;
.super Ljava/lang/Object;
.source "ModifyInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/ModifyInfoActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field final synthetic this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/ModifyInfoActivity;)V
    .locals 2

    .line 233
    iput-object p1, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$4;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3c

    .line 234
    iput-wide v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$4;->count:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/qianhe/yct/activity/ModifyInfoActivity$4;->this$0:Lcom/qianhe/yct/activity/ModifyInfoActivity;

    new-instance v1, Lcom/qianhe/yct/activity/ModifyInfoActivity$4$1;

    invoke-direct {v1, p0}, Lcom/qianhe/yct/activity/ModifyInfoActivity$4$1;-><init>(Lcom/qianhe/yct/activity/ModifyInfoActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
