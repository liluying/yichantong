.class final enum Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;
.super Ljava/lang/Enum;
.source "BeepPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/BeepPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnvelopeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

.field public static final enum CLICK:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

.field public static final enum DRUM:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

.field public static final enum FLAT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

.field public static final enum SHORT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;
    .locals 3

    const/4 v0, 0x4

    .line 55
    new-array v0, v0, [Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->SHORT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->CLICK:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->DRUM:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->FLAT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const-string v1, "SHORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->SHORT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const-string v1, "CLICK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->CLICK:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const-string v1, "DRUM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->DRUM:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const-string v1, "FLAT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->FLAT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    invoke-static {}, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->$values()[Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->$VALUES:[Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;
    .locals 1

    .line 55
    const-class v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;
    .locals 1

    .line 55
    sget-object v0, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->$VALUES:[Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    invoke-virtual {v0}, [Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    return-object v0
.end method
