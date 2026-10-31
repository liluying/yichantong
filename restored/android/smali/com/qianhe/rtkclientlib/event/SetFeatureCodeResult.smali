.class public Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;
.super Ljava/lang/Object;
.source "SetFeatureCodeResult.java"


# instance fields
.field public code:Ljava/lang/String;

.field public final deviceType:Lcom/qianhe/baselib/enums/DeviceType;

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qianhe/baselib/enums/DeviceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->deviceType:Lcom/qianhe/baselib/enums/DeviceType;

    .line 16
    iput-object p2, p0, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->code:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/qianhe/rtkclientlib/event/SetFeatureCodeResult;->result:Ljava/lang/String;

    return-void
.end method
