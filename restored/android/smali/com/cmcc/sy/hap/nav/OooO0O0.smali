.class public Lcom/cmcc/sy/hap/nav/OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;
    }
.end annotation


# static fields
.field private static BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0; = null

.field private static TAG:Ljava/lang/String; = "com.cmcc.sy.hap.nav.OooO0O0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;-><init>(Lcom/cmcc/sy/hap/nav/OooO0O0$OooO00o;)V

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAID()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAnsBuf()[B
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o()[B

    move-result-object v0

    return-object v0
.end method

.method public static getCallback()Lcom/cmcc/sy/hap/sdk/ICallback;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o()Lcom/cmcc/sy/hap/sdk/ICallback;

    move-result-object v0

    return-object v0
.end method

.method public static getConsumer()Lcom/cmcc/sy/hap/sdk/TiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmcc/sy/hap/sdk/TiConsumer<",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0O0()Lcom/cmcc/sy/hap/sdk/TiConsumer;

    move-result-object v0

    return-object v0
.end method

.method public static getEvn()I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oO()I

    move-result v0

    return v0
.end method

.method public static getExpireDate()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMountPoint()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecvCnt()J
    .locals 2

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRtcmLength()I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0O()I

    move-result v0

    return v0
.end method

.method public static getRtcmStatus()I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0o()I

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOOO0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSendTimes()J
    .locals 2

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOOO()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getServerIP()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerPort()I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo()I

    move-result v0

    return v0
.end method

.method public static getUID()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOOOO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native_setRtcmFreq(I)V
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(I)V

    return-void
.end method

.method public static sendGGA(Ljava/lang/String;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setDeviceID(Ljava/lang/String;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setEtprUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0, p1, p2}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setMountPoint(Ljava/lang/String;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0O0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setRtcmUserInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0, p1}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setServerIP(Ljava/lang/String;)I
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0OO(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static setServerPort(Lcom/cmcc/sy/hap/sdk/ServerPortEnum;)I
    .locals 1

    .line 0
    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Lcom/cmcc/sy/hap/sdk/ServerPortEnum;)I

    move-result p0

    return p0
.end method

.method public static setSourceNode(Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;)I

    move-result p0

    return p0
.end method

.method public static setStrEvn(Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public static setTimeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0, p1, p2}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static startSdk()I
    .locals 3

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Lcom/cmcc/sy/hap/sdk/ICallback;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static startSdk(Lcom/cmcc/sy/hap/sdk/ICallback;)I
    .locals 3

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Lcom/cmcc/sy/hap/sdk/ICallback;ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static startSdk(Lcom/cmcc/sy/hap/sdk/ICallback;ZLjava/lang/String;)I
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0, p0, p1, p2}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Lcom/cmcc/sy/hap/sdk/ICallback;ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static stopSdk()V
    .locals 1

    .line 0
    :try_start_0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0;->BaseJniLib:Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOOOo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
