.class public final enum Lcom/qianhe/baselib/enums/BluetoothStateEnum;
.super Ljava/lang/Enum;
.source "BluetoothStateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/BluetoothStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum NONE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum SCAN_FAIL:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum SCAN_FINISHED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum SCAN_STARTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

.field public static final enum START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;


# instance fields
.field private final state:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/BluetoothStateEnum;
    .locals 3

    const/16 v0, 0xc

    .line 11
    new-array v0, v0, [Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->NONE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_STARTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FINISHED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FAIL:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->NONE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 13
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "STARTCONNECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->STARTCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 14
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "DISCONNECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->DISCONNECT:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 15
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "CONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 16
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "SCAN_STARTED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_STARTED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 17
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "SCAN_FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FINISHED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 18
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "SCAN_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SCAN_FAIL:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 19
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "CONNECT_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CONNECT_FAILED:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 20
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "START_BOND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->START_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 21
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "CANCEL_BOND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->CANCEL_BOND:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 22
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "BONDING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->BONDING:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 23
    new-instance v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    const-string v1, "SOCKET_CLOSE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->SOCKET_CLOSE:Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    .line 11
    invoke-static {}, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->$values()[Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->$VALUES:[Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/BluetoothStateEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/BluetoothStateEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->$VALUES:[Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/BluetoothStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/BluetoothStateEnum;

    return-object v0
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/qianhe/baselib/enums/BluetoothStateEnum;->state:I

    return v0
.end method
