.class public Lcom/cmcc/sy/hap/inner/OooO00o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Ljava/lang/String; = "CmccASdkLog"

.field private static OooO0O0:Lcom/cmcc/sy/hap/sdk/SdkLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->WARNING:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    sput-object v0, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    return-void
.end method

.method public static OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;)V
    .locals 0

    .line 0
    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    return-void
.end method

.method private static OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-static {p0, p2}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->ERROR:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    return-void

    :cond_1
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->WARNING:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    return-void

    :cond_2
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->INFO:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    return-void

    :cond_3
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->DEBUG:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    if-ne p0, v0, :cond_4

    invoke-static {p1}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)V
    .locals 2

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->DEBUG:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->DEBUG:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    invoke-static {v0, p0, p1}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;Ljava/lang/String;)Z
    .locals 2

    .line 0
    if-nez p0, :cond_0

    sget-object p0, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    :cond_0
    invoke-virtual {p0}, Lcom/cmcc/sy/hap/sdk/SdkLogType;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO0O0:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    invoke-virtual {v0}, Lcom/cmcc/sy/hap/sdk/SdkLogType;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static OooO0O0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/cmcc/sy/hap/puzzle/OooO0O0;->OooO00o(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO00o:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->INFO:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    invoke-static {v0, p0, p1}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0OO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->WARNING:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    invoke-static {v0, p0, p1}, Lcom/cmcc/sy/hap/inner/OooO00o;->OooO00o(Lcom/cmcc/sy/hap/sdk/SdkLogType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
