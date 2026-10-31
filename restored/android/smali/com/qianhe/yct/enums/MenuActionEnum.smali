.class public final enum Lcom/qianhe/yct/enums/MenuActionEnum;
.super Ljava/lang/Enum;
.source "MenuActionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/enums/MenuActionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/enums/MenuActionEnum;

.field public static final enum CREATE:Lcom/qianhe/yct/enums/MenuActionEnum;

.field public static final enum DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

.field public static final enum MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

.field public static final enum SHARE:Lcom/qianhe/yct/enums/MenuActionEnum;


# instance fields
.field private final tabPos:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/enums/MenuActionEnum;
    .locals 3

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/qianhe/yct/enums/MenuActionEnum;

    sget-object v1, Lcom/qianhe/yct/enums/MenuActionEnum;->CREATE:Lcom/qianhe/yct/enums/MenuActionEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/MenuActionEnum;->DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/MenuActionEnum;->MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/enums/MenuActionEnum;->SHARE:Lcom/qianhe/yct/enums/MenuActionEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/qianhe/yct/enums/MenuActionEnum;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/yct/enums/MenuActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->CREATE:Lcom/qianhe/yct/enums/MenuActionEnum;

    .line 15
    new-instance v0, Lcom/qianhe/yct/enums/MenuActionEnum;

    const-string v1, "DELETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/yct/enums/MenuActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->DELETE:Lcom/qianhe/yct/enums/MenuActionEnum;

    .line 16
    new-instance v0, Lcom/qianhe/yct/enums/MenuActionEnum;

    const-string v1, "MODIFY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/yct/enums/MenuActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->MODIFY:Lcom/qianhe/yct/enums/MenuActionEnum;

    .line 17
    new-instance v0, Lcom/qianhe/yct/enums/MenuActionEnum;

    const-string v1, "SHARE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/yct/enums/MenuActionEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->SHARE:Lcom/qianhe/yct/enums/MenuActionEnum;

    .line 13
    invoke-static {}, Lcom/qianhe/yct/enums/MenuActionEnum;->$values()[Lcom/qianhe/yct/enums/MenuActionEnum;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->$VALUES:[Lcom/qianhe/yct/enums/MenuActionEnum;

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
    iput p3, p0, Lcom/qianhe/yct/enums/MenuActionEnum;->tabPos:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/enums/MenuActionEnum;
    .locals 1

    .line 13
    const-class v0, Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/enums/MenuActionEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/enums/MenuActionEnum;
    .locals 1

    .line 13
    sget-object v0, Lcom/qianhe/yct/enums/MenuActionEnum;->$VALUES:[Lcom/qianhe/yct/enums/MenuActionEnum;

    invoke-virtual {v0}, [Lcom/qianhe/yct/enums/MenuActionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/enums/MenuActionEnum;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/qianhe/yct/enums/MenuActionEnum;->tabPos:I

    return v0
.end method
