.class final Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;
.super Ljava/lang/Object;
.source "CalibrateUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/CalibrateUploadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccuracyFields"
.end annotation


# instance fields
.field accuracy:D

.field accuracy2:D

.field accuracyJson:Ljava/lang/String;

.field accuracyType:Ljava/lang/String;

.field passed:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 541
    iput-wide v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy:D

    .line 542
    const-string v2, ""

    iput-object v2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyType:Ljava/lang/String;

    .line 543
    iput-wide v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracy2:D

    const/4 v0, -0x1

    .line 544
    iput v0, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->passed:I

    .line 545
    iput-object v2, p0, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;->accuracyJson:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qianhe/yct/utils/CalibrateUploadHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qianhe/yct/utils/CalibrateUploadHelper$AccuracyFields;-><init>()V

    return-void
.end method
