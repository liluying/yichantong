.class Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;
.super Ljava/lang/Object;
.source "DemoCustomDataFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->initView()V
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

    .line 85
    iput-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 10

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez p2, :cond_0

    .line 89
    invoke-static {}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->getInstance()Lcom/qianhe/baselib/manage/GnssCoordConvertManager;

    move-result-object p2

    iget-object v3, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {v3}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvEast:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v3}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v3

    iget-object v5, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {v5}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvNorth:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v5}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v5

    iget-object v7, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {v7}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvElev:Lcom/qianhe/yct/view/NumericEditText;

    invoke-virtual {v7}, Lcom/qianhe/yct/view/NumericEditText;->getNumericValue()D

    move-result-wide v7

    new-array v9, v2, [D

    aput-wide v3, v9, v1

    aput-wide v5, v9, v0

    aput-wide v7, v9, p1

    invoke-virtual {p2, v9}, Lcom/qianhe/baselib/manage/GnssCoordConvertManager;->convertGAUSSXYToGeodetic([D)[D

    move-result-object p2

    .line 90
    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v3

    aget-wide v4, p2, v1

    aget-wide v6, p2, v0

    aget-wide v8, p2, p1

    invoke-virtual/range {v3 .. v9}, Lcom/qianhe/yct/utils/DemoDataManager;->setINSCoords(DDD)V

    .line 91
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$mrefreshDisplayCoords(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)V

    .line 92
    iget-object p1, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {p1}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->-$$Nest$fgetbinding(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;)Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/qianhe/yct/databinding/FragmentDemoCustomDataBinding;->tvElev:Lcom/qianhe/yct/view/NumericEditText;

    iget-object p2, p0, Lcom/qianhe/yct/fragment/DemoCustomDataFragment$5;->this$0:Lcom/qianhe/yct/fragment/DemoCustomDataFragment;

    invoke-static {}, Lcom/qianhe/yct/utils/DemoDataManager;->getInstance()Lcom/qianhe/yct/utils/DemoDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qianhe/yct/utils/DemoDataManager;->getInsElev()D

    move-result-wide v0

    invoke-static {p2, v0, v1, v2}, Lcom/qianhe/yct/fragment/DemoCustomDataFragment;->access$100(Lcom/qianhe/yct/fragment/DemoCustomDataFragment;DI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
