.class public final enum Lcom/qianhe/yct/view/map/YMapType;
.super Ljava/lang/Enum;
.source "YMapType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/view/map/YMapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/view/map/YMapType;

.field public static final enum GOOGLEMAP:Lcom/qianhe/yct/view/map/YMapType;

.field public static final enum TianDiTu:Lcom/qianhe/yct/view/map/YMapType;


# instance fields
.field private type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/view/map/YMapType;
    .locals 3

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/qianhe/yct/view/map/YMapType;

    sget-object v1, Lcom/qianhe/yct/view/map/YMapType;->TianDiTu:Lcom/qianhe/yct/view/map/YMapType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/view/map/YMapType;->GOOGLEMAP:Lcom/qianhe/yct/view/map/YMapType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/qianhe/yct/view/map/YMapType;

    const-string v1, "TianDiTu"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/yct/view/map/YMapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/view/map/YMapType;->TianDiTu:Lcom/qianhe/yct/view/map/YMapType;

    .line 5
    new-instance v0, Lcom/qianhe/yct/view/map/YMapType;

    const-string v1, "GOOGLEMAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/yct/view/map/YMapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/view/map/YMapType;->GOOGLEMAP:Lcom/qianhe/yct/view/map/YMapType;

    .line 3
    invoke-static {}, Lcom/qianhe/yct/view/map/YMapType;->$values()[Lcom/qianhe/yct/view/map/YMapType;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/view/map/YMapType;->$VALUES:[Lcom/qianhe/yct/view/map/YMapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/qianhe/yct/view/map/YMapType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/view/map/YMapType;
    .locals 1

    .line 3
    const-class v0, Lcom/qianhe/yct/view/map/YMapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/view/map/YMapType;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/view/map/YMapType;
    .locals 1

    .line 3
    sget-object v0, Lcom/qianhe/yct/view/map/YMapType;->$VALUES:[Lcom/qianhe/yct/view/map/YMapType;

    invoke-virtual {v0}, [Lcom/qianhe/yct/view/map/YMapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/view/map/YMapType;

    return-object v0
.end method
