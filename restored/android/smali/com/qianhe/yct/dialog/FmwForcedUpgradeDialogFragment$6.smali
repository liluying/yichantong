.class Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;
.super Ljava/lang/Object;
.source "FmwForcedUpgradeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->writeFwm(Lcom/qianhe/baselib/enums/DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

.field final synthetic val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;Lcom/qianhe/baselib/enums/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    iput-object p2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 344
    const-string v0, ","

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v2}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetmFilePath(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :try_start_1
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetfileSize(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I

    move-result v1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x400

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetfileSize(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I

    move-result v1

    int-to-long v5, v1

    sub-long/2addr v3, v5

    long-to-int v1, v3

    new-array v1, v1, [B

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x400

    .line 353
    new-array v1, v1, [B

    .line 356
    :goto_0
    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v3}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v3

    .line 357
    iget-object v5, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v5}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 365
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/qianhe/baselib/bean/OrderBean;

    iget-object v6, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->val$deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPGRADE,WRITE,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v8}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetsession(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-static {v8}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->-$$Nest$fgetcurrentIndex(Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment$6;->this$0:Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;

    invoke-virtual {v3, v1}, Lcom/qianhe/yct/dialog/FmwForcedUpgradeDialogFragment;->sumBytesAsUint8([B)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/qianhe/baselib/bean/OrderBean;-><init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    .line 345
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 369
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeFwm\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    return-void
.end method
