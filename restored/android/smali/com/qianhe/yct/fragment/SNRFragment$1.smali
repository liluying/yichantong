.class Lcom/qianhe/yct/fragment/SNRFragment$1;
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

.field final synthetic val$xLabelsBD:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/SNRFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment$1;->this$0:Lcom/qianhe/yct/fragment/SNRFragment;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/SNRFragment$1;->val$xLabelsBD:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    div-float v1, p1, v0

    float-to-int v1, v1

    rem-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, -0x1

    if-le v1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment$1;->val$xLabelsBD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-nez p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment$1;->val$xLabelsBD:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 289
    :cond_0
    const-string p1, ""

    return-object p1
.end method
