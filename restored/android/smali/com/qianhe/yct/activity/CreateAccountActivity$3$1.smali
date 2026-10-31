.class Lcom/qianhe/yct/activity/CreateAccountActivity$3$1;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/activity/CreateAccountActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qianhe/yct/activity/CreateAccountActivity$3;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/activity/CreateAccountActivity$3;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$3$1;->this$1:Lcom/qianhe/yct/activity/CreateAccountActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 215
    iget-object v0, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$3$1;->this$1:Lcom/qianhe/yct/activity/CreateAccountActivity$3;

    iget-wide v1, v0, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->count:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 216
    iget-object v0, v0, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$fgetbinding(Lcom/qianhe/yct/activity/CreateAccountActivity;)Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/ActivityCreateAccountBinding;->tvCaptcha:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qianhe/yct/activity/CreateAccountActivity$3$1;->this$1:Lcom/qianhe/yct/activity/CreateAccountActivity$3;

    iget-wide v2, v1, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->count:J

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

    .line 219
    :cond_0
    iget-object v0, v0, Lcom/qianhe/yct/activity/CreateAccountActivity$3;->this$0:Lcom/qianhe/yct/activity/CreateAccountActivity;

    invoke-static {v0}, Lcom/qianhe/yct/activity/CreateAccountActivity;->-$$Nest$mstopTimer(Lcom/qianhe/yct/activity/CreateAccountActivity;)V

    return-void
.end method
