.class public final Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;
.super Ljava/lang/Object;
.source "ExcavatorCalibHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/ExcavatorCalibHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreciseHabAdjustResult"
.end annotation


# instance fields
.field public final calibParamsBase64:Ljava/lang/String;

.field public final code:I

.field public final stdevAfterHa:D

.field public final stdevNew:D

.field public final stdevOld:D

.field public final tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

.field public final toolParamsBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(IDDDLjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput p1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->code:I

    .line 503
    iput-wide p2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevOld:D

    .line 504
    iput-wide p4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevNew:D

    .line 505
    iput-wide p6, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->stdevAfterHa:D

    .line 506
    iput-object p8, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->calibParamsBase64:Ljava/lang/String;

    .line 507
    iput-object p9, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->toolParamsBase64:Ljava/lang/String;

    .line 508
    iput-object p10, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    return-void
.end method

.method public static fail(I)Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;
    .locals 11

    .line 512
    new-instance v0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    const/4 v8, 0x0

    move v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;-><init>(IDDDLjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 516
    iget v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->code:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->toolParamsBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$PreciseHabAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
