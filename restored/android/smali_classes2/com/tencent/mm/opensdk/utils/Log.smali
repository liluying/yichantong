.class public Lcom/tencent/mm/opensdk/utils/Log;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static logImpl:Lcom/tencent/mm/opensdk/utils/ILog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/mm/opensdk/utils/Log;->logImpl:Lcom/tencent/mm/opensdk/utils/ILog;

    if-nez v0, :cond_0

    nop

    nop

    nop

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/opensdk/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/mm/opensdk/utils/Log;->logImpl:Lcom/tencent/mm/opensdk/utils/ILog;

    if-nez v0, :cond_0

    nop

    nop

    nop

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/opensdk/utils/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/mm/opensdk/utils/Log;->logImpl:Lcom/tencent/mm/opensdk/utils/ILog;

    if-nez v0, :cond_0

    nop

    nop

    nop

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/opensdk/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogImpl(Lcom/tencent/mm/opensdk/utils/ILog;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/tencent/mm/opensdk/utils/Log;->logImpl:Lcom/tencent/mm/opensdk/utils/ILog;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/mm/opensdk/utils/Log;->logImpl:Lcom/tencent/mm/opensdk/utils/ILog;

    if-nez v0, :cond_0

    nop

    nop

    nop

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/opensdk/utils/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/mm/opensdk/utils/Log;->logImpl:Lcom/tencent/mm/opensdk/utils/ILog;

    if-nez v0, :cond_0

    nop

    nop

    nop

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/opensdk/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
