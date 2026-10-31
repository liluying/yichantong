.class Lcom/qianhe/yct/utils/DemoDataManager$1;
.super Ljava/lang/Object;
.source "DemoDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/utils/DemoDataManager;->startDemoExtcutor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:J

.field final synthetic this$0:Lcom/qianhe/yct/utils/DemoDataManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/qianhe/yct/utils/DemoDataManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iput p2, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 165
    iput-wide p1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->count:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 170
    iget-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->count:J

    const-wide/16 v2, 0x5

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 171
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateGGA(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 172
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateBestPost(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 173
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateBatt(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 174
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateSNR(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 175
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateRTKInfo(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 176
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateBaseStation(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 177
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateGST(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 178
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateGDOP(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 179
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    iget-wide v2, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->count:J

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateSAV(Lcom/qianhe/yct/utils/DemoDataManager;IJ)V

    .line 180
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    iget-wide v2, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->count:J

    invoke-static {v0, v1, v2, v3}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateSAU(Lcom/qianhe/yct/utils/DemoDataManager;IJ)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->this$0:Lcom/qianhe/yct/utils/DemoDataManager;

    iget v1, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->val$type:I

    invoke-static {v0, v1}, Lcom/qianhe/yct/utils/DemoDataManager;->-$$Nest$msimulateINS(Lcom/qianhe/yct/utils/DemoDataManager;I)V

    .line 184
    iget-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qianhe/yct/utils/DemoDataManager$1;->count:J

    return-void
.end method
