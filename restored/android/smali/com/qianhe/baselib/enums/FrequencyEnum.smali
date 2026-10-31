.class public final enum Lcom/qianhe/baselib/enums/FrequencyEnum;
.super Ljava/lang/Enum;
.source "FrequencyEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/FrequencyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/FrequencyEnum;

.field public static final enum AUTO:Lcom/qianhe/baselib/enums/FrequencyEnum;

.field public static final enum HZ_1:Lcom/qianhe/baselib/enums/FrequencyEnum;

.field public static final enum HZ_10:Lcom/qianhe/baselib/enums/FrequencyEnum;

.field public static final enum HZ_2:Lcom/qianhe/baselib/enums/FrequencyEnum;

.field public static final enum HZ_5:Lcom/qianhe/baselib/enums/FrequencyEnum;


# instance fields
.field private frequency:F


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/FrequencyEnum;
    .locals 3

    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [Lcom/qianhe/baselib/enums/FrequencyEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/FrequencyEnum;->AUTO:Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_1:Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_2:Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_5:Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_10:Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const-string v3, "AUTO"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/FrequencyEnum;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/qianhe/baselib/enums/FrequencyEnum;->AUTO:Lcom/qianhe/baselib/enums/FrequencyEnum;

    .line 15
    new-instance v0, Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "HZ_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/FrequencyEnum;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_1:Lcom/qianhe/baselib/enums/FrequencyEnum;

    .line 16
    new-instance v0, Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v1, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    const-string v3, "HZ_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/FrequencyEnum;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_2:Lcom/qianhe/baselib/enums/FrequencyEnum;

    .line 17
    new-instance v0, Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v1, 0x3

    const v2, 0x3e4ccccd    # 0.2f

    const-string v3, "HZ_5"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/FrequencyEnum;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_5:Lcom/qianhe/baselib/enums/FrequencyEnum;

    .line 18
    new-instance v0, Lcom/qianhe/baselib/enums/FrequencyEnum;

    const/4 v1, 0x4

    const v2, 0x3dcccccd    # 0.1f

    const-string v3, "HZ_10"

    invoke-direct {v0, v3, v1, v2}, Lcom/qianhe/baselib/enums/FrequencyEnum;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/qianhe/baselib/enums/FrequencyEnum;->HZ_10:Lcom/qianhe/baselib/enums/FrequencyEnum;

    .line 13
    invoke-static {}, Lcom/qianhe/baselib/enums/FrequencyEnum;->$values()[Lcom/qianhe/baselib/enums/FrequencyEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/FrequencyEnum;->$VALUES:[Lcom/qianhe/baselib/enums/FrequencyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/qianhe/baselib/enums/FrequencyEnum;->frequency:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/FrequencyEnum;
    .locals 1

    .line 13
    const-class v0, Lcom/qianhe/baselib/enums/FrequencyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/FrequencyEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/FrequencyEnum;
    .locals 1

    .line 13
    sget-object v0, Lcom/qianhe/baselib/enums/FrequencyEnum;->$VALUES:[Lcom/qianhe/baselib/enums/FrequencyEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/FrequencyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/FrequencyEnum;

    return-object v0
.end method


# virtual methods
.method public getFrequency()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/qianhe/baselib/enums/FrequencyEnum;->frequency:F

    return v0
.end method
