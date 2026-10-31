.class public final enum Lcom/tencent/smtt/sdk/WebSettings$TextSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/smtt/sdk/WebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/smtt/sdk/WebSettings$TextSize;

.field public static final enum LARGER:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

.field public static final enum LARGEST:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

.field public static final enum NORMAL:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

.field public static final enum SMALLER:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

.field public static final enum SMALLEST:Lcom/tencent/smtt/sdk/WebSettings$TextSize;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 0
    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    const/4 v1, 0x0

    const/16 v2, 0x32

    const-string v3, "SMALLEST"

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->SMALLEST:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    new-instance v2, Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    const/4 v3, 0x1

    const/16 v4, 0x4b

    const-string v5, "SMALLER"

    invoke-direct {v2, v5, v3, v4}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->SMALLER:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    new-instance v4, Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    const/4 v5, 0x2

    const/16 v6, 0x64

    const-string v7, "NORMAL"

    invoke-direct {v4, v7, v5, v6}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->NORMAL:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    new-instance v6, Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    const/4 v7, 0x3

    const/16 v8, 0x7d

    const-string v9, "LARGER"

    invoke-direct {v6, v9, v7, v8}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->LARGER:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    new-instance v8, Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    const/4 v9, 0x4

    const/16 v10, 0x96

    const-string v11, "LARGEST"

    invoke-direct {v8, v11, v9, v10}, Lcom/tencent/smtt/sdk/WebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->LARGEST:Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->$VALUES:[Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/smtt/sdk/WebSettings$TextSize;
    .locals 1

    .line 0
    const-class v0, Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    return-object p0
.end method

.method public static values()[Lcom/tencent/smtt/sdk/WebSettings$TextSize;
    .locals 1

    .line 0
    sget-object v0, Lcom/tencent/smtt/sdk/WebSettings$TextSize;->$VALUES:[Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    invoke-virtual {v0}, [Lcom/tencent/smtt/sdk/WebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/smtt/sdk/WebSettings$TextSize;

    return-object v0
.end method
