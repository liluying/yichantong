.class public final enum Lcom/qianhe/yct/utils/BeepPlayer$SoundType;
.super Ljava/lang/Enum;
.source "BeepPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/BeepPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/utils/BeepPlayer$SoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum DADA:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum DIDI:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum DIDI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum DONGDONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum DUDU:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

.field public static final enum WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;


# instance fields
.field final beepDurationMs:I

.field final drive:D

.field final envelope:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

.field final frequencyHz:I


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/utils/BeepPlayer$SoundType;
    .locals 3

    const/16 v0, 0x8

    .line 24
    new-array v0, v0, [Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DIDI:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DIDI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DONGDONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DADA:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DUDU:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    sget-object v6, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->SHORT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    move-object v5, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const-string v1, "DIDI"

    const/4 v2, 0x0

    const/16 v3, 0x898

    const/16 v4, 0x32

    invoke-direct/range {v0 .. v7}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    sput-object v0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DIDI:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 28
    new-instance v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    move-object v6, v5

    const/16 v5, 0x50

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    const-string v2, "DIDI_LONG"

    const/4 v3, 0x1

    const/16 v4, 0x5dc

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    move-object v5, v6

    sput-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DIDI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 30
    new-instance v6, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    sget-object v11, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->DRUM:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    const-string v7, "DONGDONG"

    const/4 v8, 0x2

    const/16 v9, 0x118

    const/16 v10, 0x8c

    invoke-direct/range {v6 .. v13}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    sput-object v6, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DONGDONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 32
    new-instance v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    sget-object v12, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->CLICK:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    const-string v8, "DADA"

    const/4 v9, 0x3

    const/16 v10, 0x384

    const/16 v11, 0x28

    invoke-direct/range {v7 .. v14}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    sput-object v7, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DADA:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 34
    new-instance v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    move-object v6, v5

    const/16 v5, 0x64

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    const-string v2, "DUDU"

    const/4 v3, 0x4

    const/16 v4, 0x2bc

    invoke-direct/range {v1 .. v8}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    sput-object v1, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DUDU:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 36
    new-instance v2, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    sget-object v7, Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;->FLAT:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const-string v3, "BUZZ"

    const/4 v4, 0x5

    const/16 v5, 0x708

    const/16 v6, 0x78

    invoke-direct/range {v2 .. v9}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    sput-object v2, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->BUZZ:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 38
    new-instance v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    move-object v8, v7

    const/16 v7, 0x7d0

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    const-string v4, "DI_LONG"

    const/4 v5, 0x6

    const/16 v6, 0x898

    invoke-direct/range {v3 .. v10}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    sput-object v3, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->DI_LONG:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 40
    new-instance v8, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    move-object v13, v12

    const/16 v12, 0x50

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    const-string v9, "WOOD_FISH"

    const/4 v10, 0x7

    const/16 v11, 0x320

    invoke-direct/range {v8 .. v15}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;-><init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V

    sput-object v8, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->WOOD_FISH:Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    .line 24
    invoke-static {}, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->$values()[Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->$VALUES:[Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;",
            "D)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->frequencyHz:I

    .line 49
    iput p4, p0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->beepDurationMs:I

    .line 50
    iput-object p5, p0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->envelope:Lcom/qianhe/yct/utils/BeepPlayer$EnvelopeType;

    .line 51
    iput-wide p6, p0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->drive:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/utils/BeepPlayer$SoundType;
    .locals 1

    .line 24
    const-class v0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/utils/BeepPlayer$SoundType;
    .locals 1

    .line 24
    sget-object v0, Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->$VALUES:[Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    invoke-virtual {v0}, [Lcom/qianhe/yct/utils/BeepPlayer$SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/utils/BeepPlayer$SoundType;

    return-object v0
.end method
