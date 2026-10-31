.class public abstract Lcom/qianhe/rtkclientlib/RtkConstant;
.super Ljava/lang/Object;
.source "RtkConstant.java"


# static fields
.field public static debug:Z = false

.field private static foregroundActivityProvider:Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static getForegroundActivityProvider()Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;
    .locals 1

    .line 27
    sget-object v0, Lcom/qianhe/rtkclientlib/RtkConstant;->foregroundActivityProvider:Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;

    return-object v0
.end method

.method public static setForegroundActivityProvider(Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/qianhe/rtkclientlib/RtkConstant;->foregroundActivityProvider:Lcom/qianhe/rtkclientlib/ForegroundActivityProvider;

    return-void
.end method
