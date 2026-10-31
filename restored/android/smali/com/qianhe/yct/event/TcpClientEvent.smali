.class public Lcom/qianhe/yct/event/TcpClientEvent;
.super Ljava/lang/Object;
.source "TcpClientEvent.java"


# instance fields
.field public connected:Z

.field public ip:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/qianhe/yct/event/TcpClientEvent;->connected:Z

    .line 12
    iput-object p2, p0, Lcom/qianhe/yct/event/TcpClientEvent;->ip:Ljava/lang/String;

    return-void
.end method
