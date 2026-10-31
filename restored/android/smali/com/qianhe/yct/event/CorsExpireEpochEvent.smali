.class public Lcom/qianhe/yct/event/CorsExpireEpochEvent;
.super Ljava/lang/Object;
.source "CorsExpireEpochEvent.java"


# instance fields
.field public className:Ljava/lang/String;

.field public expireEpoch:J

.field public state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->className:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->state:I

    .line 20
    iput-wide p3, p0, Lcom/qianhe/yct/event/CorsExpireEpochEvent;->expireEpoch:J

    return-void
.end method
