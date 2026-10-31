.class public final synthetic Lcom/qianhe/yct/fragment/SNRFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/qianhe/yct/view/CustomBarChart;

.field public final synthetic f$1:Lcom/github/mikephil/charting/components/Description;


# direct methods
.method public synthetic constructor <init>(Lcom/qianhe/yct/view/CustomBarChart;Lcom/github/mikephil/charting/components/Description;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qianhe/yct/fragment/SNRFragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/view/CustomBarChart;

    iput-object p2, p0, Lcom/qianhe/yct/fragment/SNRFragment$$ExternalSyntheticLambda0;->f$1:Lcom/github/mikephil/charting/components/Description;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/qianhe/yct/fragment/SNRFragment$$ExternalSyntheticLambda0;->f$0:Lcom/qianhe/yct/view/CustomBarChart;

    iget-object v1, p0, Lcom/qianhe/yct/fragment/SNRFragment$$ExternalSyntheticLambda0;->f$1:Lcom/github/mikephil/charting/components/Description;

    invoke-static {v0, v1}, Lcom/qianhe/yct/fragment/SNRFragment;->$r8$lambda$d-BNCgQZs54t08LvFB-eTyt9WIk(Lcom/qianhe/yct/view/CustomBarChart;Lcom/github/mikephil/charting/components/Description;)V

    return-void
.end method
