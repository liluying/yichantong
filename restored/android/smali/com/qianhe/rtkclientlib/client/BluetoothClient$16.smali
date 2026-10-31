.class Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/rtkclientlib/client/BluetoothClient;->sendData([BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

.field final synthetic val$addLinebreak:Z

.field final synthetic val$array:[B


# direct methods
.method constructor <init>(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2039
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    iput-boolean p2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->val$addLinebreak:Z

    iput-object p3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->val$array:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    .line 2043
    :try_start_0
    iget-boolean v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->val$addLinebreak:Z

    if-eqz v1, :cond_0

    .line 2045
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->val$array:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 2047
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2049
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->val$array:[B

    array-length v3, v1

    const/16 v4, 0xd

    aput-byte v4, v2, v3

    .line 2050
    array-length v1, v1

    add-int/2addr v1, v0

    const/16 v3, 0xa

    aput-byte v3, v2, v1

    .line 2051
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetoutputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 2053
    :cond_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetoutputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->val$array:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2055
    :goto_0
    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetoutputStream(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2057
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u53d1\u9001\u6570\u636e\u5931\u8d25("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v3}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetmDeviceType(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qianhe/baselib/enums/DeviceType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qianhe/baselib/utils/LogToFile;->e(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "closed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v1, v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fputsocketClosed(Lcom/qianhe/rtkclientlib/client/BluetoothClient;Z)V

    .line 2059
    :cond_1
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetbondingInProgress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-static {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->-$$Nest$fgetpendingConnectAddress(Lcom/qianhe/rtkclientlib/client/BluetoothClient;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2060
    iget-object v0, p0, Lcom/qianhe/rtkclientlib/client/BluetoothClient$16;->this$0:Lcom/qianhe/rtkclientlib/client/BluetoothClient;

    invoke-virtual {v0}, Lcom/qianhe/rtkclientlib/client/BluetoothClient;->disconnect()V

    :cond_2
    return-void
.end method
