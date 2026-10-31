.class public final enum Lcom/qianhe/yct/enums/BluetoothActionEnum;
.super Ljava/lang/Enum;
.source "BluetoothActionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/enums/BluetoothActionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/enums/BluetoothActionEnum;

.field public static final enum CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

.field public static final enum DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

.field public static final enum STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

.field public static final enum STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;


# instance fields
.field private final state:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/enums/BluetoothActionEnum;
    .locals 3

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/qianhe/yct/enums/BluetoothActionEnum;

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v1, 0x0

    const/16 v2, 0xb

    const-string v3, "STARTSCAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/yct/enums/BluetoothActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STARTSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 15
    new-instance v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v1, 0x1

    const/16 v2, 0x16

    const-string v3, "STOPSCAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/yct/enums/BluetoothActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->STOPSCAN:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 16
    new-instance v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v1, 0x2

    const/16 v2, 0x21

    const-string v3, "DISCONNECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/yct/enums/BluetoothActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->DISCONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 17
    new-instance v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;

    const/4 v1, 0x3

    const/16 v2, 0x2c

    const-string v3, "CONNECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/yct/enums/BluetoothActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->CONNECT:Lcom/qianhe/yct/enums/BluetoothActionEnum;

    .line 13
    invoke-static {}, Lcom/qianhe/yct/enums/BluetoothActionEnum;->$values()[Lcom/qianhe/yct/enums/BluetoothActionEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->$VALUES:[Lcom/qianhe/yct/enums/BluetoothActionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/enums/BluetoothActionEnum;
    .locals 1

    .line 13
    const-class v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/enums/BluetoothActionEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/enums/BluetoothActionEnum;
    .locals 1

    .line 13
    sget-object v0, Lcom/qianhe/yct/enums/BluetoothActionEnum;->$VALUES:[Lcom/qianhe/yct/enums/BluetoothActionEnum;

    invoke-virtual {v0}, [Lcom/qianhe/yct/enums/BluetoothActionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/enums/BluetoothActionEnum;

    return-object v0
.end method
