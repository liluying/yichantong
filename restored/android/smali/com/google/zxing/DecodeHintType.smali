.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;
.source "DecodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALSO_INVERTED:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

.field public static final enum OTHER:Lcom/google/zxing/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

.field public static final enum RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/google/zxing/DecodeHintType;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 35
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    .line 41
    new-instance v2, Lcom/google/zxing/DecodeHintType;

    const-string v3, "PURE_BARCODE"

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Void;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    .line 47
    new-instance v3, Lcom/google/zxing/DecodeHintType;

    const/4 v6, 0x2

    const-class v7, Ljava/util/List;

    const-string v8, "POSSIBLE_FORMATS"

    invoke-direct {v3, v8, v6, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 53
    new-instance v7, Lcom/google/zxing/DecodeHintType;

    const-string v8, "TRY_HARDER"

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 58
    new-instance v8, Lcom/google/zxing/DecodeHintType;

    const/4 v10, 0x4

    const-class v11, Ljava/lang/String;

    const-string v12, "CHARACTER_SET"

    invoke-direct {v8, v12, v10, v11}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    .line 63
    new-instance v11, Lcom/google/zxing/DecodeHintType;

    const-string v12, "ALLOWED_LENGTHS"

    const/4 v13, 0x5

    const-class v14, [I

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    .line 69
    new-instance v12, Lcom/google/zxing/DecodeHintType;

    const-string v15, "ASSUME_CODE_39_CHECK_DIGIT"

    const/16 v16, 0x0

    const/4 v1, 0x6

    invoke-direct {v12, v15, v1, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    .line 76
    new-instance v15, Lcom/google/zxing/DecodeHintType;

    const/16 v17, 0x6

    const-string v1, "ASSUME_GS1"

    const/16 v18, 0x1

    const/4 v4, 0x7

    invoke-direct {v15, v1, v4, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v15, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    .line 83
    new-instance v1, Lcom/google/zxing/DecodeHintType;

    const/16 v19, 0x7

    const-string v4, "RETURN_CODABAR_START_END"

    const/16 v20, 0x2

    const/16 v6, 0x8

    invoke-direct {v1, v4, v6, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    .line 89
    new-instance v4, Lcom/google/zxing/DecodeHintType;

    const/16 v21, 0x8

    const/16 v6, 0x9

    const/16 v22, 0x3

    const-class v9, Lcom/google/zxing/ResultPointCallback;

    const/16 v23, 0x4

    const-string v10, "NEED_RESULT_POINT_CALLBACK"

    invoke-direct {v4, v10, v6, v9}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 99
    new-instance v9, Lcom/google/zxing/DecodeHintType;

    const-string v10, "ALLOWED_EAN_EXTENSIONS"

    const/16 v24, 0x9

    const/16 v6, 0xa

    invoke-direct {v9, v10, v6, v14}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    .line 105
    new-instance v10, Lcom/google/zxing/DecodeHintType;

    const-string v14, "ALSO_INVERTED"

    const/16 v25, 0xa

    const/16 v6, 0xb

    invoke-direct {v10, v14, v6, v5}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/google/zxing/DecodeHintType;->ALSO_INVERTED:Lcom/google/zxing/DecodeHintType;

    const/16 v5, 0xc

    .line 30
    new-array v5, v5, [Lcom/google/zxing/DecodeHintType;

    aput-object v0, v5, v16

    aput-object v2, v5, v18

    aput-object v3, v5, v20

    aput-object v7, v5, v22

    aput-object v8, v5, v23

    aput-object v11, v5, v13

    aput-object v12, v5, v17

    aput-object v15, v5, v19

    aput-object v1, v5, v21

    aput-object v4, v5, v24

    aput-object v9, v5, v25

    aput-object v10, v5, v6

    sput-object v5, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 30
    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/DecodeHintType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0}, [Lcom/google/zxing/DecodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    return-object v0
.end method
