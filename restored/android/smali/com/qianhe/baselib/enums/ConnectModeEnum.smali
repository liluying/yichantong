.class public final enum Lcom/qianhe/baselib/enums/ConnectModeEnum;
.super Ljava/lang/Enum;
.source "ConnectModeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/ConnectModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/ConnectModeEnum;

.field public static final enum BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

.field public static final enum DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/ConnectModeEnum;
    .locals 3

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Lcom/qianhe/baselib/enums/ConnectModeEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;

    const-string v1, "BLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->BLE:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;

    const-string v1, "DEMO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/ConnectModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->DEMO:Lcom/qianhe/baselib/enums/ConnectModeEnum;

    .line 12
    invoke-static {}, Lcom/qianhe/baselib/enums/ConnectModeEnum;->$values()[Lcom/qianhe/baselib/enums/ConnectModeEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/ConnectModeEnum;

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
    iput p3, p0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/ConnectModeEnum;
    .locals 1

    .line 12
    const-class v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/ConnectModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/ConnectModeEnum;
    .locals 1

    .line 12
    sget-object v0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/ConnectModeEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/ConnectModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/ConnectModeEnum;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/qianhe/baselib/enums/ConnectModeEnum;->type:I

    return v0
.end method
