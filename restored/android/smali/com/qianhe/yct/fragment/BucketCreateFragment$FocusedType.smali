.class final enum Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;
.super Ljava/lang/Enum;
.source "BucketCreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/fragment/BucketCreateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FocusedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

.field public static final enum AB:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

.field public static final enum G1:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

.field public static final enum G2:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

.field public static final enum G3:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;
    .locals 3

    const/4 v0, 0x4

    .line 76
    new-array v0, v0, [Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    sget-object v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G2:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G3:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->AB:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const-string v1, "G1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G1:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    new-instance v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const-string v1, "G2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G2:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    new-instance v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const-string v1, "G3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->G3:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    new-instance v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    const-string v1, "AB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->AB:Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    .line 76
    invoke-static {}, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->$values()[Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->$VALUES:[Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;
    .locals 1

    .line 76
    const-class v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;
    .locals 1

    .line 76
    sget-object v0, Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->$VALUES:[Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    invoke-virtual {v0}, [Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/fragment/BucketCreateFragment$FocusedType;

    return-object v0
.end method
