.class public final enum Lcom/cmcc/sy/hap/sdk/CoordinateEnum;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cmcc/sy/hap/sdk/CoordinateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

.field public static final enum CGCS2000:Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

.field public static final enum ITRF2008:Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

.field public static final enum WGS84:Lcom/cmcc/sy/hap/sdk/CoordinateEnum;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 0
    new-instance v0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CGCS2000"

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->CGCS2000:Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    new-instance v2, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "WGS84"

    invoke-direct {v2, v5, v3, v4, v5}, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v2, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->WGS84:Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    new-instance v4, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ITRF2008"

    invoke-direct {v4, v7, v5, v6, v7}, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v4, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->ITRF2008:Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->$VALUES:[Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

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

    iput-object p3, p0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->code:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/sy/hap/sdk/CoordinateEnum;
    .locals 1

    .line 0
    const-class v0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    return-object p0
.end method

.method public static values()[Lcom/cmcc/sy/hap/sdk/CoordinateEnum;
    .locals 1

    .line 0
    sget-object v0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->$VALUES:[Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    invoke-virtual {v0}, [Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/sy/hap/sdk/CoordinateEnum;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/cmcc/sy/hap/sdk/CoordinateEnum;->name:Ljava/lang/String;

    return-object v0
.end method
