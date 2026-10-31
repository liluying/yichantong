.class public Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;
.super Ljava/lang/Object;
.source "CorsEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/baselib/bean/CorsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortEntity"
.end annotation


# instance fields
.field public coordinateSystem:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;->coordinateSystem:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/qianhe/baselib/bean/CorsEntity$PortEntity;->port:I

    return-void
.end method
