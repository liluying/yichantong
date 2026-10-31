.class Lcom/qianhe/yct/activity/UserLoginActivity$6$1;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/UserLoginActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/UserLoginActivity$6;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/UserLoginActivity$6;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$6$1;->this$1:Lcom/qianhe/yct/activity/UserLoginActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/qianhe/yct/activity/UserLoginActivity$6$1;->this$1:Lcom/qianhe/yct/activity/UserLoginActivity$6;

    iget-wide v1, v0, Lcom/qianhe/yct/activity/UserLoginActivity$6;->count:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 325
    iget-object v0, v0, Lcom/qianhe/yct/activity/UserLoginActivity$6;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/UserLoginActivity;)Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityUserLoginBinding;->tvCaptcha:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/UserLoginActivity$6$1;->this$1:Lcom/qianhe/yct/activity/UserLoginActivity$6;

    iget-wide v2, v1, Lcom/qianhe/yct/activity/UserLoginActivity$6;->count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/qianhe/yct/activity/UserLoginActivity$6;->count:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%ss"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 328
    :cond_0
    iget-object v0, v0, Lcom/qianhe/yct/activity/UserLoginActivity$6;->this$0:Lcom/qianhe/yct/activity/UserLoginActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/UserLoginActivity;->-$$Nest$mstopTimer(Lcom/qianhe/yct/activity/UserLoginActivity;)V

    return-void
.end method
