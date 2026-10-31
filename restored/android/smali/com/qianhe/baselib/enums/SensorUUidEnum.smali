.class public final enum Lcom/qianhe/baselib/enums/SensorUUidEnum;
.super Ljava/lang/Enum;
.source "SensorUUidEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/SensorUUidEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/SensorUUidEnum;

.field public static final enum TYPE1:Lcom/qianhe/baselib/enums/SensorUUidEnum;

.field public static final enum TYPE2:Lcom/qianhe/baselib/enums/SensorUUidEnum;


# instance fields
.field private final uuid:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/SensorUUidEnum;
    .locals 3

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lcom/qianhe/baselib/enums/SensorUUidEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE1:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE2:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;

    const/4 v1, 0x0

    const-string v2, "0000ffc5-0000-1000-8000-00805f9a34fb"

    const-string v3, "TYPE1"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/SensorUUidEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE1:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;

    const/4 v1, 0x1

    const-string v2, "a30e0001-e8f9-417c-9354-13e39065536b"

    const-string v3, "TYPE2"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/SensorUUidEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE2:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    .line 14
    invoke-static {}, Lcom/qianhe/baselib/enums/SensorUUidEnum;->$values()[Lcom/qianhe/baselib/enums/SensorUUidEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->$VALUES:[Lcom/qianhe/baselib/enums/SensorUUidEnum;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->uuid:Ljava/lang/String;

    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 2

    .line 28
    sget-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE1:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/SensorUUidEnum;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    return p0

    .line 30
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->TYPE2:Lcom/qianhe/baselib/enums/SensorUUidEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/SensorUUidEnum;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/SensorUUidEnum;
    .locals 1

    .line 14
    const-class v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/SensorUUidEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/SensorUUidEnum;
    .locals 1

    .line 14
    sget-object v0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->$VALUES:[Lcom/qianhe/baselib/enums/SensorUUidEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/SensorUUidEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/SensorUUidEnum;

    return-object v0
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/qianhe/baselib/enums/SensorUUidEnum;->uuid:Ljava/lang/String;

    return-object v0
.end method
