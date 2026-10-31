.class public Lcom/qianhe/ntripclientlib/bean/AuthResult;
.super Ljava/lang/Object;
.source "AuthResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHING:I = 0x2

.field public static final AUTH_FAIL:I = 0x0

.field public static final AUTH_SUCCESS:I = 0x1

.field public static final CONNECTED:I = 0x4

.field public static final CONNECTFAIL:I = 0x6

.field public static final CONNECTING:I = 0x3

.field public static final DATA_STREAMING:I = 0x7

.field public static final DISCONNECT:I = 0x5

.field public static final RSSACCREQFAILED:I = 0x8


# instance fields
.field public diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

.field public expireDateS:J

.field public isInit:Z

.field public reason:Ljava/lang/String;

.field public result:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    invoke-direct {v0}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;-><init>()V

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    .line 35
    iput p1, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;

    invoke-direct {v0}, Lcom/qianhe/ntripclientlib/client/config/SdkClientConfig;-><init>()V

    iput-object v0, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    .line 39
    iput p1, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->result:I

    .line 40
    iput-wide p2, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->expireDateS:J

    .line 41
    iput-object p4, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setConfig(Lcom/qianhe/baselib/base/BaseConfig;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->diffConfig:Lcom/qianhe/baselib/base/BaseConfig;

    return-void
.end method

.method public setIsInit(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/qianhe/ntripclientlib/bean/AuthResult;->isInit:Z

    return-void
.end method
