.class public final enum Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

.field public static final enum NODE1:Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

.field public static final enum NODE2:Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 0
    new-instance v0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NODE1"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->NODE1:Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    new-instance v2, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "NODE2"

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v2, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->NODE2:Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->$VALUES:[Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

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

    iput-object p3, p0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->code:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;
    .locals 1

    .line 0
    const-class v0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    return-object p0
.end method

.method public static values()[Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->$VALUES:[Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    invoke-virtual {v0}, [Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/TelTextNodeEnum;->name:Ljava/lang/String;

    return-object v0
.end method
