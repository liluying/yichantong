.class public final enum Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WorkInsAvailabilityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

.field public static final enum ELEVATION_ONLY:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

.field public static final enum FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;
    .locals 3

    const/4 v0, 0x2

    .line 250
    new-array v0, v0, [Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    sget-object v1, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->ELEVATION_ONLY:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 252
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->FULL:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    .line 254
    new-instance v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    const-string v1, "ELEVATION_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->ELEVATION_ONLY:Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    .line 250
    invoke-static {}, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->$values()[Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->$VALUES:[Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;
    .locals 1

    .line 250
    const-class v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;
    .locals 1

    .line 250
    sget-object v0, Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->$VALUES:[Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    invoke-virtual {v0}, [Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/base/BaseActivity$WorkInsAvailabilityMode;

    return-object v0
.end method
