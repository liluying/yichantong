.class Lcom/qianhe/yct/fragment/DemoCustomDataFragment$9;
.super Ljava/lang/Object;
.source "DemoCustomDataFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->setupStatusSpinner()V
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

    .line 222
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$9;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

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

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/DemoDataManager;->setH5ProDataStatus(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p1

    const-string p2, "1835010"

    invoke-virtual {p1, p2}, Lcom/qianhe/yct/utils/DemoDataManager;->setH5ProDataStatus(Ljava/lang/String;)V

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
