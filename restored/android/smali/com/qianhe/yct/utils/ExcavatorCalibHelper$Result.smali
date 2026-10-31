.class public final Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;
.super Ljava/lang/Object;
.source "ExcavatorCalibHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qianhe/yct/utils/ExcavatorCalibHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final calibParamsBase64:Ljava/lang/String;

.field public final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    .line 45
    iput-object p2, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 49
    iget v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->code:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qianhe/yct/utils/ExcavatorCalibHelper$Result;->calibParamsBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
