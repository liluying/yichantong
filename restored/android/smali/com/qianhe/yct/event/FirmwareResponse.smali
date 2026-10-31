.class public Lcom/qianhe/yct/event/FirmwareResponse;
.super Ljava/lang/Object;
.source "FirmwareResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qianhe/yct/event/FirmwareResponse$Fmw;
    }
.end annotation


# instance fields
.field public deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public err_msg:Ljava/lang/String;

.field public fmw_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qianhe/yct/event/FirmwareResponse$Fmw;",
            ">;"
        }
    .end annotation
.end field

.field public isModuleUpgrade:Z

.field public pns:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
