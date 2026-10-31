.class public final Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;
.super Ljava/lang/Object;
.source "ExcavatorCalibHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/ExcavatorCalibHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeightAdjustResult"
.end annotation


# instance fields
.field public final calibParamsBase64:Ljava/lang/String;

.field public final code:I

.field public final heightStdev:D

.field public final tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

.field public final toolParamsBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;)V
    .locals 7

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;D)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;D)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->code:I

    .line 92
    iput-object p2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->toolParamsBase64:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->tool:Lcom/qh/libexcavator/nativelib/LibExcavator$Tool;

    .line 95
    iput-wide p5, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->heightStdev:D

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 99
    iget v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->code:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$HeightAdjustResult;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
