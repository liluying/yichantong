.class public final enum Lcom/qianhe/baselib/enums/StarTypeEnum;
.super Ljava/lang/Enum;
.source "StarTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/StarTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/StarTypeEnum;

.field public static final enum BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

.field public static final enum GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

.field public static final enum GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

.field public static final enum GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

.field public static final enum IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

.field public static final enum QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

.field public static final enum SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/StarTypeEnum;
    .locals 3

    const/4 v0, 0x7

    .line 11
    new-array v0, v0, [Lcom/qianhe/baselib/enums/StarTypeEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    const-string v1, "GPS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/StarTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GPS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    const-string v1, "GLN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/StarTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GLN:Lcom/qianhe/baselib/enums/StarTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    const-string v1, "SBAS"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/StarTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->SBAS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    const-string v1, "BDS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/StarTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->BDS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    const-string v1, "GAL"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/StarTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->GAL:Lcom/qianhe/baselib/enums/StarTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    const-string v1, "QZSS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/StarTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->QZSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    const-string v1, "IRNSS"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/StarTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->IRNSS:Lcom/qianhe/baselib/enums/StarTypeEnum;

    .line 11
    invoke-static {}, Lcom/qianhe/baselib/enums/StarTypeEnum;->$values()[Lcom/qianhe/baselib/enums/StarTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/StarTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/StarTypeEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/StarTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/StarTypeEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/qianhe/baselib/enums/StarTypeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/StarTypeEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/StarTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/StarTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/qianhe/baselib/enums/StarTypeEnum;->type:I

    return v0
.end method
