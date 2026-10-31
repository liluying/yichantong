.class public final enum Lcom/qianhe/baselib/enums/CoordTypeEnum;
.super Ljava/lang/Enum;
.source "CoordTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/CoordTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/CoordTypeEnum;

.field public static final enum ECEF:Lcom/qianhe/baselib/enums/CoordTypeEnum;

.field public static final enum GAUSS:Lcom/qianhe/baselib/enums/CoordTypeEnum;

.field public static final enum GEODETIC:Lcom/qianhe/baselib/enums/CoordTypeEnum;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/CoordTypeEnum;
    .locals 3

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/qianhe/baselib/enums/CoordTypeEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/CoordTypeEnum;->GEODETIC:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/CoordTypeEnum;->GAUSS:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/CoordTypeEnum;->ECEF:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;

    const/4 v1, 0x0

    const-string v2, "Geodetic"

    const-string v3, "GEODETIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/CoordTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;->GEODETIC:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;

    const/4 v1, 0x1

    const-string v2, "Gauss"

    const-string v3, "GAUSS"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/CoordTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;->GAUSS:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;

    const-string v1, "ECEF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/qianhe/baselib/enums/CoordTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;->ECEF:Lcom/qianhe/baselib/enums/CoordTypeEnum;

    .line 12
    invoke-static {}, Lcom/qianhe/baselib/enums/CoordTypeEnum;->$values()[Lcom/qianhe/baselib/enums/CoordTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/CoordTypeEnum;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/qianhe/baselib/enums/CoordTypeEnum;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/CoordTypeEnum;
    .locals 1

    .line 12
    const-class v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/CoordTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/CoordTypeEnum;
    .locals 1

    .line 12
    sget-object v0, Lcom/qianhe/baselib/enums/CoordTypeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/CoordTypeEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/CoordTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/CoordTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/qianhe/baselib/enums/CoordTypeEnum;->type:Ljava/lang/String;

    return-object v0
.end method
