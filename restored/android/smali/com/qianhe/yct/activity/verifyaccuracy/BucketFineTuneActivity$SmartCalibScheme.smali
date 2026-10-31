.class final enum Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;
.super Ljava/lang/Enum;
.source "BucketFineTuneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SmartCalibScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

.field public static final enum BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

.field public static final enum FOREARM:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

.field public static final enum FOREARM_THEN_BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;


# direct methods
.method private static synthetic $values()[Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;
    .locals 3

    const/4 v0, 0x3

    .line 81
    new-array v0, v0, [Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    sget-object v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM_THEN_BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 82
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    const-string v1, "FOREARM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    .line 83
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    const-string v1, "BUCKET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    .line 84
    new-instance v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    const-string v1, "FOREARM_THEN_BUCKET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->FOREARM_THEN_BUCKET:Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    .line 81
    invoke-static {}, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->$values()[Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    move-result-object v0

    sput-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->$VALUES:[Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;
    .locals 1

    .line 81
    const-class v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    return-object p0
.end method

.method public static values()[Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;
    .locals 1

    .line 81
    sget-object v0, Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->$VALUES:[Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    invoke-virtual {v0}, [Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qianhe/yct/activity/verifyaccuracy/BucketFineTuneActivity$SmartCalibScheme;

    return-object v0
.end method
