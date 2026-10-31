.class public Lcom/qh/diffclient/DiffClient;
.super Ljava/lang/Object;
.source "DiffClient.java"

# interfaces
.implements Lcom/qianhe/ntripclientlib/base/DiffClientImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qh/diffclient/DiffClient$CmccCallback;,
        Lcom/qh/diffclient/DiffClient$BLH;,
        Lcom/qh/diffclient/DiffClient$RssAccDiffParams;,
        Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;,
        Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;,
        Lcom/qh/diffclient/DiffClient$Listener;
    }
.end annotation


# static fields
.field public static final DIFF_COORD_SYS_CGCS2000:I = 0x2

.field public static final DIFF_COORD_SYS_ITRF2008:I = 0x3

.field public static final DIFF_COORD_SYS_WGS84:I = 0x1

.field public static final DIFF_STATE_AuthFailed:I = 0xca

.field public static final DIFF_STATE_AuthSuccessed:I = 0xcb

.field public static final DIFF_STATE_Authing:I = 0xc8

.field public static final DIFF_STATE_Connected:I = 0x65

.field public static final DIFF_STATE_Connecting:I = 0x64

.field public static final DIFF_STATE_Disconnected:I = 0x66

.field public static final DIFF_STATE_NoCoverage:I = 0xc9

.field public static final DIFF_STATE_RssAccAssignFailed:I = 0xc

.field public static final DIFF_STATE_RssAccReqFailed:I = 0xb

.field public static final DIFF_STATE_RssAccReqing:I = 0xa

.field public static final DIFF_STATE_Streaming:I = 0x12d

.field public static final DIFF_STATE_Unknown:I = -0x1

.field public static final RSS_SUPPORT_ACC:I = 0x2

.field public static final RSS_SUPPORT_SDK:I = 0x1


# direct methods
.method static bridge synthetic -$$Nest$sminputCmccRtcmData([BI)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qh/diffclient/DiffClient;->inputCmccRtcmData([BI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 137
    const-string v0, "cmcc_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 138
    const-string v0, "diffclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAccountExpireEpoch()J
.end method

.method public static native getBaseStationBLH()Lcom/qh/diffclient/DiffClient$BLH;
.end method

.method public static native getRssConnectSupports(Ljava/lang/String;)I
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native initialize(Lcom/qh/diffclient/DiffClient$NtripClientDiffParams;)Z
.end method

.method public static native initialize(Lcom/qh/diffclient/DiffClient$RssAccDiffParams;)Z
.end method

.method public static native initialize(Lcom/qh/diffclient/DiffClient$RssSdkDiffParams;)Z
.end method

.method private static native inputCmccRtcmData([BI)V
.end method

.method public static native setListener(Lcom/qh/diffclient/DiffClient$Listener;)Z
.end method

.method public static native setLoggerFilePath(Ljava/lang/String;)Z
.end method

.method public static native stop()V
.end method

.method public static native updateGGA(Ljava/lang/String;)Z
.end method


# virtual methods
.method public connect()V
    .locals 0

    .line 0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 77
    const-string/jumbo v0, "\u65ad\u5f00\u5dee\u5206\u6570\u636e"

    invoke-static {v0}, Lcom/qianhe/baselib/utils/LogToFile;->i(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/qh/diffclient/DiffClient;->stop()V

    return-void
.end method

.method public updateGgaData(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/qh/diffclient/DiffClient;->updateGGA(Ljava/lang/String;)Z

    return-void
.end method
