.class public final Lcom/qh/xcad/XCadParseClient;
.super Ljava/lang/Object;
.source "XCadParseClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/xcad/XCadParseClient$Result;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT_MS:J = 0x3a98L

.field public static final STATUS_CANCEL:I = 0x66

.field public static final STATUS_PROC_DIED:I = 0x64

.field public static final STATUS_TIMEOUT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "XCadParseClient"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBlocking(Landroid/content/Context;Ljava/lang/String;)Lcom/qh/xcad/XCadParseClient$Result;
    .locals 12

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 61
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 62
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 66
    new-instance v5, Lcom/qh/xcad/XCadParseClient$1;

    invoke-direct {v5, v3, v0, v2}, Lcom/qh/xcad/XCadParseClient$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/lang/Object;)V

    .line 81
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/qh/xcad/XCadParseService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0, v6, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    const/16 v8, 0x64

    if-nez v6, :cond_1

    .line 86
    :try_start_1
    new-instance p1, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v0, "\u65e0\u6cd5\u542f\u52a8\u89e3\u6790\u8fdb\u7a0b"

    invoke-direct {p1, v7, v8, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_0

    .line 146
    :try_start_2
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_0
    return-object p1

    :catchall_1
    move-exception p1

    move v4, v6

    goto/16 :goto_6

    :catch_0
    move v4, v6

    goto/16 :goto_7

    .line 89
    :cond_1
    :try_start_3
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x3a98

    invoke-virtual {v0, v10, v11, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 91
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    new-instance p1, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v0, "\u89e3\u6790\u8fdb\u7a0b\u542f\u52a8\u8d85\u65f6"

    const/16 v2, 0x65

    invoke-direct {p1, v7, v2, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_2

    .line 146
    :try_start_4
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_2
    return-object p1

    :cond_3
    if-ne v0, v2, :cond_5

    .line 95
    :try_start_5
    new-instance p1, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v0, "\u89e3\u6790\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62(\u53ef\u80fd\u5185\u5b58\u4e0d\u8db3)"

    invoke-direct {p1, v7, v8, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_4

    .line 146
    :try_start_6
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_4
    return-object p1

    .line 98
    :cond_5
    :try_start_7
    check-cast v0, Lcom/qh/xcad/IXCadParseService;

    .line 99
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    new-instance p1, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v0, "\u89e3\u6790\u53d6\u6d88"

    const/16 v2, 0x66

    invoke-direct {p1, v7, v2, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_6

    .line 146
    :try_start_8
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    :cond_6
    return-object p1

    .line 108
    :cond_7
    :try_start_9
    invoke-interface {v0, p1}, Lcom/qh/xcad/IXCadParseService;->parse(Ljava/lang/String;)Lcom/qh/xcad/ParseReply;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez p1, :cond_9

    .line 116
    :try_start_a
    new-instance p1, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v0, "\u89e3\u6790\u65e0\u7ed3\u679c"

    invoke-direct {p1, v7, v1, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_8

    .line 146
    :try_start_b
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :cond_8
    return-object p1

    .line 118
    :cond_9
    :try_start_c
    iget v0, p1, Lcom/qh/xcad/ParseReply;->status:I

    if-nez v0, :cond_e

    iget-object v2, p1, Lcom/qh/xcad/ParseReply;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v2, :cond_a

    goto :goto_4

    .line 124
    :cond_a
    :try_start_d
    iget-wide v8, p1, Lcom/qh/xcad/ParseReply;->length:J

    long-to-int v0, v8

    invoke-static {v2, v0}, Lcom/qh/xcad/Shm;->readAll(Landroid/os/ParcelFileDescriptor;I)[B

    move-result-object v0

    .line 125
    new-instance v2, Lcom/qh/xcad/XCadParseClient$Result;

    invoke-direct {v2, v0, v4, v7}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 131
    :try_start_e
    iget-object p1, p1, Lcom/qh/xcad/ParseReply;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_0

    :catchall_6
    nop

    .line 142
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_b

    .line 146
    :try_start_f
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    :cond_b
    return-object v2

    :catchall_8
    move-exception v0

    .line 129
    :try_start_10
    new-instance v2, Lcom/qh/xcad/XCadParseClient$Result;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u8bfb\u53d6\u89e3\u6790\u7ed3\u679c\u5931\u8d25: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v7, v1, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 131
    :try_start_11
    iget-object p1, p1, Lcom/qh/xcad/ParseReply;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_1

    :catchall_9
    nop

    .line 142
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_c

    .line 146
    :try_start_12
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    :cond_c
    return-object v2

    :catchall_b
    move-exception v0

    goto :goto_3

    .line 127
    :catch_1
    :try_start_13
    new-instance v0, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v2, "\u7ed3\u679c\u8fc7\u5927\uff0c\u5185\u5b58\u4e0d\u8db3"

    const/4 v4, 0x2

    invoke-direct {v0, v7, v4, v2}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 131
    :try_start_14
    iget-object p1, p1, Lcom/qh/xcad/ParseReply;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto :goto_2

    :catchall_c
    nop

    .line 142
    :goto_2
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_d

    .line 146
    :try_start_15
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    :cond_d
    return-object v0

    .line 131
    :goto_3
    :try_start_16
    iget-object p1, p1, Lcom/qh/xcad/ParseReply;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 132
    :catchall_e
    :try_start_17
    throw v0

    .line 119
    :cond_e
    :goto_4
    new-instance v2, Lcom/qh/xcad/XCadParseClient$Result;

    .line 120
    iget-object p1, p1, Lcom/qh/xcad/ParseReply;->error:Ljava/lang/String;

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    const-string/jumbo p1, "\u89e3\u6790\u5931\u8d25"

    :goto_5
    invoke-direct {v2, v7, v0, p1}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_10

    .line 146
    :try_start_18
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :catchall_f
    :cond_10
    return-object v2

    :catch_2
    move-exception p1

    .line 112
    :try_start_19
    new-instance v0, Lcom/qh/xcad/XCadParseClient$Result;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u89e3\u6790\u8fdb\u7a0b\u901a\u4fe1\u5931\u8d25: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v7, v1, p1}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_11

    .line 146
    :try_start_1a
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :catchall_10
    :cond_11
    return-object v0

    .line 110
    :catch_3
    :try_start_1b
    new-instance p1, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v0, "\u89e3\u6790\u8fdb\u7a0b\u5d29\u6e83/\u88ab\u7cfb\u7edf\u56de\u6536(\u5185\u5b58\u4e0d\u8db3)\uff0c\u8bf7\u91cd\u8bd5"

    invoke-direct {p1, v7, v8, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v6, :cond_12

    .line 146
    :try_start_1c
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    :catchall_11
    :cond_12
    return-object p1

    :catchall_12
    move-exception p1

    .line 138
    :goto_6
    :try_start_1d
    const-string v0, "XCadParseClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseBlocking \u5f02\u5e38: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    .line 139
    new-instance v0, Lcom/qh/xcad/XCadParseClient$Result;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89e3\u6790\u5931\u8d25: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v7, v1, p1}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v4, :cond_13

    .line 146
    :try_start_1e
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    :catchall_13
    :cond_13
    return-object v0

    :catchall_14
    move-exception p1

    goto :goto_8

    .line 134
    :catch_4
    :goto_7
    :try_start_1f
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 136
    new-instance p1, Lcom/qh/xcad/XCadParseClient$Result;

    const-string/jumbo v0, "\u89e3\u6790\u88ab\u4e2d\u65ad"

    invoke-direct {p1, v7, v1, v0}, Lcom/qh/xcad/XCadParseClient$Result;-><init>([BILjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    .line 142
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v4, :cond_14

    .line 146
    :try_start_20
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_15

    :catchall_15
    :cond_14
    return-object p1

    .line 142
    :goto_8
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v4, :cond_15

    .line 146
    :try_start_21
    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    .line 148
    :catchall_16
    :cond_15
    throw p1
.end method
