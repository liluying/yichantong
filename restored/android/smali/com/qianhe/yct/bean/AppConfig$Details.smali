.class public Lcom/qianhe/yct/bean/AppConfig$Details;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/bean/AppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# instance fields
.field public base_height_cutoff_angle:F

.field public base_host:Ljava/lang/String;

.field public base_host_xfix:Ljava/lang/String;

.field public base_mobility_threshold:F

.field public base_pdop_limit:F

.field public base_port:I

.field public bestpos_interval:F

.field public data_smoot:I

.field public display_distance_starting_point:I

.field public display_verify_horizontal_error:I

.field public dop_interval:F

.field public extsensor_1:F

.field public gga_interval:F

.field public gst_interval:F

.field public hrms_limit:F

.field public ins_interval:F

.field public ins_unavailable_count:I

.field public ntrip_host:Ljava/lang/String;

.field public ntrip_mount_point:Ljava/lang/String;

.field public ntrip_password:Ljava/lang/String;

.field public ntrip_port:I

.field public ntrip_type:I

.field public ntrip_username:Ljava/lang/String;

.field public pole_height:F

.field public refstation_interval:F

.field public sau_interval:F

.field public sav_interval:F

.field public snr_interval:F

.field public tilt_display:I

.field public unit_preference:I

.field public vrms_limit:F

.field public work_tolerance:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_type:I

    .line 22
    const-string v0, "rss.rtkiot.cn"

    iput-object v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_host:Ljava/lang/String;

    const/16 v0, 0x1f41

    .line 23
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_port:I

    .line 24
    const-string v0, "AUTO"

    iput-object v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->ntrip_mount_point:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->gst_interval:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 29
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->dop_interval:F

    .line 30
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->snr_interval:F

    .line 31
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->sav_interval:F

    .line 32
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->sau_interval:F

    .line 34
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->refstation_interval:F

    const v1, 0x3e4ccccd    # 0.2f

    .line 36
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_interval:F

    .line 37
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->extsensor_1:F

    const/16 v1, 0xa

    .line 38
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->ins_unavailable_count:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->gga_interval:F

    .line 40
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->bestpos_interval:F

    const v1, 0x3cf5c28f    # 0.03f

    .line 42
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->work_tolerance:F

    const v1, 0x3d4ccccd    # 0.05f

    .line 43
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->hrms_limit:F

    const v1, 0x3dcccccd    # 0.1f

    .line 44
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->vrms_limit:F

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->data_smoot:I

    .line 46
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->display_distance_starting_point:I

    .line 47
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->display_verify_horizontal_error:I

    const v2, 0x3ca3d70a    # 0.02f

    .line 48
    iput v2, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_mobility_threshold:F

    .line 49
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->unit_preference:I

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->pole_height:F

    const/4 v1, 0x1

    .line 51
    iput v1, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->tilt_display:I

    .line 54
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_height_cutoff_angle:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 55
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_pdop_limit:F

    .line 56
    const-string v0, "base.xfix-gnss.com"

    iput-object v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host:Ljava/lang/String;

    .line 57
    const-string v0, "base-hk.xfix-gnss.com"

    iput-object v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_host_xfix:Ljava/lang/String;

    const/16 v0, 0x17ac

    .line 58
    iput v0, p0, Lcom/qianhe/yct/bean/AppConfig$Details;->base_port:I

    return-void
.end method
