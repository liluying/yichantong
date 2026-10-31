.class public abstract Lcom/qianhe/baselib/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static GNSS_FWM_VERSION:Ljava/lang/String; = "gnss_fwm_version"

.field public static NTRIPTYPE:Ljava/lang/String; = "ntripType"

.field public static final PAYLOAD_REFRESH_DATA:Ljava/lang/Object;

.field public static WX_PLAY_APPID:Ljava/lang/String; = "wx_appid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "payload_refresh_data"

    sput-object v0, Lcom/qianhe/baselib/Constant;->PAYLOAD_REFRESH_DATA:Ljava/lang/Object;

    return-void
.end method
