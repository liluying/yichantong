.class public final enum Lcom/qianhe/yct/enums/RadioPowerEnum;
.super Ljava/lang/Enum;
.source "RadioPowerEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/enums/RadioPowerEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/enums/RadioPowerEnum;

.field public static final enum HIGH:Lcom/qianhe/yct/enums/RadioPowerEnum;

.field public static final enum LOW:Lcom/qianhe/yct/enums/RadioPowerEnum;

.field public static final enum MIDDLE:Lcom/qianhe/yct/enums/RadioPowerEnum;


# instance fields
.field private final power:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/enums/RadioPowerEnum;
    .locals 3

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Lcom/qianhe/yct/enums/RadioPowerEnum;

    sget-object v1, Lcom/qianhe/yct/enums/RadioPowerEnum;->LOW:Lcom/qianhe/yct/enums/RadioPowerEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/RadioPowerEnum;->MIDDLE:Lcom/qianhe/yct/enums/RadioPowerEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/RadioPowerEnum;->HIGH:Lcom/qianhe/yct/enums/RadioPowerEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/qianhe/yct/enums/RadioPowerEnum;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/qianhe/yct/enums/RadioPowerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/yct/enums/RadioPowerEnum;->LOW:Lcom/qianhe/yct/enums/RadioPowerEnum;

    .line 15
    new-instance v0, Lcom/qianhe/yct/enums/RadioPowerEnum;

    const-string v1, "MIDDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/qianhe/yct/enums/RadioPowerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/yct/enums/RadioPowerEnum;->MIDDLE:Lcom/qianhe/yct/enums/RadioPowerEnum;

    .line 16
    new-instance v0, Lcom/qianhe/yct/enums/RadioPowerEnum;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/qianhe/yct/enums/RadioPowerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/yct/enums/RadioPowerEnum;->HIGH:Lcom/qianhe/yct/enums/RadioPowerEnum;

    .line 13
    invoke-static {}, Lcom/qianhe/yct/enums/RadioPowerEnum;->$values()[Lcom/qianhe/yct/enums/RadioPowerEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/enums/RadioPowerEnum;->$VALUES:[Lcom/qianhe/yct/enums/RadioPowerEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/qianhe/yct/enums/RadioPowerEnum;->power:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/enums/RadioPowerEnum;
    .locals 1

    .line 13
    const-class v0, Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/enums/RadioPowerEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/enums/RadioPowerEnum;
    .locals 1

    .line 13
    sget-object v0, Lcom/qianhe/yct/enums/RadioPowerEnum;->$VALUES:[Lcom/qianhe/yct/enums/RadioPowerEnum;

    invoke-virtual {v0}, [Lcom/qianhe/yct/enums/RadioPowerEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/enums/RadioPowerEnum;

    return-object v0
.end method
