.class public final enum Lcom/qianhe/yct/enums/DataLinkEnum;
.super Ljava/lang/Enum;
.source "DataLinkEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/enums/DataLinkEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/enums/DataLinkEnum;

.field public static final enum BLUETOOTH:Lcom/qianhe/yct/enums/DataLinkEnum;

.field public static final enum NETWORK:Lcom/qianhe/yct/enums/DataLinkEnum;

.field public static final enum NONE:Lcom/qianhe/yct/enums/DataLinkEnum;

.field public static final enum PPP:Lcom/qianhe/yct/enums/DataLinkEnum;

.field public static final enum RADIO:Lcom/qianhe/yct/enums/DataLinkEnum;

.field public static final enum WiFi:Lcom/qianhe/yct/enums/DataLinkEnum;

.field public static final enum XLINK:Lcom/qianhe/yct/enums/DataLinkEnum;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/enums/DataLinkEnum;
    .locals 3

    const/4 v0, 0x7

    .line 13
    new-array v0, v0, [Lcom/qianhe/yct/enums/DataLinkEnum;

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->NONE:Lcom/qianhe/yct/enums/DataLinkEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->RADIO:Lcom/qianhe/yct/enums/DataLinkEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->NETWORK:Lcom/qianhe/yct/enums/DataLinkEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->BLUETOOTH:Lcom/qianhe/yct/enums/DataLinkEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->WiFi:Lcom/qianhe/yct/enums/DataLinkEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->XLINK:Lcom/qianhe/yct/enums/DataLinkEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/DataLinkEnum;->PPP:Lcom/qianhe/yct/enums/DataLinkEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/enums/DataLinkEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->NONE:Lcom/qianhe/yct/enums/DataLinkEnum;

    .line 15
    new-instance v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    const-string v1, "RADIO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/yct/enums/DataLinkEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->RADIO:Lcom/qianhe/yct/enums/DataLinkEnum;

    .line 16
    new-instance v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    const-string v1, "NETWORK"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/enums/DataLinkEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->NETWORK:Lcom/qianhe/yct/enums/DataLinkEnum;

    .line 17
    new-instance v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    const-string v1, "BLUETOOTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/yct/enums/DataLinkEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->BLUETOOTH:Lcom/qianhe/yct/enums/DataLinkEnum;

    .line 18
    new-instance v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    const-string v1, "WiFi"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/enums/DataLinkEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->WiFi:Lcom/qianhe/yct/enums/DataLinkEnum;

    .line 19
    new-instance v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    const-string v1, "XLINK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/yct/enums/DataLinkEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->XLINK:Lcom/qianhe/yct/enums/DataLinkEnum;

    .line 20
    new-instance v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    const-string v1, "PPP"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/yct/enums/DataLinkEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->PPP:Lcom/qianhe/yct/enums/DataLinkEnum;

    .line 13
    invoke-static {}, Lcom/qianhe/yct/enums/DataLinkEnum;->$values()[Lcom/qianhe/yct/enums/DataLinkEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->$VALUES:[Lcom/qianhe/yct/enums/DataLinkEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/qianhe/yct/enums/DataLinkEnum;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/enums/DataLinkEnum;
    .locals 1

    .line 13
    const-class v0, Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/enums/DataLinkEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/enums/DataLinkEnum;
    .locals 1

    .line 13
    sget-object v0, Lcom/qianhe/yct/enums/DataLinkEnum;->$VALUES:[Lcom/qianhe/yct/enums/DataLinkEnum;

    invoke-virtual {v0}, [Lcom/qianhe/yct/enums/DataLinkEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/enums/DataLinkEnum;

    return-object v0
.end method
