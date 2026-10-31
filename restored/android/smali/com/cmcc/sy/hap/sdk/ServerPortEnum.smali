.class public final enum Lcom/cmcc/sy/hap/sdk/ServerPortEnum;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cmcc/sy/hap/sdk/ServerPortEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

.field public static final enum CMCC_PORT_A:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

.field public static final enum CMCC_PORT_B:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

.field public static final enum CMCC_PORT_C:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

.field public static final enum CMCC_PORT_D:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 0
    new-instance v0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CMCC_PORT_A"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->CMCC_PORT_A:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    new-instance v2, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "CMCC_PORT_B"

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v2, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->CMCC_PORT_B:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    new-instance v4, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "CMCC_PORT_C"

    invoke-direct {v4, v7, v5, v6, v7}, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v4, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->CMCC_PORT_C:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    new-instance v6, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "CMCC_PORT_D"

    invoke-direct {v6, v9, v7, v8, v9}, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->CMCC_PORT_D:Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->$VALUES:[Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

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

    iput-object p3, p0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->code:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/sy/hap/sdk/ServerPortEnum;
    .locals 1

    .line 0
    const-class v0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    return-object p0
.end method

.method public static values()[Lcom/cmcc/sy/hap/sdk/ServerPortEnum;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->$VALUES:[Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    invoke-virtual {v0}, [Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/sy/hap/sdk/ServerPortEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/ServerPortEnum;->name:Ljava/lang/String;

    return-object v0
.end method
