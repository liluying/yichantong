.class public final enum Lcom/qianhe/baselib/enums/ProjectEnum;
.super Ljava/lang/Enum;
.source "ProjectEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/ProjectEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

.field public static final enum ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/ProjectEnum;
    .locals 3

    const/16 v0, 0xc

    .line 11
    new-array v0, v0, [Lcom/qianhe/baselib/enums/ProjectEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "ZHAOPING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ZHAOPING:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "SHUAPO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->SHUAPO:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "WAGOU"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->WAGOU:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "DIKE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->DIKE:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "LINE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "POLY_LINE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->POLY_LINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "ONEPOINTAREA"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ONEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "THREEPOINTAREA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->THREEPOINTAREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "SITELEVELING"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->SITELEVELING:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "ARBITRARYLINE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->ARBITRARYLINE:Lcom/qianhe/baselib/enums/ProjectEnum;

    .line 13
    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "CURVEDSLOPE"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->CURVEDSLOPE:Lcom/qianhe/baselib/enums/ProjectEnum;

    new-instance v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    const-string v1, "MULTI_POINT_AREA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/qianhe/baselib/enums/ProjectEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->MULTI_POINT_AREA:Lcom/qianhe/baselib/enums/ProjectEnum;

    .line 11
    invoke-static {}, Lcom/qianhe/baselib/enums/ProjectEnum;->$values()[Lcom/qianhe/baselib/enums/ProjectEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->$VALUES:[Lcom/qianhe/baselib/enums/ProjectEnum;

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
    iput p3, p0, Lcom/qianhe/baselib/enums/ProjectEnum;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/ProjectEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/ProjectEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/ProjectEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/qianhe/baselib/enums/ProjectEnum;->$VALUES:[Lcom/qianhe/baselib/enums/ProjectEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/ProjectEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/ProjectEnum;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/qianhe/baselib/enums/ProjectEnum;->type:I

    return v0
.end method
