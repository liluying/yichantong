.class public Lcom/qianhe/yct/event/FirmwareFileInfoResponse;
.super Ljava/lang/Object;
.source "FirmwareFileInfoResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public download_url:Ljava/lang/String;

.field public err_msg:Ljava/lang/String;

.field public file_md5:Ljava/lang/String;

.field public file_size:J

.field public state:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
