.class Lcom/qianhe/yct/fragment/DemoCustomDataFragment$7;
.super Ljava/lang/Object;
.source "DemoCustomDataFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->setupH5TypeSpinner()V
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

    .line 162
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$7;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

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

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    if-eq p3, p2, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/qianhe/yct/utils/DemoDataManager;->setH5Type(I)V

    .line 172
    iget-object p2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$7;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {p2}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->lltDataStaus:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 167
    :cond_1
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/qianhe/yct/utils/DemoDataManager;->setH5Type(I)V

    .line 168
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$7;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->lltDataStaus:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

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
