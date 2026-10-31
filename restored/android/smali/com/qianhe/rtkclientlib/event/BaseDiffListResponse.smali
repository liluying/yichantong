.class public Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;
.super Ljava/lang/Object;
.source "BaseDiffListResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dataformatList:Ljava/lang/String;

.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 24
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/BaseDiffListResponse;->dataformatList:Ljava/lang/String;

    return-void
.end method
