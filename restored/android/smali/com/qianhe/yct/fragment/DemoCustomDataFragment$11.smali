.class Lcom/qianhe/yct/fragment/DemoCustomDataFragment$11;
.super Ljava/lang/Object;
.source "DemoCustomDataFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->setupSolSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$11;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    const/4 p2, 0x2

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/DemoDataManager;->setSolution(I)V

    return-void

    .line 288
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/DemoDataManager;->setSolution(I)V

    return-void

    .line 285
    :cond_2
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/DemoDataManager;->setSolution(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
