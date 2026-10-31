.class Lcom/qianhe/yct/fragment/SNRFragment$2;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "SNRFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/SNRFragment;->refreshData(Lcom/qianhe/yct/view/CustomBarChart;Lcom/qianhe/baselib/enums/StarTypeEnum;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/SNRFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/SNRFragment;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment$2;->this$0:Lcom/qianhe/yct/fragment/SNRFragment;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 325
    const-string p1, ""

    return-object p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    rem-float v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
