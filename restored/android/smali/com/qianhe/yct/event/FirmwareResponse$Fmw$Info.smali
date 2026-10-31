.class public Lcom/qianhe/yct/event/FirmwareResponse$Fmw$Info;
.super Ljava/lang/Object;
.source "FirmwareResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/event/FirmwareResponse$Fmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public build_time:Ljava/lang/String;

.field public file_md5:Ljava/lang/String;

.field public file_size:J

.field public forced:Z

.field public id:I

.field public model:Ljava/lang/String;

.field public pn_list_str:Ljava/lang/String;

.field public strategy_id:I

.field public update_log:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
