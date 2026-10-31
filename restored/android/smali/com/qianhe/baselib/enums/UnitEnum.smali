.class public final enum Lcom/qianhe/baselib/enums/UnitEnum;
.super Ljava/lang/Enum;
.source "UnitEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/baselib/enums/UnitEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/baselib/enums/UnitEnum;

.field public static final enum CM:Lcom/qianhe/baselib/enums/UnitEnum;

.field public static final enum IN:Lcom/qianhe/baselib/enums/UnitEnum;

.field public static final enum M:Lcom/qianhe/baselib/enums/UnitEnum;

.field private static final SELECTABLE_TYPES:[I


# instance fields
.field private final type:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/baselib/enums/UnitEnum;
    .locals 3

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/qianhe/baselib/enums/UnitEnum;

    sget-object v1, Lcom/qianhe/baselib/enums/UnitEnum;->M:Lcom/qianhe/baselib/enums/UnitEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/UnitEnum;->CM:Lcom/qianhe/baselib/enums/UnitEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/qianhe/baselib/enums/UnitEnum;

    const-string v1, "M"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qianhe/baselib/enums/UnitEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->M:Lcom/qianhe/baselib/enums/UnitEnum;

    new-instance v1, Lcom/qianhe/baselib/enums/UnitEnum;

    const-string v2, "CM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/qianhe/baselib/enums/UnitEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qianhe/baselib/enums/UnitEnum;->CM:Lcom/qianhe/baselib/enums/UnitEnum;

    new-instance v1, Lcom/qianhe/baselib/enums/UnitEnum;

    const-string v2, "IN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/qianhe/baselib/enums/UnitEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    .line 11
    invoke-static {}, Lcom/qianhe/baselib/enums/UnitEnum;->$values()[Lcom/qianhe/baselib/enums/UnitEnum;

    move-result-object v2

    sput-object v2, Lcom/qianhe/baselib/enums/UnitEnum;->$VALUES:[Lcom/qianhe/baselib/enums/UnitEnum;

    .line 17
    iget v0, v0, Lcom/qianhe/baselib/enums/UnitEnum;->type:I

    iget v1, v1, Lcom/qianhe/baselib/enums/UnitEnum;->type:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->SELECTABLE_TYPES:[I

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
    iput p3, p0, Lcom/qianhe/baselib/enums/UnitEnum;->type:I

    return-void
.end method

.method public static getSelectableTypes()[I
    .locals 1

    .line 46
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->SELECTABLE_TYPES:[I

    return-object v0
.end method

.method public static getSymbol(I)Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p0

    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p0, v0, :cond_0

    const-string p0, "in"

    return-object p0

    :cond_0
    const-string p0, "m"

    return-object p0
.end method

.method public static normalize(I)I
    .locals 2

    .line 35
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->CM:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 36
    sget-object p0, Lcom/qianhe/baselib/enums/UnitEnum;->M:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result p0

    return p0

    .line 38
    :cond_0
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->M:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v1

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v1}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v1

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static selectableIndexToType(I)I
    .locals 2

    if-ltz p0, :cond_0

    .line 59
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->SELECTABLE_TYPES:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 60
    aget p0, v0, p0

    return p0

    .line 62
    :cond_0
    sget-object p0, Lcom/qianhe/baselib/enums/UnitEnum;->M:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {p0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result p0

    return p0
.end method

.method public static typeToSelectableIndex(I)I
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/qianhe/baselib/enums/UnitEnum;->normalize(I)I

    move-result p0

    .line 55
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->IN:Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, Lcom/qianhe/baselib/enums/UnitEnum;->getType()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/baselib/enums/UnitEnum;
    .locals 1

    .line 11
    const-class v0, Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/baselib/enums/UnitEnum;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/baselib/enums/UnitEnum;
    .locals 1

    .line 11
    sget-object v0, Lcom/qianhe/baselib/enums/UnitEnum;->$VALUES:[Lcom/qianhe/baselib/enums/UnitEnum;

    invoke-virtual {v0}, [Lcom/qianhe/baselib/enums/UnitEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/baselib/enums/UnitEnum;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/qianhe/baselib/enums/UnitEnum;->type:I

    return v0
.end method
