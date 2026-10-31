.class public final enum Lcom/qianhe/baselib/enums/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/DeviceType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/DeviceType;

.field public static final enum ATTITUDESENSOR:Lcom/qianhe/baselib/enums/DeviceType;

.field public static final enum BASE:Lcom/qianhe/baselib/enums/DeviceType;

.field public static final enum NONE:Lcom/qianhe/baselib/enums/DeviceType;

.field public static final enum ZPY:Lcom/qianhe/baselib/enums/DeviceType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/DeviceType;
    .locals 3

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/qianhe/baselib/enums/DeviceType;

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/DeviceType;->ATTITUDESENSOR:Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x0

    const-string/jumbo v2, "unknown"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/DeviceType;->NONE:Lcom/qianhe/baselib/enums/DeviceType;

    .line 7
    new-instance v0, Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x1

    const-string/jumbo v2, "zpy"

    const-string v3, "ZPY"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ZPY:Lcom/qianhe/baselib/enums/DeviceType;

    .line 8
    new-instance v0, Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x2

    const-string v2, "base"

    const-string v3, "BASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/DeviceType;->BASE:Lcom/qianhe/baselib/enums/DeviceType;

    .line 9
    new-instance v0, Lcom/qianhe/baselib/enums/DeviceType;

    const/4 v1, 0x3

    const-string v2, "attitudeSensor"

    const-string v3, "ATTITUDESENSOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/DeviceType;->ATTITUDESENSOR:Lcom/qianhe/baselib/enums/DeviceType;

    .line 5
    invoke-static {}, Lcom/qianhe/baselib/enums/DeviceType;->$values()[Lcom/qianhe/baselib/enums/DeviceType;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/DeviceType;->$VALUES:[Lcom/qianhe/baselib/enums/DeviceType;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/qianhe/baselib/enums/DeviceType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/DeviceType;
    .locals 1

    .line 5
    const-class v0, Lcom/qianhe/baselib/enums/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/DeviceType;
    .locals 1

    .line 5
    sget-object v0, Lcom/qianhe/baselib/enums/DeviceType;->$VALUES:[Lcom/qianhe/baselib/enums/DeviceType;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/DeviceType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/qianhe/baselib/enums/DeviceType;->type:Ljava/lang/String;

    return-object v0
.end method
