.class public Lcom/qianhe/baselib/bean/OrderBean;
.super Ljava/lang/Object;
.source "OrderBean.java"


# instance fields
.field public array:[B

.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qianhe/baselib/bean/OrderBean;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 25
    iput-object p2, p0, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;[B)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/qianhe/baselib/bean/OrderBean;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 34
    iput-object p2, p0, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qianhe/baselib/bean/OrderBean;->str:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/qianhe/baselib/bean/OrderBean;->array:[B

    return-void
.end method
