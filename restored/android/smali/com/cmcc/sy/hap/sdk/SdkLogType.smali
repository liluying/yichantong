.class public final enum Lcom/cmcc/sy/hap/sdk/SdkLogType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cmcc/sy/hap/sdk/SdkLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/sy/hap/sdk/SdkLogType;

.field public static final enum DEBUG:Lcom/cmcc/sy/hap/sdk/SdkLogType;

.field public static final enum ERROR:Lcom/cmcc/sy/hap/sdk/SdkLogType;

.field public static final enum INFO:Lcom/cmcc/sy/hap/sdk/SdkLogType;

.field public static final enum WARNING:Lcom/cmcc/sy/hap/sdk/SdkLogType;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 0
    new-instance v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/cmcc/sy/hap/sdk/SdkLogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->ERROR:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    new-instance v1, Lcom/cmcc/sy/hap/sdk/SdkLogType;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "WARNING"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v4}, Lcom/cmcc/sy/hap/sdk/SdkLogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/cmcc/sy/hap/sdk/SdkLogType;->WARNING:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    new-instance v2, Lcom/cmcc/sy/hap/sdk/SdkLogType;

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "INFO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v6}, Lcom/cmcc/sy/hap/sdk/SdkLogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v2, Lcom/cmcc/sy/hap/sdk/SdkLogType;->INFO:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    new-instance v4, Lcom/cmcc/sy/hap/sdk/SdkLogType;

    const/16 v6, 0x190

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "DEBUG"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v8}, Lcom/cmcc/sy/hap/sdk/SdkLogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v4, Lcom/cmcc/sy/hap/sdk/SdkLogType;->DEBUG:Lcom/cmcc/sy/hap/sdk/SdkLogType;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/cmcc/sy/hap/sdk/SdkLogType;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/cmcc/sy/hap/sdk/SdkLogType;->$VALUES:[Lcom/cmcc/sy/hap/sdk/SdkLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->code:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/sy/hap/sdk/SdkLogType;
    .locals 1

    .line 0
    const-class v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cmcc/sy/hap/sdk/SdkLogType;

    return-object p0
.end method

.method public static values()[Lcom/cmcc/sy/hap/sdk/SdkLogType;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->$VALUES:[Lcom/cmcc/sy/hap/sdk/SdkLogType;

    invoke-virtual {v0}, [Lcom/cmcc/sy/hap/sdk/SdkLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/sy/hap/sdk/SdkLogType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/SdkLogType;->name:Ljava/lang/String;

    return-object v0
.end method
