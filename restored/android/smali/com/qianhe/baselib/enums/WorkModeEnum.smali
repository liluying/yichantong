.class public final enum Lcom/qianhe/baselib/enums/WorkModeEnum;
.super Ljava/lang/Enum;
.source "WorkModeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/WorkModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/WorkModeEnum;

.field public static final enum BASE:Lcom/qianhe/baselib/enums/WorkModeEnum;

.field public static final enum ROVER:Lcom/qianhe/baselib/enums/WorkModeEnum;

.field public static final enum STATIC:Lcom/qianhe/baselib/enums/WorkModeEnum;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/WorkModeEnum;
    .locals 3

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/qianhe/baselib/enums/WorkModeEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/WorkModeEnum;->ROVER:Lcom/qianhe/baselib/enums/WorkModeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/WorkModeEnum;->BASE:Lcom/qianhe/baselib/enums/WorkModeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/WorkModeEnum;->STATIC:Lcom/qianhe/baselib/enums/WorkModeEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/qianhe/baselib/enums/WorkModeEnum;

    const-string v1, "ROVER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/WorkModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->ROVER:Lcom/qianhe/baselib/enums/WorkModeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/WorkModeEnum;

    const-string v1, "BASE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/WorkModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->BASE:Lcom/qianhe/baselib/enums/WorkModeEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/WorkModeEnum;

    const-string v1, "STATIC"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/WorkModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->STATIC:Lcom/qianhe/baselib/enums/WorkModeEnum;

    .line 11
    invoke-static {}, Lcom/qianhe/baselib/enums/WorkModeEnum;->$values()[Lcom/qianhe/baselib/enums/WorkModeEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/WorkModeEnum;

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
    iput p3, p0, Lcom/qianhe/baselib/enums/WorkModeEnum;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/WorkModeEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/qianhe/baselib/enums/WorkModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/WorkModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/WorkModeEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/qianhe/baselib/enums/WorkModeEnum;->$VALUES:[Lcom/qianhe/baselib/enums/WorkModeEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/WorkModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/WorkModeEnum;

    return-object v0
.end method
