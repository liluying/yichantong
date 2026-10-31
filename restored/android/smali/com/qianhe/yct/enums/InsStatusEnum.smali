.class public final enum Lcom/qianhe/yct/enums/InsStatusEnum;
.super Ljava/lang/Enum;
.source "InsStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/enums/InsStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/enums/InsStatusEnum;

.field public static final enum ELEVATIONAVAILABLE:Lcom/qianhe/yct/enums/InsStatusEnum;

.field public static final enum GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

.field public static final enum GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

.field public static final enum READY:Lcom/qianhe/yct/enums/InsStatusEnum;

.field public static final enum SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

.field public static final enum TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

.field public static final enum VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;


# instance fields
.field private final status:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/enums/InsStatusEnum;
    .locals 3

    const/4 v0, 0x7

    .line 12
    new-array v0, v0, [Lcom/qianhe/yct/enums/InsStatusEnum;

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->ELEVATIONAVAILABLE:Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v1, 0x0

    const/16 v2, 0x800

    const-string v3, "VERTICAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/yct/enums/InsStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->VERTICAL:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 14
    new-instance v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    const-string v3, "GNSSLOST"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/yct/enums/InsStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 15
    new-instance v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    const/16 v1, 0x10

    const-string v2, "GNSSREJECT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/qianhe/yct/enums/InsStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->GNSSREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 16
    new-instance v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v4, "TILTREJECT"

    invoke-direct {v0, v4, v1, v2}, Lcom/qianhe/yct/enums/InsStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->TILTREJECT:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 17
    new-instance v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v1, 0x4

    const/16 v2, 0x1000

    const-string v4, "SENSORLOST"

    invoke-direct {v0, v4, v1, v2}, Lcom/qianhe/yct/enums/InsStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->SENSORLOST:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 18
    new-instance v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    const/4 v1, 0x5

    const/high16 v2, 0x200000

    const-string v4, "ELEVATIONAVAILABLE"

    invoke-direct {v0, v4, v1, v2}, Lcom/qianhe/yct/enums/InsStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->ELEVATIONAVAILABLE:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 19
    new-instance v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    const-string v1, "READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/enums/InsStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->READY:Lcom/qianhe/yct/enums/InsStatusEnum;

    .line 12
    invoke-static {}, Lcom/qianhe/yct/enums/InsStatusEnum;->$values()[Lcom/qianhe/yct/enums/InsStatusEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->$VALUES:[Lcom/qianhe/yct/enums/InsStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/qianhe/yct/enums/InsStatusEnum;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/enums/InsStatusEnum;
    .locals 1

    .line 12
    const-class v0, Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/enums/InsStatusEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/enums/InsStatusEnum;
    .locals 1

    .line 12
    sget-object v0, Lcom/qianhe/yct/enums/InsStatusEnum;->$VALUES:[Lcom/qianhe/yct/enums/InsStatusEnum;

    invoke-virtual {v0}, [Lcom/qianhe/yct/enums/InsStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/enums/InsStatusEnum;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/qianhe/yct/enums/InsStatusEnum;->status:I

    return v0
.end method
