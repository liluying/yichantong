.class public final enum Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;
.super Ljava/lang/Enum;
.source "ExcavatorCalibrateModeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

.field public static final enum NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

.field public static final enum NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

.field public static final enum SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;


# instance fields
.field private final mode:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;
    .locals 3

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    const-string v1, "NO_SENSOR_FLAT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 15
    new-instance v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    const-string v1, "SENSOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->SENSOR:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 16
    new-instance v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    const-string v1, "NO_SENSOR_NOT_FLAT"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->NO_SENSOR_NOT_FLAT:Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    .line 13
    invoke-static {}, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->$values()[Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->$VALUES:[Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->mode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;
    .locals 1

    .line 13
    const-class v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;
    .locals 1

    .line 13
    sget-object v0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->$VALUES:[Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    invoke-virtual {v0}, [Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/qianhe/yct/enums/ExcavatorCalibrateModeEnum;->mode:I

    return v0
.end method
