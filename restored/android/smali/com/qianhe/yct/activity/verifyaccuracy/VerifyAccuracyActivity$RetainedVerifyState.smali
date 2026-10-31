.class final Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;
.super Ljava/lang/Object;
.source "VerifyAccuracyActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RetainedVerifyState"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field collectedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;",
            ">;"
        }
    .end annotation
.end field

.field currentStep:I

.field excavator:Lcom/qianhe/baselib/bean/ExcavatorEntity;

.field hasHeadingSample:Z

.field hasPendingPreciseResult:Z

.field hasReferenceLlh:Z

.field headingError:D

.field headingHidden:Z

.field heightInputReady:Z

.field inPrecisePoseUi:Z

.field lastReference:Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$VerifyAccuracyCollectPoint;

.field nedOriginElev:D

.field nedOriginLat:D

.field nedOriginLon:D

.field oldCalibParams:Ljava/lang/String;

.field oldCalibParamsId:Ljava/lang/String;

.field pendingCalibParams:Ljava/lang/String;

.field pendingFiveSamples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;",
            ">;"
        }
    .end annotation
.end field

.field pendingHabSample:Lcom/qianhe/yct/utils/ExcavatorCalibHelper$FineTuneSample;

.field pendingHeightNed:[D

.field pendingPreciseCode:I

.field pendingSourceParams:Ljava/lang/String;

.field pendingStdevAfterHa:D

.field pendingStdevNew:D

.field pendingStdevOld:D

.field pendingToolParams:Ljava/lang/String;

.field preciseCalibrating:Z

.field referenceHeightMeters:D

.field referenceLat:D

.field referenceLon:D

.field showOneClickVerifyTips:Z

.field showingCheckAccuracyDialog:Z

.field showingResult:Z

.field skipModeSelect:Z

.field totalSteps:I

.field verifyMode:I

.field waitForPositionChange:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/activity/verifyaccuracy/VerifyAccuracyActivity$RetainedVerifyState;-><init>()V

    return-void
.end method
