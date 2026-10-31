.class Lcom/qianhe/yct/fragment/StarMapFragment$1;
.super Ljava/lang/Object;
.source "StarMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/StarMapFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qianhe/yct/fragment/StarMapFragment;


# direct methods
.method constructor <init>(Lcom/qianhe/yct/fragment/StarMapFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/StarMapFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/StarMapFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;

    move-result-object v0

    .line 141
    check-cast v0, Lcom/qianhe/yct/view/StarMapRadarRenderer;

    invoke-virtual {v0}, Lcom/qianhe/yct/view/StarMapRadarRenderer;->getContentHeight()F

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-static {v1}, Lcom/qianhe/yct/fragment/StarMapFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/qianhe/yct/activity/LocateInfoActivity;

    invoke-virtual {v2}, Lcom/qianhe/yct/activity/LocateInfoActivity;->getTabLayoutHeigth()I

    move-result v2

    .line 145
    iget-object v3, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/StarMapFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/StarMapFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/StarMapFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/qianhe/yct/fragment/StarMapFragment$1;->this$0:Lcom/qianhe/yct/fragment/StarMapFragment;

    invoke-static {v0}, Lcom/qianhe/yct/fragment/StarMapFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/StarMapFragment;)Lcom/qianhe/yct/databinding/FragmentStarmapBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/qianhe/yct/databinding/FragmentStarmapBinding;->radarChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
