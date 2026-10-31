.class Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/sy/hap/nav/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OooO0O0"
.end annotation


# static fields
.field static OooO:Ljava/lang/String;

.field private static OooO00o:Ljava/util/concurrent/atomic/AtomicLong;

.field private static OooO0O0:Lcom/cmcc/sy/hap/sdk/ICallback;

.field private static OooO0OO:Lcom/cmcc/sy/hap/sdk/TiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cmcc/sy/hap/sdk/TiConsumer<",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static OooO0Oo:Ljava/lang/String;

.field private static OooO0o:Ljava/lang/String;

.field private static OooO0o0:Ljava/lang/String;

.field private static OooO0oO:Ljava/lang/String;

.field static OooO0oo:Ljava/lang/String;

.field static OooOO0:Ljava/lang/String;

.field static OooOO0O:Ljava/lang/String;

.field static OooOO0o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo:Ljava/lang/String;

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o0:Ljava/lang/String;

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o:Ljava/lang/String;

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oO:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_setEvn(I)V

    const-string v0, ""

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_setMP(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOo00()V

    invoke-static {}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOOo()V

    invoke-static {}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOOoo()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "\r\n"

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oo:Ljava/lang/String;

    const-string v0, "\n"

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO:Ljava/lang/String;

    const-string v0, "\\n"

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0:Ljava/lang/String;

    const-string v0, "\r"

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0O:Ljava/lang/String;

    const-string v0, "\\r"

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0o:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcc/sy/hap/nav/OooO0O0$OooO00o;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;-><init>()V

    return-void
.end method

.method private OooO00o(Lcom/cmcc/sy/hap/sdk/ICallback;)V
    .locals 3

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lcom/cmcc/sy/hap/nav/CallBackObj;->OooO00o()V

    sput-object p1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0O0:Lcom/cmcc/sy/hap/sdk/ICallback;

    return-void
.end method

.method private static OooOOo()V
    .locals 2

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/BuildConfig;->DefaultServerPort:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1fa5

    if-eq v0, v1, :cond_6

    const/16 v1, 0x79ac

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    const/16 v1, 0x1fa6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x79ad

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x1fa7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x79ae

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const/4 v0, 0x2

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetServerPort(I)I

    return-void
.end method

.method private static OooOOoo()V
    .locals 0

    .line 0
    return-void
.end method

.method private static OooOo00()V
    .locals 2

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/inner/OooO0O0;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo:Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/sy/hap/inner/OooO0O0;->OooO00o()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o0:Ljava/lang/String;

    invoke-static {}, Lcom/cmcc/sy/hap/inner/OooO0O0;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o:Ljava/lang/String;

    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o0:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-static {v1, v0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO0O0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o0:Ljava/lang/String;

    const-string v1, "Android"

    invoke-static {v1, v0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO0O0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cmcc/sy/hap/nav/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oO:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo:Ljava/lang/String;

    const-string v1, "HONOR"

    invoke-static {v1, v0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO0OO(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;->NODE4:Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetSourceNode(I)I

    sget-object v0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->CMCC_PORT_B:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetServerPort(I)I

    :cond_3
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0Oo:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_setMF(Ljava/lang/String;)V

    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o0:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_setBrd(Ljava/lang/String;)V

    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0o:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetPrdName(Ljava/lang/String;)V

    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oO:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetAutoID(Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public OooO()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetMountPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected OooO00o(Lcom/cmcc/sy/hap/sdk/ICallback;ZLjava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o(Lcom/cmcc/sy/hap/sdk/ICallback;)V

    invoke-static {p2}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_StartSdk(Z)I

    move-result p1

    if-eqz p2, :cond_0

    invoke-static {p3}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO0O0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p3}, Lcom/cmcc/sy/hap/nav/CallBackObj;->OooO0O0(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public OooO00o(Lcom/cmcc/sy/hap/sdk/ServerPortEnum;)I
    .locals 1

    .line 0
    invoke-virtual {p1}, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->getCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetServerPort(I)I

    move-result p1

    return p1
.end method

.method public OooO00o(Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;)I
    .locals 1

    .line 0
    invoke-virtual {p1}, Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;->getCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cmcc/sy/hap/sdk/SourceNodeEnum;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetSourceNode(I)I

    move-result p1

    return p1
.end method

.method protected OooO00o(Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetDeviceID(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected OooO00o(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p1, p2}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetRtcmUserInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 0
    invoke-static {p1}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetEtprUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooO00o()Lcom/cmcc/sy/hap/sdk/ICallback;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0O0:Lcom/cmcc/sy/hap/sdk/ICallback;

    return-object v0
.end method

.method protected OooO00o(I)V
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetRtcmFreq(I)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)I
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetMountPoint(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method protected OooO0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 0
    invoke-static {p1}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetTimeUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooO0O0()Lcom/cmcc/sy/hap/sdk/TiConsumer;
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
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0OO:Lcom/cmcc/sy/hap/sdk/TiConsumer;

    return-object v0
.end method

.method public OooO0OO(Ljava/lang/String;)I
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetServerIP(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetServerIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetServerPort()I

    move-result v0

    return v0
.end method

.method public OooO0Oo(Ljava/lang/String;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SetStrEvn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0o()[B
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetAnsBuf()[B

    move-result-object v0

    return-object v0
.end method

.method protected OooO0o0(Ljava/lang/String;)I
    .locals 2

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/CallBackObj;->printLog()V

    if-eqz p1, :cond_6

    const-string v0, ""

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0O:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0O:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOO0o:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO0oo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-virtual {p0}, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooOOo0()V

    invoke-static {p1}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_SendGGA(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/OooO00o;->OooO00o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oO()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetEvn()I

    move-result v0

    return v0
.end method

.method public OooO0oo()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetExpireDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0()J
    .locals 2

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetRecvCnt()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooOO0O()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetRtcmLength()I

    move-result v0

    return v0
.end method

.method public OooOO0o()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetRtcmStatus()I

    move-result v0

    return v0
.end method

.method public OooOOO()J
    .locals 2

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooOOO0()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOO()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_GetUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOOOo()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/cmcc/sy/hap/nav/NativeJni;->native_stopSdk()V

    return-void
.end method

.method protected OooOOo0()V
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/nav/OooO0O0$OooO0O0;->OooO00o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method
