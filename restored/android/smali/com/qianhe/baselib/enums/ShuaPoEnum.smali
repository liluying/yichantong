.class public final enum Lcom/qianhe/baselib/enums/ShuaPoEnum;
.super Ljava/lang/Enum;
.source "ShuaPoEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/ShuaPoEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/ShuaPoEnum;

.field public static final enum DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

.field public static final enum UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/ShuaPoEnum;
    .locals 3

    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Lcom/qianhe/baselib/enums/ShuaPoEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;

    const-string v1, "DOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/ShuaPoEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;->DOWN:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;

    const-string v1, "UP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/ShuaPoEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;->UP:Lcom/qianhe/baselib/enums/ShuaPoEnum;

    .line 11
    invoke-static {}, Lcom/qianhe/baselib/enums/ShuaPoEnum;->$values()[Lcom/qianhe/baselib/enums/ShuaPoEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;->$VALUES:[Lcom/qianhe/baselib/enums/ShuaPoEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/qianhe/baselib/enums/ShuaPoEnum;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/ShuaPoEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/ShuaPoEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/ShuaPoEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/qianhe/baselib/enums/ShuaPoEnum;->$VALUES:[Lcom/qianhe/baselib/enums/ShuaPoEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/ShuaPoEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/ShuaPoEnum;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/qianhe/baselib/enums/ShuaPoEnum;->type:I

    return v0
.end method
