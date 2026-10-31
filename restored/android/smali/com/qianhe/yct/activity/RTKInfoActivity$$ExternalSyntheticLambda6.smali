.class public final synthetic Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/activity/RTKInfoActivity;ILcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;->f$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    iput p2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;->f$2:Lcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;->f$0:Lcom/qianhe/yct/activity/RTKInfoActivity;

    iget v1, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lcom/qianhe/yct/activity/RTKInfoActivity$$ExternalSyntheticLambda6;->f$2:Lcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;

    invoke-static {v0, v1, v2}, Lcom/qianhe/yct/activity/RTKInfoActivity;->$r8$lambda$rivTMB1nHLWbBe6JPb0l3R7zRJQ(Lcom/qianhe/yct/activity/RTKInfoActivity;ILcom/qianhe/yct/activity/RTKInfoActivity$LogUploadTask;)V

    return-void
.end method
