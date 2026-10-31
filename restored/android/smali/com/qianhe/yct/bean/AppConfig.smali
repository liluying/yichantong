.class public Lcom/qianhe/yct/bean/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/bean/AppConfig$Details;
    }
.end annotation


# instance fields
.field public details:Lcom/qianhe/yct/bean/AppConfig$Details;

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/qianhe/yct/bean/AppConfig;->version:J

    .line 17
    new-instance v0, Lcom/qianhe/yct/bean/AppConfig$Details;

    invoke-direct {v0}, Lcom/qianhe/yct/bean/AppConfig$Details;-><init>()V

    iput-object v0, p0, Lcom/qianhe/yct/bean/AppConfig;->details:Lcom/qianhe/yct/bean/AppConfig$Details;

    return-void
.end method
